#!/bin/bash
# 程式：
#	使用者輸入了兩個整數；程式會輸出兩數相乘的積。
# 變更紀錄
# 2014/06/01	Ｖ字龍	正體中文翻譯
# 2005/08/23	VBird	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e "你**應當**輸入兩個數字，我會把它們乘起來！\n"
read -p "第一個數字：" firstnu
read -p "第二個數字：" secnu
total=$(($firstnu*$secnu))
echo -e "\n$firstnu x $secnu 的結果為 ==> $total"