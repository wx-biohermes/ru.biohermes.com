#!/bin/bash

# 配置数据库信息
DB_USER="ru_biohermes_com"
DB_PASSWORD="].f/X9mBAklua5WW"
DB_NAME="ru_biohermes_com"
BACKUP_PATH="./backups"
BACKUP_FILE="$BACKUP_PATH/ru_biohermes_com-db_backup_$(date '+%Y-%m-%d_%H-%M-%S').sql"

# 确保备份目录存在
mkdir -p $BACKUP_PATH

# 导出数据库，避免表空间信息错误
mysqldump --user=$DB_USER --password=$DB_PASSWORD --no-tablespaces $DB_NAME > $BACKUP_FILE

# 检查备份是否成功
if [ $? -eq 0 ]; then
    echo "数据库备份成功: $BACKUP_FILE"
else
    echo "数据库备份失败！"
fi
