
# Rollback Evidence

## Purpose
Document how project changes can be reviewed and reverted using Git.

## Commands

View commit history:

```bash
git log --oneline
```

Check project status:

```bash
git status
```

Restore a previous version of a file:

```bash
git restore --source=<commit-id> -- path/to/file
```

## Evidence to Record
- Initial working commit ID
- Final project commit ID
- Git history screenshot
- Details of any rollback actually performed

Note: Record real commit IDs after creating Git commits. Do not claim a rollback was performed unless it was tested.
