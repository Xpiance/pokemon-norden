# Project Norden – Contribution Workflow

This document defines the standard workflow for contributing to Project Norden.
Following this process ensures development remains organized and stable as the team grows.

---

# Development Overview

Project Norden uses **GitHub Issues, Pull Requests, and Project Boards** to manage development.

The general workflow is:

1. Find or claim an issue
2. Create a development branch
3. Implement the change
4. Open a Pull Request
5. Review and approval
6. Merge into the development branch

---

# Branch Structure

The repository uses the following branch structure.

| Branch    | Purpose                      |
| --------- | ---------------------------- |
| main      | Stable builds and releases   |
| dev       | Active development branch    |
| feature/* | Feature development branches |

### Rules

* `main` must always remain stable.
* All development work is merged into `dev`.
* New work should always be done in a **feature branch**.

Example branch name:

```
feature/route-1-map
feature/new-ability-system
feature/starter-town-npcs
```

### Review Requirements

The repository uses branch protection rules to maintain stability.

| Branch | Requirement |
|------|-------------|
| dev | Requires **1 approving review** before merging |
| main | Requires **2 approving reviews** before merging |

Additional rules:

* Direct pushes to `main` and `dev` are not allowed.
* All changes must be submitted through **Pull Requests**.
* Approvals may be dismissed if new commits are pushed to the PR.
* The `main` branch is only updated when a stable milestone or release is ready.
---

# Claiming Work

All work should be tracked using **GitHub Issues**.

### Steps

1. Go to the **Issues** page
2. Choose an issue that is not assigned
3. Comment that you would like to work on it
4. A maintainer assigns the issue to you

Once assigned, you may begin work.

This prevents multiple contributors from working on the same task.

---

# Creating a Branch

After claiming an issue, create a feature branch.

Example:

```
git checkout dev
git pull
git checkout -b feature/issue-23-route1-map
```

Branch naming convention:

```
feature/issue-<number>-short-description
```

Example:

```
feature/issue-14-trainer-ai
```

---

# Development Guidelines

### Keep commits focused

Each commit should represent a **clear logical change**.

Good example:

```
Add Route 1 trainer battle
Fix encounter table for Route 1
Implement Frostbite ability
```

Avoid vague commit messages like:

```
fix stuff
update
changes
```

---

### Follow project standards

All contributors should follow:

* coding conventions defined by the Lead Developer
* design guidelines defined by the Lead Game Designer
* art guidelines defined by the Art Director

---

# Opening a Pull Request

Once your work is complete, open a Pull Request.

### Steps

1. Push your branch to GitHub
2. Open a Pull Request into the `dev` branch
3. Link the issue you worked on

Example PR title:

```
Add Route 1 map and trainers
```

Example description:

```
Implements Issue #23

- Created Route 1 map
- Added 3 trainers
- Added encounter table
```

---

# Pull Request Review

Pull requests must be reviewed before merging.

Reviewers may include:

* Lead Developer (for code)
* Lead Game Designer (for gameplay content)
* Art Director (for art assets)

Requested changes must be addressed before approval.

---

# Merging Changes

After approval, a maintainer will merge the Pull Request into `dev`.

The `main` branch will only receive updates when:

* a milestone is completed
* a stable build is released

---

# Bug Reports

Bugs should always be reported using **GitHub Issues**.

A bug report should include:

* description of the problem
* steps to reproduce
* screenshots if applicable
* build version

---

# Communication

Project communication happens primarily through:

* GitHub Issues
* GitHub Pull Requests
* Project discussion channels (e.g. Discord)

Major design decisions should be discussed before implementation.

---

# Contribution Principles

All contributors should aim to:

* keep changes small and focused
* communicate clearly with the team
* respect the responsibilities of team leads
* maintain a positive and collaborative environment

Project Norden is a collaborative project built by passionate contributors.
Following this workflow helps ensure development remains efficient and enjoyable for everyone.
