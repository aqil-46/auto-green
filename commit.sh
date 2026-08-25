#!/bin/bash

# Nama file log
LOG_FILE="activity.log"

# Melakukan perulangan sebanyak 100 kali
for i in {1..100}
do
  # Tambahkan teks unik ke file log agar setiap commit berbeda
  echo "Auto commit ke-$i pada: $(date)" >> "$LOG_FILE"
  
  # Git add dan commit untuk setiap perulangan
  git add "$LOG_FILE"
  git commit -m "chore: bulk auto-commit number $i"
done

# Push sekali saja ke GitHub di akhir perulangan agar lebih cepat
git push origin main
