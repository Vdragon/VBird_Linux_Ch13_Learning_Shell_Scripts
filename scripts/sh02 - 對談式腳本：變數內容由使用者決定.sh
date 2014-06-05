#!/bin/bash
# 程式：
#	使用者輸入他的名字跟姓氏。程式顯示他的全名。
# 變更紀錄：
# 2014/06/01	Ｖ字龍	新增正體中文翻譯
# 2005/08/23	VBird	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "請輸入您的名：" firstname  # 提示使用者輸入
read -p "請輸入您的姓：" lastname   # 提示使用者輸入
echo -e "\n您的全名是： $firstname $lastname" # 結果由螢幕輸出
