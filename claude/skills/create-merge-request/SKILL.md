---
name: create-merge-request
description: Creates GitLab merge request via glab CLI. Analyzes diff, generates concise MR description with changes and test steps, and returns MR link.
---

# Create Merge Request

## Instructions

1. Run in parallel:
   - `git status`
   - `git diff origin/master...HEAD`
   - `git log origin/master..HEAD`
   - `git rev-parse --abbrev-ref HEAD`

2. Analyze diff/commits. Create:
   - Title: <70 chars, concise, no fluff
   - Description: see format below

3. Push if needed: `git push -u origin <branch>` or `git push`

4. Create MR:
   ```bash
   glab mr create --title "title" --description "$(cat <<'EOF'
   [see description format]
   EOF
   )"
   ```

5. Return MR link

## Description Format

```
## Changes
- [ultra-concise bullets, grammar-sacrificed]

## Test
- [imperative steps]
```

## Notes
- Assumes `glab` installed/authenticated
- Target branch: master
- Execute directly, don't ask
