#!/bin/bash
# 程式：
#	這個程式會演示 shift 功能的效果。
# 變更紀錄：
# 2014/06/04	Ｖ字龍	正體中文版本
# 2009/02/17	VBird	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "參數數量總和為 ==> $#"
echo "您輸入的的全部參數為 ==> '$@'"
shift   # 進行第一次『一個變數的 shift 』
echo "參數數量總和為 ==> $#"
echo "您輸入的的全部參數為 ==> '$@'"
shift 3 # 進行第二次『三個變數的 shift 』
echo "參數數量總和為 ==> $#"
echo "您輸入的的全部參數為 ==> '$@'"