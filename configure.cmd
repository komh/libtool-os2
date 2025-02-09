extproc sh

d=$(dirname "$0" | tr '\\' /)

n=configure
test -f "$d/$n." || { echo "\`$d/$n' not found !!!"; exit 1; }

opts="
    --prefix=/@unixroot/usr/local
    --enable-shared
    --enable-static
"

"$d/$n" $opts "$@" 2>&1 | tee "$n.log"
exit ${PIPESTATUS[0]}
