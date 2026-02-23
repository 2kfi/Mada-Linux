# Mada-KDE-Linux

Mada KDE Linux is an Archiso profile used for creating an ISO image of Arch Linux with KDE Plasma on top.  
It is mainly intended for use within the Arabic-speaking region to help develop the Linux environment.

---

# How to build localy (Arch linux host)

You can build the iso for yourself just by running this command in your terminal!

```bash
sudo pacman -S archiso git

mkdir ~/iso
cd ~/iso

git clone https://github.com/2kfi/Mada-Linux.git
cd Mada-Linux

sudo mkarchiso -v -w /tmp/work-iso -o out .
# result: ./out/*.iso

```



---

**Security:** The live ISO enables passwordless sudo for `live-user` for convenience.
This is intended for live usage only. The installer will remove this behavior on install.

---

## Branding and Copyright

The branding of Mada KDE Linux, such as the ISO image name, logos, and wallpapers, is copyrighted by Arkan Fakoseh.  
These assets **cannot and maynot be reused or redistributed** without prior written approval or digital consent from the ISO image publisher.


## Third-Party Source Code

SilentSDDM source code:
https://github.com/uiriansan/SilentSDDM
