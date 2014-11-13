extproc sh

COMSPEC=/bin/sh \
LN_S="cp -pR" \
    ./bootstrap "$@"
