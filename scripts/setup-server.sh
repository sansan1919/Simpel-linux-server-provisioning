#!/bin/bash

# Pastikan script dijalankan sebagai root (sudo)
if [ "$EUID" -ne 0 ]; then
  echo "hak akses sudo/root!"
  exit 1
fi

echo "[+] Memulai proses provisioning dan hardening server..."

echo "[+] Melakukan update dan upgrade paket sistem..."
apt update && apt upgrade -y

echo "[+] Menginstal UFW, curl, git, htop, dan Nginx..."
apt install -y ufw curl git htop nginx

echo "[+] Mengonfigurasi UFW Firewall..."
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw allow 'Nginx Full'
ufw --force enable

echo "[+] Membuat halaman simpel"
echo "<h1>Automated Linux Server Provisioning Success!</h1><p>Proyek portofolio oleh SysAdmin.</p>" > /var/www/html/index.nginx-debian.html

systemctl restart nginx

echo "[+] Selesai!"
