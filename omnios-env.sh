release=`awk '$1 == "OmniOS" { print $3 }' /etc/release`
case $release in
    r151006)
        GCCPATH="/opt/gcc-4.7.2/bin"
        CPPFLAGS="-I/usr/include/libxml2 -I/opt/omni/include/amd64 -I/opt/omni/include -I/opt/circonus/include/amd64 -I/opt/circonus/include -I/opt/circonus/include/amd64/luajit-2.0 -I/usr/include/amd64"
        CFLAGS="-m64 -Wall -Werror"
        CXXFLAGS="-m64 -Wall -Werror"
        LDFLAGS="-m64 -L/opt/circonus/lib/amd64 -R/opt/circonus/lib/amd64 -L/opt/omni/lib/amd64 -R/opt/omni/lib/amd64 -L/opt/sunstudio12.1/prod/lib/amd64 -R/opt/sunstudio12.1/prod/lib/amd64"
        NPM="/opt/omni/bin/npm"
        ;;
    r151014)
        GCCPATH="/opt/gcc-4.8.1/bin"
        CPPFLAGS="-I/usr/include/libxml2 -I/opt/circonus/include/amd64 -I/opt/circonus/include -I/opt/circonus/include/amd64/luajit-2.0 -I/usr/include/amd64"
        CFLAGS="-m64 -Wall -Werror"
        CXXFLAGS="-m64 -Wall -Werror"
        LDFLAGS="-m64 -L/opt/circonus/lib/amd64 -R/opt/circonus/lib/amd64 -L/opt/sunstudio12.1/prod/lib/amd64 -R/opt/sunstudio12.1/prod/lib/amd64"
        NPM="/opt/circonus/bin/npm"
        ;;
    *)
        echo "Unsupported release found: $release"
        exit 1
        ;;
esac

export PATH="$GCCPATH:/opt/OMNIperl/bin:/opt/circonus/bin:/usr/gnu/bin:/usr/ccs/bin:/usr/bin:/usr/sbin:/usr/sfw/bin:/opt/onbld/bin/i386:/opt/circonus/bin/amd64:/opt/omni/bin:/opt/sunstudio12.1/bin"
export CPPFLAGS
export CFLAGS
export CXXFLAGS
export LDFLAGS
export NPM
export SHCFLAGS="-g -m64"
