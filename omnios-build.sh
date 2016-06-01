# pkg install platform/runtime/luajit
source omnios-env.sh
gmake CC="gcc -m64" LUADIR=/opt/circonus/include/amd64/luajit-2.0
