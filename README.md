# Multi-Host-Ping-Monitor
# 🛰️ Multi Host Ping Monitor

**Multi Host Ping Monitor** adalah script otomatis berbasis **Bash** untuk memantau konektivitas dan kualitas jaringan ke beberapa host sekaligus.  
Tool ini cocok buat troubleshooting jaringan, ngecek latency, packet loss, dan kestabilan koneksi ke berbagai website (seperti `youtube.com`, `facebook.com`, dll) — langsung dari terminal lo.

---

## 🚀 Fitur Utama
- 🔁 **Multi-target ping**: cek banyak host dalam sekali jalan.  
- 📶 **Analisis kualitas jaringan**: tampilkan *packet loss*, *average latency*, dan status koneksi.  
- 🧠 **Auto summary report**: hasil ping disajikan dengan format rapi + warna (biar gampang dibaca).  
- 🕒 **Real-time monitoring mode** (opsional): pantau koneksi terus menerus secara berkala.  
- 💾 **Log otomatis** (opsional): simpan hasil ping ke file `.log` buat dianalisis nanti.

---

## ⚙️ Persyaratan Sistem
- OS: Linux / macOS (tested on Ubuntu & DevASC VM)  
- Tools bawaan: `ping`, `awk`, `grep`, `date`  
- Hak akses: user biasa (no root required)

---

## 🧩 Instalasi
Clone dulu project-nya ke lokal lo:
```bash
git clone https://github.com/yourusername/multi-host-ping-monitor.git
cd multi-host-ping-monitor



**## Kasih izin eksekusi:**
chmod +x multi_ping_monitor.sh


**## Cara Pakai**
./multi_ping_monitor.sh



**## Contoh output:**
===============================================
🔍 Multi Host Ping Monitor — dame x ChatGPT 😎
Tanggal: Tue Oct 21 09:30:45 2025
===============================================

🌐 Host: youtube.com
   ✅ Status: Reachable
   📦 Packet Loss: 0%
   ⚡ Rata-rata Latency: 25.6 ms

🌐 Host: facebook.com
   ✅ Status: Reachable
   📦 Packet Loss: 0%
   ⚡ Rata-rata Latency: 32.4 ms

🌐 Host: netacad.com
   ❌ Status: Unreachable
   📦 Packet Loss: 100%
   ⚡ Latency: N/A

-----------------------------------------------
📡 Monitoring selesai!


**## 🛠️ Konfigurasi Host Target**
youtube.com
facebook.com
netacad.com
google.com
