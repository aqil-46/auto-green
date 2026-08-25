#!/bin/bash

# Nama file log yang akan diubah-ubah isinya
LOG_FILE="activity.log"

# Tambahkan tanggal dan waktu saat ini ke dalam file log
echo "Commit otomatis pada: $(date)" >> "$LOG_FILE"

# Git add, commit, dan push
git add "$LOG_FILE"
git commit -m "chore: auto-update activity log $(date +%Y-%m-%d)"
git push origin main