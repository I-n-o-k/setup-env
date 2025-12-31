sudo apt-get update -q -y
sudo apt-get install -q -y --no-install-recommends 

    # Core sudo apt Packages
sudo apt-get install -q -y --no-install-recommends sudo apt-utils sudo apt-transport-https python3-sudo apt

    # Linux Standard Base Packages
sudo apt-get install -q -y --no-install-recommends sudo git ffmpeg maven nodejs ca-certificates-java pigz tar rsync rclone aria2 adb autoconf automake axel bc bison build-essential ccache lsb-core lsb-security ca-certificates systemd udev

    # Upload/Download/Copy/FTP utils
sudo apt-get install -q -y --no-install-recommends git curl wget wput axel rsync

    # GNU and other core tools/utils
sudo apt-get install -q -y --no-install-recommends binutils coreutils bsdmainutils util-linux patchutils libc6-dev sudo

    # Security CLI tools
sudo apt-get install -q -y --no-install-recommends ssh openssl libssl-dev sshpass gnupg2 gpg

    # Tools for interacting with an Android platform
sudo apt-get install -q -y --no-install-recommends android-sdk-platform-tools adb fastboot squashfs-tools

    # OpenJDK8 as Java Runtime
sudo apt-get install -q -y --no-install-recommends openjdk-8-jdk ca-certificates-java
sudo apt-get install -q -y --no-install-recommends maven nodejs

    # Python packages
sudo apt-get install -q -y --no-install-recommends python-all-dev python3-dev python3-requests

    # Compression tools/utils/libraries
sudo apt-get install -q -y --no-install-recommends zip unzip lzip lzop zlib1g-dev xzdec xz-utils pixz p7zip-full p7zip-rar zstd libzstd-dev lib32z1-dev

    # GNU C/C++ compilers and Build Systems
sudo apt-get install -q -y --no-install-recommends build-essential gcc gcc-multilib g++ g++-multilib

    # make system and stuff
sudo apt-get install -q -y --no-install-recommends clang llvm lld cmake automake autoconf

    # XML libraries and stuff
sudo apt-get install -q -y --no-install-recommends libxml2 libxml2-utils xsltproc expat re2c

    # Developer's Libraries for ncurses
sudo apt-get install -q -y --no-install-recommends ncurses-bin libncurses5-dev lib32ncurses5-dev bc libsdl1.2-dev libtinfo5 python-is-python3 ninja-build libcrypt-dev\

    # Misc utils
sudo apt-get install -q -y --no-install-recommends file gawk xterm screen rename tree schedtool software-properties-common
sudo apt-get install -q -y --no-install-recommends dos2unix jq flex bison gperf exfat-fuse libb2-dev pngcrush imagemagick optipng advancecomp

  # Clean useless sudo apt cache
 sudo apt-get -y clean && sudo apt-get -y autoremove
 rm -rf /var/lib/sudo apt/lists/* /var/cache/sudo apt/archives/*
 dpkg-divert --local --rename /usr/bin/ischroot && ln -sf /bin/true /usr/bin/ischroot
 chmod u+s /usr/bin/screen && chmod 755 /var/run/screen
 echo "Set disable_coredump false" >> /etc/sudo.conf

 mkdir ~/bin
 curl -sL https://gerrit.googlesource.com/git-repo/+/refs/heads/stable/repo?format=TEXT | base64 --decode  > ~/bin/repo
 chmod a+rx ~/bin/repo
