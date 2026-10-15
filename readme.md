# 🚀 Automated Linux Server Provisioning & Hardening

Proyek ini berisi skrip otomasi untuk melakukan pembaruan, konfigurasi keamanan (*hardening*), dan penyiapan layanan dasar pada Linux Server dari kondisi bersih hingga siap digunakan untuk lingkungan produksi.

---

## 📐 Arsitektur Lab Virtual

- **Host OS:** Windows (Menggunakan MobaXterm sebagai SSH Client)
- **Hypervisor:** Oracle VM VirtualBox (Bridged Adapter / Host-Only)
- **Target OS:** Ubuntu Server LTS
- **Management Tools:** Bash Scripting, UFW Firewall, Nginx Web Server

---

## 🛠️ Fitur Otomasi Skrip (`setup-server.sh`)

- [x] **System Update & Upgrade:** Memperbarui seluruh paket sistem secara otomatis.
- [x] **Package Installation:** Menginstal tools penting (`curl`, `git`, `htop`) dan *Web Server* Nginx.
- [x] **Firewall Hardening (UFW):** Mengatur aturan lalulintas jaringan secara ketat (menutup port masuk secara default dan hanya membuka port penting seperti SSH dan HTTP).
- [x] **Custom Landing Page:** Otomatis membuat halaman sambutan uji coba web server.

---

## 🚀 Cara Menjalankan Skrip

1. Clone repositori ini ke server target:
   ```bash
   git clone [https://github.com/sansan1919/linux-server-provisioning.git](https://github.com/sansan1919/linux-server-provisioning.git)
   cd linux-server-provisioning/scripts
