# CCminer for Termux

Based on: https://github.com/Oink70/CCminer-ARM-optimized

Install latest arm64-v8a Termux: https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0+github-debug_arm64-v8a.apk

Proceed with installation, configuration & compilation:

1. Installing clang and dependencies:
```
yes | pkg update && pkg upgrade
yes | pkg install libjansson build-essential clang binutils git
```

2. Fix environment & clone repo:
```
cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys
git clone https://github.com/saijame-art/ccminer.git
cd ccminer
chmod +x build.sh configure.sh autogen.sh start.sh
```

3. Edit Arch & Cores:
```
nano configure.sh
```

4. Compile ccminer:
```
CXX=clang++ CC=clang ./build.sh
```

5. Change your pools, address, and miner name with:
```
nano config.json
```
6. for automine when open termux app, please use this:
nano ~/.bashrc
7. in the text editor add this word line:
cd ccminer && ./start.sh

8. exit and terminate the termux app (or) close the app and open again
   the miner will run automatically. thank!

   
