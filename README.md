# Athletic Body Project

A personal food, meal-prep, training, walking, pain and body-measurement tracker with Nigerian and American meals. It works offline, needs no account, and keeps all your data on your phone.

## What's in this folder

| File | Purpose |
|---|---|
| `index.html` | The page your phone opens. It loads the app from `app.html`. |
| `app.html` | The whole app. Updates only ever change this file. |
| `manifest.webmanifest`, `sw.js` | Let Android install it and run it offline |
| `docs/` | App icons (the old `docs/index.html` now forwards to the main page) |
| `serve.ps1`, `build.ps1` | For testing on a computer only; not needed on the phone |

## Publish with GitHub Pages
1. In GitHub Desktop, commit everything and click **Push origin** (or **Publish repository** the first time, with **Keep this code private** unticked).
2. On github.com, open the repository → **Settings → Pages**.
3. Set **Source** to *Deploy from a branch*, **Branch** to `main`, folder **/ (root)**, then **Save**.
4. After 1–2 minutes the app is live at `https://YOUR-USERNAME.github.io/REPOSITORY-NAME/`.
5. On your phone, open that link in Chrome → **⋮** → **Add to Home screen** / **Install app**.

## Updating
When the app changes, GitHub Desktop shows the changed files. Commit, then **Push origin**. The phone app picks up the new version the next time it opens with a connection. Your data is stored on the phone and is never touched by updates.

## Daily use
- **Meals log themselves.** Each planned meal counts as eaten once its time passes. Tap **Substitute** only when you eat something different: swap one food (portions are worked out for you), log something else, or mark it skipped. Turn this off in Settings → Meal plan logging.
- **Plan → Meal prep**: tick the foods you batch-cooked and tap **Build my week**. The app builds all 7 days with portions that fit your targets, warns you if protein or fat will be off, and shows how much of each food the week needs.
- **Train → Weekly schedule → Workout types**: edit any workout type (name, exercises, sets, reps, rest) or create your own. Tick **Clear.** on exercises that load the hips or legs; they stay out until you mark lower-body clearance in Settings.

## Back up your data
Your data lives only in your phone's browser storage. Clearing Chrome's data or changing phones erases it. Once a week, go to **Settings → Backup (JSON)** and keep the file somewhere safe, such as Google Drive. Restore it with **Settings → Restore from a backup**.
