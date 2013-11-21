ಠ_ಠ Bash Alias
==========================

##Install on OSX:
```bash
git clone https://github.com/qrohlf/look-of-disapproval.git
cd look-of-disapproval
./install.sh
echo -e "\nalias disapprove=~/.disapprove.sh" >> ~/.bash_profile
. ~/.bash_profile
```

You can then delete the installer:
```bash
cd ../
rm -rf look-of-disapproval
```

##Install on Linux
Follow the OSX instructions, replacing `~/.bash_profile` with the appropriate file for your system. Ubuntu users should use `~/.profile`, most other distros will use `~/.bashrc`

##Usage
To use, type `disapprove` at a terminal
