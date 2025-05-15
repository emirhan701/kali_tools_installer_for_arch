#!/bin/bash

# Check if "yay" is installed, if not, install it ("yay" yüklü mü kontrol et, yoksa yükle.)
if ! command -v yay &> /dev/null; then
    echo "yay not found. It's being installed... (yay bulunamadı. Kuruluyor...)"
    sudo pacman -S --noconfirm yay || {
        echo "Failed to install yay. Please install manually. (yay kurulamadı. Lütfen manuel olarak yükleyin.)"
        exit 1
    }
fi

# System upgrade (Sistem güncellemesi)
sudo pacman -Syu --noconfirm

# Application list (Uygulama listesi)
apps=(
    aircrack-ng wpscan nmap ace ipv6toolkit exploitdb arp-scan dmitry ike-scan legion
    maltego netdiscover p0f recon-ng spiderfoot dnsenum dnsmap dnsrecon dnstracer dnswalk
    fierce twofi trace irpas netmask nbtscan smbmap smtp-user-enum swaks braa ssldump sslh
    sslscan tlssled arping fping hping3 masscan unicornscan xprobe2 lbd wafw00f lynis nikto
    dhcpig iaxflood siege t50 cisco-auditing-tool cisco-global-exploiter cisco-ocs cisco-torch
    copy-router-config yersinia bed siparmyknife spike enumiax rtpflood rtpinsertsound
    rtpmixsound sctpscan sipp burpsuite commix httrack paros skipfish sqlmap webscarab
    apache-users cutycapt dirb dirbuster uniscan wfuzz jboss-autopwn joomscan plecost davtest
    jsql padbuster whatweb xsser mdb-sql oscanner sidguesser sqldic sqlninja tnscmd10g cewl
    crunch hashcat john medusa ophcrack rainbowcrack rcracki-mt wordlists hydra patator
    thc-pptp-bruter chntpw cmospwd fcrackzip hashid hash-identifier samdump2 sipcrack sucrack
    rsmangler statsgen chirp cowpatty fern-wifi-cracker kismet mdk3 mfoc mfterm pixiewps
    wifite hackrf bluelog blueranger bluesnarfer btscanner redfang spooftooph mfcuk asleap
    eapmd5pass wifi-honey bytecode-viewer clang dex2jar edb-debugger jadx javasnoop radare2
    beef termineter driftnet ettercap-graphical macchanger mitmproxy netsniff-ng responder
    wireshark darkstat dnschef dsniff hexinject sslsniff tcpflow rebind sniffjoke sslsplit
    tcpreplay backdoor-factory nishang proxychains4 weevely cymothoa sbd laudanum iodine
    miredo proxytunnel pwnat stunnel4 udptunnel autopsy binwalk chkrootkit foremost galleta
    hashdeep dc3dd dcfldd extundelete missidentify pst-utils reglookup ddrescue guymager
    pdfid pdf-parser magicrescue pasco pev recoverjpeg rifiuti rifiuti2 safecopy calpel
    scrounge-ntfs pipal recordmydesktop
)

# Attempting to install each package first with “pacman” and then with “yay” (Her paket için önce "pacman", sonra "yay" ile yükleme denemesi)
for app in "${apps[@]}"; do
    echo -e "\n📦 Loading(Yükleniyor): $app"
    
    if pacman -Qi "$app" &> /dev/null; then
        echo "✔ $app already installed(zaten kurulu) (pacman)"
    else
        sudo pacman -S --noconfirm "$app" 2>/dev/null || yay -S --noconfirm "$app"
    fi
done

# A message of cleanliness and success (Temizlik ve başarı mesajı)
clear
echo -e "\n✅ Success, all tools are installed!!(Başarılı, tüm toollar yüklendi!!!)"
