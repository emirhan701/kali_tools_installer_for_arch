
# kali_tools_installer_for_arch

# Kali Tools Installer

## 🇬🇧 Kali Tools Automatic Installation Script

This bash script is designed to quickly install commonly used security and penetration testing tools on your **Arch Linux** system. Instead of manually installing each tool, this script automates the process.

**Note:** This script is intended for **Arch Linux**, despite the repository name. Please ensure you are using Arch Linux or an Arch-based distribution.

### Features

- Installs common Kali tools (compatibility on Arch Linux may vary)
- Saves time via automation
- Simple and readable structure

### Requirements

- **Arch Linux** or an Arch-based system (Manjaro, EndeavourOS, etc.)
- `sudo` privileges
- Internet connection
- `git` installed

### Usage

```bash
git clone https://github.com/emirhan701/kali_tools_installer_for_arch.git
cd kali_tools_installer_for_arch
chmod +x kali_tools_installer.sh
sudo ./kali_tools_installer.sh
````
The script will download and attempt to install the predefined tools in order using `pacman`. Some steps might require confirmation during installation. Please be aware that not all Kali tools may be directly available or fully functional on Arch Linux.


## 🇹🇷 Kali Araçlarını Otomatik Kurulum Script'i

Bu bash script'i, **Arch Linux** sisteminizde yaygın olarak kullanılan güvenlik ve sızma testi araçlarını hızlı bir şekilde kurmak için hazırlanmıştır. Araçları tek tek manuel kurmak yerine, bu script ile otomatik olarak yükleyebilirsiniz.

**Not:** Bu script, depo adına rağmen **Arch Linux** için tasarlanmıştır. Lütfen Arch Linux veya Arch tabanlı bir dağıtım kullandığınızdan emin olun.

### Özellikler

  - Yaygın kullanılan Kali araçlarını kurar (Arch Linux üzerindeki uyumluluk değişiklik gösterebilir)
  - Otomasyon ile zaman tasarrufu sağlar
  - Basit ve anlaşılır bir yapıya sahiptir

### Gereksinimler

  - **Arch Linux** veya Arch tabanlı bir sistem (Manjaro, EndeavourOS, vb.)
  - `sudo` yetkisi
  - İnternet bağlantısı
  - `git` kurulu olmalıdır

### Kullanım

```bash
git clone https://github.com/emirhan701/kali_tools_installer_for_arch.git
cd kali_tools_installer_for_arch
chmod +x kali_tools_installer.sh
sudo ./kali_tools_installer.sh
```
Script, içerisinde tanımlı araçları `pacman` kullanarak sırayla indirip kurmayı deneyecektir. Kurulum sırasında onay isteyen adımlar olabilir. Lütfen tüm Kali araçlarının Arch Linux üzerinde doğrudan kullanılamayabileceğini veya tam olarak işlevsel olmayabileceğini unutmayın.
