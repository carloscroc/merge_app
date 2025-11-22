Project structure notes

- `lib/src/core` : shared utilities, theme, widgets
- `lib/src/routes` : central router (`app_router.dart`)
- `lib/src/features/<feature>/presentation/pages` : screens/pages
- `lib/src/features/<feature>/presentation/widgets` : small widgets scoped to feature
- `assets/` : images, icons, fonts

Use `lib/src/features` for feature-first organization.
