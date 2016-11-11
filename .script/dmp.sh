#!/bin/bash
readonly DB_USER='root'
readonly DB_HOST='localhost'
readonly DATABASE='sample'
readonly SCRIPT_DIR=$(cd $(dirname $0);pwd)
readonly DML_DIR="${SCRIPT_DIR}/../src/main/resources/dml"
readonly TARGET_TABLES=(
book
publisher
)

#TODO テーブル名は外部ファイルから取得したい
for tablename in ${TARGET_TABLES[@]}
do
  echo $tablename
  mysqldump --user $DB_USER -h $DB_HOST --complete-insert --hex-blob --no-create-info --single-transaction $DATABASE $tablename > ${DML_DIR}/${tablename}_dml.sql
done

exit 0
