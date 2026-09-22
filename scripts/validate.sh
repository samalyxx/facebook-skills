#!/bin/sh
set -eu
expected="facebook-page-post facebook-content-planner facebook-comment-replies facebook-copy-humanizer facebook-campaign-brief facebook-repurposer facebook-profile-optimizer facebook-community-manager facebook-analytics facebook-social-listener facebook-event-promotion facebook-safety-review"
actual=$(find skills -mindepth 1 -maxdepth 1 -type d -printf '%f ' | sed 's/ $//' | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ $//')
want=$(printf '%s' "$expected" | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ $//')
[ "$actual" = "$want" ] || { echo "wrong skill set" >&2; exit 1; }
for path in README.md SKILL.md CLAUDE.md .codex-plugin/plugin.json .claude-plugin/plugin.json .agents/plugins/marketplace.json assets/facebook-skills-workflow.svg scripts/selftest.py references/socialbu-publishing.md; do [ -s "$path" ] || { echo "missing $path" >&2; exit 1; }; done
python3 -c "import json; d=json.load(open('.codex-plugin/plugin.json')); assert d['name']=='facebook-skills' and d['interface']['displayName']=='Facebook Skills'"
echo 'validation passed: Facebook Skills'
