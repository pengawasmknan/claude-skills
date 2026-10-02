#!/usr/bin/env bash
# Pull the current contents of ~/.claude/skills into this repo (symlinks are copied as real folders).
set -euo pipefail
cd "$(dirname "$0")"
rsync -aL --exclude '.DS_Store' "$HOME/.claude/skills/" skills/
[ -f "$HOME/skills-lock.json" ] && cp "$HOME/skills-lock.json" skills-lock.json
echo "Synced. Review with: git status"
