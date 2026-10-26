# Athletic Body Project

A personal food, training, walking, pain and body-measurement tracker with Nigerian and American meals. It works offline, needs no account or paid APIs, and keeps all data on your phone.

## Files

| File | Purpose |
|---|---|
| `index.html` | The whole app (HTML, CSS and JavaScript in one file) |
| `manifest.webmanifest`, `icon-192.png`, `icon-512.png` | Let Android install it like an app |
| `sw.js` | Offline support after the first visit |

Upload all five files together. The app needs to be served over **https** to install and work offline. Opening `index.html` straight from your phone's file manager works, but it can't install and its storage is less reliable.

## 1. Put it online for free (pick one)

### Netlify Drop (easiest, about 2 minutes)
1. On a computer, go to **app.netlify.com/drop** and sign up for a free account.
2. Drag the whole `athletic-body-project` folder onto the page.
3. Netlify gives you an address such as `https://something-random.netlify.app`. You can rename it under **Site configuration → Change site name**.
4. To update the app later, open the site in Netlify, go to **Deploys**, and drag the folder in again. Your data stays on your phone and isn't affected.

### GitHub Pages
1. Create a free GitHub account and a new **public** repository, for example `athletic-body`.
2. Click **Add file → Upload files**, drag in the five files (not the folder), and click **Commit changes**.
3. Go to **Settings → Pages**. Under *Build and deployment*, choose **Deploy from a branch**, branch **main**, folder **/ (root)**, then **Save**.
4. After a minute or two the app is live at `https://YOUR-USERNAME.github.io/athletic-body/`.

A public repository makes the app's code public. Your tracking data is never uploaded; it stays in your phone's browser.

## 2. Install it on your Android phone
1. Open the app's https address in **Chrome** on your phone.
2. Tap the **⋮** menu, then **Add to Home screen** (it may say **Install app**), and confirm.
3. Launch it from the home-screen icon. It opens full screen like a normal app and works without a signal once it has loaded once.

Use the installed icon every time. Data is tied to the browser and the address, so opening the app in a different browser or at a different address starts empty.

## 3. Daily use (about 2 minutes)
- **Today**: tap **Ate it** next to a planned meal to log it in one tap, or **Log food** for anything else. Add water with +250 / +500, add stretching minutes with +5 / +10, log walks toward your 5,000-step daily goal, set today's pain score with the slider, and tap **Log rest day** on recovery days. Rest days count toward your streak.
- **Weekly schedule** (Train → Weekly schedule): set up for 5 gym days, 1 recovery day and 1 rest day. Change any day with its dropdown, and change the weekly goal in Settings.
- **Food → Chicken thighs**: enter how many thighs, what you weighed (raw, cooked, or meat off the bone), bone/skin and cooking method. The bone is never counted. Save common portions like "2 baked thighs, skin removed" for one-tap logging.
- **Food → Swap meals**: compare an American meal with its Nigerian alternative per portion before you log either.
- **Plan**: your 7-day menu with times, Nigerian, American and road alternatives, prep notes, and an **Eaten** checkbox that logs the meal. The **Grocery list** is built from the plan.
- **Train**: start a workout from a template, fill in sets, reps and weight, and mark it completed. Log walks with pain before and after. Lower-body exercises and running stay locked until you turn on medical clearance in Settings.
- **Progress**: log weight and waist (ideally weekly, same time of day), view 7/30/90-day and all-time charts, and read the **Weekly review** every Sunday.
- Tap **At Home / On the Road** at the top when travelling. Road options are then highlighted everywhere.

The first launch shows **sample entries** (marked "Sample") so the charts and review have something to show. Tap **Clear sample data** on the Today screen when you start for real.

## 4. Change calorie targets and meal portions
- **Targets**: tap the gear icon (top right) → **Daily targets**. Change calories, protein, carbs, fat, water, steps, gym days per week and stretching minutes per day, then tap **Save settings**. The page shows what your macros add up to, so you can keep them consistent with the calorie number.
- **Meal times**: Settings → **Meal times**, or **Plan → Edit meal times**.
- **Plan portions**: in **Plan**, type a new amount in any food's box (grams, pieces or cups as shown). Day and meal totals recalculate from the ingredients immediately. Use **× to remove** or **+ Add food** to add from the library. **Restore sample plan** undoes all plan changes.
- **Food values**: **Food → Food library → Edit** on any food to match your recipe or package label. This updates the plan and grocery list. Food you've already logged keeps the values it was saved with.
- **Chicken reference**: Settings → **Chicken thigh reference** (default 180 g cooked meat ≈ 47 g protein).
- **Medical clearance**: Settings → tick lower-body and/or running only after a doctor or physiotherapist clears you.

## 5. Back up your data
Your data lives only in this phone's browser storage. **Clearing Chrome's data, uninstalling Chrome, a factory reset or switching phones erases it.**

- **Weekly backup**: Settings → **Backup (JSON)**. It saves a file like `athletic-body-json-2026-10-17.json` to Downloads. Move it to Google Drive or email it to yourself.
- **Spreadsheets**: Settings → CSV buttons for the food log, walking & pain, workouts, measurements and daily water/pain. They open in Google Sheets or Excel.
- **Restore** (new phone, or after clearing data): Settings → **Restore from a backup** → choose the JSON file → confirm. This replaces what's on the device.
- If a download is blocked, use **Copy JSON** and paste it into a note or email. To restore, paste it into **Or paste backup text**.

Progress photos are compressed and included in the JSON backup. Lots of photos can fill the browser's storage (usually about 5 MB), and the app warns you if that happens.

## Notes on accuracy and safety
- Nutrition values are rounded estimates. Homemade Nigerian dishes are marked **Est.** because oil, meat and recipes vary; one extra tablespoon of oil is about +120 kcal.
- No exercise burns belly fat directly. Waist size drops as total body fat drops.
- The targets are provisional starting estimates, not a medical prescription. The app warns if you set calories below 1,800 and never suggests aggressive cuts.
- Get your left hip/waist pain assessed. Seek urgent care for severe or worsening pain, fever, leg numbness or weakness, trouble bearing weight, or bladder or bowel changes.
