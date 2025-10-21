#!/bin/bash
# ==============================================
# MULTI HOST PING MONITOR
# Made by: dame
# ==============================================

# Daftar host/IP yang mau dipantau
HOSTS=("8.8.8.8" "1.1.1.1" "google.com" "yahoo.com" "192.168.1.1")

# Lokasi file log
LOGFILE="/var/log/ping_report.log"

# Tampilkan header di log
echo "----------------------------------------------" | tee -a $LOGFILE
echo "📅 $(date) - Memulai Monitoring Koneksi" | tee -a $LOGFILE
echo "----------------------------------------------" | tee -a $LOGFILE

# Looping untuk cek koneksi tiap host
for HOST in "${HOSTS[@]}"; do
    echo "🔍 Mengecek koneksi ke $HOST ..."
    
    # Jalankan ping dan ambil status keluarannya
    if ping -c 2 -W 2 $HOST > /dev/null 2>&1; then
        echo "$(date) ✅ $HOST aktif" | tee -a $LOGFILE
    else
        echo "$(date) ❌ $HOST down / tidak dapat dijangkau" | tee -a $LOGFILE
    fi
done

echo "----------------------------------------------" | tee -a $LOGFILE
echo "📡 Pengecekan selesai!"
