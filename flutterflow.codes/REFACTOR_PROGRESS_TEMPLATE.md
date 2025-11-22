# Refactor Progress Template

Project: merge_app
Refactor Plan file: `flutterflow.codes/REFACTOR_PLAN.md`
Template Version: 1.0
Created: 2025-11-22

---

## Current Snapshot
- **Date:** YYYY-MM-DD
- **Author:** Your Name
- **Refactor Phase:** (inventory | mapping | runner | per-page | components | theme-shims | routes | tests)
- **Summary:** One-line summary of progress

## What We Did (details)
- **Files Changed:**
  - `path/to/file1`
  - `path/to/file2`
- **Description:** Short, actionable description of changes made.
- **Key Decisions / Rationale:** Bullet the important design choices.
- **Tests Run / Status:** Unit/widget/manual checks and outcome.

## Commit
- **Commit Message:** chore(refactor): short summary
- **Commit Hash:** (fill after commit)

## Where We Left Off
- **Unresolved Items:** list blocking issues or follow-ups
- **Known Bugs / Limitations:** concise bullets

## Next Steps (for next chat)
- **Immediate Next Action:** e.g., "Extract `home.page.md` → `lib/src/pages_cupertino/home_page.dart`"
- **Priority:** High / Medium / Low
- **Estimated ETA:** e.g., "30–60m"
- **Assign To:** (person/you)

## How to Resume (explicit steps)
1. Checkout branch: `git checkout <branch>`
2. Pull latest: `git pull`
3. Reproduce local state: (commands if needed)
4. Perform: exact next CLI/editor steps to continue
5. After changes run tests: (commands)
6. Commit using the suggested commit format below.

## Commit & Recording Checklist
- [ ] Code compiles
- [ ] Basic manual test of changed page(s)
- [ ] Add/modify tests (if applicable)
- [ ] `flutter format` ran on changed files
- [ ] Commit message follows template
- [ ] Paste commit hash above

---

## Example Entry (initial)
- **Date:** 2025-11-22
- **Author:** thebe
- **Refactor Phase:** Standalone Runner
- **Summary:** Added `lib/main_cupertino.dart` skeleton runner and progress template
- **Files Changed:**
  - `flutterflow.codes/REFACTOR_PROGRESS_TEMPLATE.md` (this file)
  - `flutterflow.codes/REFACTOR_PLAN.md` (notes updated)
- **Description:** Created a reusable progress-tracking template to record per-step progress, decisions, and next actions. Included an example filled entry for today's work.
- **Key Decisions / Rationale:** Keep template lightweight and actionable so each chat can record progress and next steps.
- **Tests Run / Status:** N/A (documentation file)
- **Commit Message:** chore(refactor): add progress tracking template
- **Commit Hash:** (fill after commit)
- **Unresolved Items:** decide whether to track a separate `REFACTOR_PROGRESS.md` for chronological entries vs. keeping historical entries inside the template file
- **Immediate Next Action:** extract `home.page.md` into `lib/src/pages_cupertino/home_page.dart`

---

## Suggested Commit Format
- Short: `chore(refactor): <short summary>`
- Body: include detailed notes and next steps, then paste the commit hash into the entry above.

---

Place this file at `flutterflow.codes/REFACTOR_PROGRESS_TEMPLATE.md`. For chronological tracking you can either append dated entries to this file or create `REFACTOR_PROGRESS.md` that imports/uses the template fields as repeated entries.
