## Release checklist
1. Merge changes to `main`.
2. Trigger CI to produce `mada-iso.iso`.
3. Download ISO, compute checksums:
   sha256sum mada-iso.iso > mada-iso.iso.sha256
4. Sign:
   gpg --detach-sign --armor mada-iso.iso
5. Create GitHub Release and attach iso + sha256 + signature.
