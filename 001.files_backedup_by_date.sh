#!/bin/bash

# 定义备份后缀，即文件名后加日期
suffix=`date +%Y%m%d`

# 找到指定目录下所有 .log 结尾文件
for file in `find ~/shell-learning/data/ -type f -name "*.log"`
do
    echo "备份文件 $file"
    cp ${file} ${file}_${suffix}
done
