module KeyValueText
  @language          = "en"
  @fallback_language = "en"
  @strings           = nil
  @fallback_strings  = nil

  module_function

  def set_language(lang)
    @language = lang.to_s.strip
    @language = "en" if @language.empty?
    reload
  end

  def set_fallback_language(lang)
    @fallback_language = lang.to_s.strip
    @fallback_language = "en" if @fallback_language.empty?
    reload
  end

  def reload
    @strings = load_file(@language)
    @fallback_strings = (@fallback_language == @language) ? @strings : load_file(@fallback_language)
  end

  def load_file(lang)
    ret = {}
    path = sprintf("Data/Text/%s.txt", lang)
    return ret if !FileTest.exist?(path)
    File.open(path, "rb") do |f|
      f.each_line do |line|
        line = line.chomp
        line.gsub!(/\r/, "")
        next if line.empty?
        next if line[/^\s*#/]
        key, value = line.split("=", 2)
        next if !key || !value
        key = key.strip
        next if key.empty?
        ret[key] = value
      end
    end
    return ret
  end

  def get(key)
    reload if !@strings
    key = key.to_s.strip
    return @strings[key] if @strings[key]
    return @fallback_strings[key] if @fallback_strings && @fallback_strings[key]
    return "[Missing key: #{key}]"
  end

  def resolve(text)
    reload if !@strings
    return text if !text || text.empty?
    ret = text.to_s.clone
    20.times do
      changed = false
      ret.gsub!(/\\kv\[(.*?)\]/i) do
        changed = true
        get($1)
      end
      break if !changed
    end
    return ret
  end
end

KeyValueText.set_language("en")
KeyValueText.set_fallback_language("en")