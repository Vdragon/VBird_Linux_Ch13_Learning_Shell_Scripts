#!/bin/bash
# 程式：
#	程式顯示這個 script 的名稱與其參數
# 變更紀錄：
# 2014/06/03	Ｖ字龍	正體中文版本
# 2009/02/17	VBird	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "script 的名稱為 ==> $0"
echo "命令的參數數量為 ==> $#"
[ "$#" -lt 2 ] && echo "命令的參數數量少於 2。在這裡就停止。" \
	&& exit 0
echo "您的全部參數為 ==> '$@'"
echo "第一個參數 ==> $1"
echo "第二個參數 ==> $2"