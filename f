#!/bin/sh
#
# http://github.com/darko-mesaros/bin
#
# f - a tiny file searcher
#

usage() {
    >&2 echo 'usage: f [path] [-t <f|d>] term'
    exit 1
}

[ "$1" ] || usage
while [ "$1" ] ; do
    case $1 in
        -h)
            usage
            ;;
        -t)
            case $2 in
                f) t='-type f' ;;
                d) t='-type d' ;;
                *) usage
            esac
            shift 2
            ;;
        *)
            case $# in
                1)
                    p=.
                    [ "$t" ] && usage
                    ;;
                2)
                    if [ -d "$1" ] ; then
                        p="$1"
                        shift
                    else
                        usage
                    fi
                    ;;
                *)
                    usage
            esac
            break
    esac
done

exec find -L "$p" ! -path "$p" $t -iname "*${*}*" -maxdepth 10 2>/dev/null
