apt-get update -q -y
apt-get install -q -y --no-install-recommends

    # Core Apt Packages
apt-get install -q -y --no-install-recommendsapt-utils apt-transport-https python3-apt

    # Linux Standard Base Packages
apt-get install -q -y --no-install-recommendssudo git ffmpeg maven nodejs ca-certificates-java pigz tar rsync rclone aria2 adb autoconf automake axel bc bison build-essential ccache lsb-core lsb-security ca-certificates systemd udev

    # Upload/Download/Copy/FTP utils
apt-get install -q -y --no-install-recommendsgit curl wget wput axel rsync

    # GNU and other core tools/utils
apt-get install -q -y --no-install-recommendsbinutils coreutils bsdmainutils util-linux patchutils libc6-dev sudo

    # Security CLI tools
apt-get install -q -y --no-install-recommendsssh openssl libssl-dev sshpass gnupg2 gpg

    # Tools for interacting with an Android platform
apt-get install -q -y --no-install-recommendsandroid-sdk-platform-tools adb fastboot squashfs-tools

    # OpenJDK8 as Java Runtime
apt-get install -q -y --no-install-recommendsopenjdk-8-jdk ca-certificates-java
apt-get install -q -y --no-install-recommendsmaven nodejs

    # Python packages
apt-get install -q -y --no-install-recommendspython-all-dev python3-dev python3-requests

    # Compression tools/utils/libraries
apt-get install -q -y --no-install-recommendszip unzip lzip lzop zlib1g-dev xzdec xz-utils pixz p7zip-full p7zip-rar zstd libzstd-dev lib32z1-dev

    # GNU C/C++ compilers and Build Systems
apt-get install -q -y --no-install-recommendsbuild-essential gcc gcc-multilib g++ g++-multilib

    # make system and stuff
apt-get install -q -y --no-install-recommendsclang llvm lld cmake automake autoconf

    # XML libraries and stuff
apt-get install -q -y --no-install-recommendslibxml2 libxml2-utils xsltproc expat re2c

    # Developer's Libraries for ncurses
apt-get install -q -y --no-install-recommendsncurses-bin libncurses5-dev lib32ncurses5-dev bc libsdl1.2-dev libtinfo5 python-is-python3 ninja-build libcrypt-dev\

    # Misc utils
apt-get install -q -y --no-install-recommendsfile gawk xterm screen rename tree schedtool software-properties-common
apt-get install -q -y --no-install-recommendsdos2unix jq flex bison gperf exfat-fuse libb2-dev pngcrush imagemagick optipng advancecomp

  # Clean useless apt cache
 apt-get -y clean && apt-get -y autoremove
 rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*
 dpkg-divert --local --rename /usr/bin/ischroot && ln -sf /bin/true /usr/bin/ischroot
 chmod u+s /usr/bin/screen && chmod 755 /var/run/screen
 echo "Set disable_coredump false" >> /etc/sudo.conf

 mkdir ~/bin
 curl -sL https://gerrit.googlesource.com/git-repo/+/refs/heads/stable/repo?format=TEXT | base64 --decode  > ~/bin/repo
 curl -s https://api.github.com/repos/tcnksm/ghr/releases/latest
    | jq -r '.assets[] | select(.browser_download_url | contains("linux_amd64")) | .browser_download_url' | wget -qi -
 tar -xzf ghr_*_amd64.tar.gz --wildcards 'ghr*/ghr' --strip-components 1
 mv ./ghr ~/bin/ && rm -rf ghr_*_amd64.tar.gz
 chmod a+rx ~/bin/repo
 chmod a+x ~/bin/ghr
