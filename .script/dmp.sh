#!/bin/bash
readonly DB_USER='root'
readonly DB_HOST='localhost'
readonly DATABASE='sample'
readonly SCRIPT_DIR=$(cd $(dirname $0);pwd)
readonly DML_DIR="${SCRIPT_DIR}/../src/main/resources/dml"

#TODO テーブル名のループにしたい
mysqldump --user $DB_USER -h $DB_HOST $DATABASE book > ${DML_DIR}/book_dml.sql
mysqldump --user $DB_USER -h $DB_HOST $DATABASE publisher > ${DML_DIR}/publisher_dml.sql

exit 0
