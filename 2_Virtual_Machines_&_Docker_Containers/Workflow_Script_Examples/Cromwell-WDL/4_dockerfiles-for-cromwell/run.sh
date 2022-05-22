#!/bin/bash

function usage() {
  echo "Usage: $0 <subcommand> [OPTIONS ...] [ARGS]"
  echo ""
  echo "subcommands"
  echo "  server"
  echo ""
  echo "options"
  echo "  -h              Print this message and exit"
  echo "  -c config_file  Optional configuration file"
  echo "  ...             Options not recognized are passed on"
}

SUBCOMMAND=$1
shift

CONFIG=""

while getopts ":hc:" opt;
do
  case $opt in
    h)
      # print usage and exit
      usage
      exit
      ;;
    c)
      # optional config file
      CONFIG=$OPTARG
      shift 2
      ;;
    \?)
      ## ignore unrecognized options
      ## this may appear in the positional as arguments to the subcommand
      #echo "invalid option: -$OPTARG" >&2
      #exit 1
      ;;
    :)
      echo "Missing value for option -$OPTARG" >&2
      exit 1
      ;;
  esac
done

ARGS=$*

if [[ ! -z "${CONFIG// }" ]];
then
  CONFIG="-Dconfig.file=$CONFIG"
fi

java ${CONFIG} -jar /opt/cromwell/cromwell.jar $SUBCOMMAND $ARGS
