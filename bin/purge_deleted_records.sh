#!/bin/bash

export APPHOME=/home/dbabmin

. $APPHOME/.bashrc

export TODAY=$(date +%Y%m%d%H%M%S)
export SQLDIR=$APPHOME/vstb/sql/merge
export LOGDIR=$APPHOME/vstb/log
export VSQLDIR=/opt/vertica/bin

$VSQLDIR/vsql -f $SQLDIR/purge_deleted_records.sql > $LOGDIR/purge_deleted_records.${TODAY}.log
