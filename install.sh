#!/usr/bin/env bash
# Copy every skill in this repo into ~/.claude/skills (existing skills with the same name are overwritten).
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p "$HOME/.claude/skills"
rsync -a --exclude '.DS_Store' skills/ "$HOME/.claude/skills/"
echo "Installed $(ls skills | wc -l | tr -d ' ') skills to ~/.claude/skills"
