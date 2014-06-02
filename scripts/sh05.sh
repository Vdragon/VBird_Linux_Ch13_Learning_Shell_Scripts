#!/bin/bash
# 程式：
#	使用者輸入一個檔案系統項目名稱，程式會檢查下列各項：
#	1.) 檔案是否存在？ 2.) 是檔案還是目錄？ 3.) 檔案權限 
# 變更紀錄：
# 2014/06/01	Ｖ字龍	正體中文翻譯
# 2005/08/25	VBird	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 讓使用者輸入檔名，並且判斷使用者是否真的有輸入字串？
echo -e "請輸入一個檔案系統項目名稱，我會檢查該檔案系統項目的類型與\
權限設定。\n\n"
read -p "輸入檔案系統項目名稱：" filename
test -z $filename && echo "您必須輸入一個檔案系統項目名稱。" && exit 0
# 2. 判斷檔案是否存在？若不存在則顯示訊息並結束腳本
test ! -e $filename && echo "名稱為 '$filename' 的檔案系統項目**並不**存在" && exit 0
# 3. 開始判斷檔案類型與屬性
test -f $filename && filetype="一般檔案"
test -d $filename && filetype="目錄"
test -r $filename && perm="可讀"
test -w $filename && perm="$perm 可寫"
test -x $filename && perm="$perm 可執行"
# 4. 開始輸出資訊！
echo "名稱為 $filename 的檔案系統項目是個$filetype"
echo "權限設定為：$perm"