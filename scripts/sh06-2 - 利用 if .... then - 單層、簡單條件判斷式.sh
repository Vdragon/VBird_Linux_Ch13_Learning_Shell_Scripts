#!/bin/bash
# 程式：
# 	本程式顯示使用者的選擇
# 變更紀錄
# 2014/06/03	Ｖ字龍	正體中文翻譯
# 2005/08/25	VBird	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "請輸入 (Y/N)：" yn
# [ "$yn" == "Y" -o "$yn" == "y" ] && echo "好，繼續吧" && exit 0
if [ "$yn" == "Y" ] ||  [ "$yn" == "y" ]; then
	echo "好，繼續吧"
	exit 0
fi

# [ "$yn" == "N" -o "$yn" == "n" ] && echo "喔，那就中止吧！" && exit 0
if [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
	echo "喔，那就中止吧！"
	exit 0
fi
echo "我不知道您的選擇是什麼" && exit 0
