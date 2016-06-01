source omnios-env.sh
pkg install platform/runtime/luajit
gmake CC="gcc -m64" LUADIR=/opt/circonus/include/amd64/luajit-2.0
