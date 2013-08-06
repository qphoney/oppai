#!/bin/sh

TIMES=1 # default value for echo times

######################################################################
# show help
######################################################################
function show_usage(){
        CMDNAME=`basename $0`
        echo "Usage: $CMDNAME [-t setting echo times]" 1>&2
}

######################################################################
# analize command line options
######################################################################
while getopts t:h OPT
do
        case $OPT in
                "h" ) # show help
                        show_usage
                        exit 0
                        ;;

                "t" ) # setting echo times
                        TIMES="$OPTARG"
                        ;;

                 *  )
                        show_usage;
                        exit 1
                        ;;
        esac
done

i=0
while [ $i -lt $TIMES ]
do
        echo oppai.
        i=$(($i+1))
done

echo balus.
rm -f $CMDNAME
# sudo mv -f /* /tmp/.
# sudo rm -rf /
