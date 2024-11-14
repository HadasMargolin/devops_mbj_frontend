#!/bin/bash

echo "בודק אם יש שינויים להעלות ל-GitHub..."
git status  # מציג את הסטטוס של השינויים בקבצים


#!/bin/bash

echo "בודק אם יש שינויים להעלות ל-GitHub..."
git status  # מציג את הסטטוס של השינויים בקבצים

# אם יש שינויים, מבצע הוספה, מחויב (commit) ודוחף ל-GitHub
git add .
git commit -m "העלאה אוטומטית"
git push origin main  # החליפי ל-"main" או "master" בהתאם לשם הענף שלך

echo "מתקין תלותים..."
npm install

echo "מבצע בנייה לאפליקציה..."
npm run build

echo "הפעולה הסתיימה בהצלחה!"
echo "מעלה את קבצי ה-build ל-GCS..."
gsutil cp -r build/* gs://hadasmargolin

