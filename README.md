# claude-skills

My Claude Code skills, kept in one place so they can be installed on any Mac.

## Install on a new machine

```bash
git clone <this-repo-url> ~/Documents/claude-skills
~/Documents/claude-skills/install.sh
```

This copies everything in `skills/` into `~/.claude/skills/`. Restart Claude Code afterwards.

## Update

After installing or editing skills on a machine, run `./sync-from-local.sh`, then commit and push.
On other machines: `git pull && ./install.sh`.

`skills-lock.json` records where the `npx skills add` skills originally came from.
