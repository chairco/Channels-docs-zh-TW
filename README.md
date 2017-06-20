# Django-Channel-tw-docs

* Transifex 線上翻譯 [Django-channels-tw-docs](https://www.transifex.com/django-channels-tw-docs/public/)
* 中文翻譯成果 [django-channels-docs-tw](http://django-channels-docs-tw.readthedocs.io/zh_TW/latest/)
* 原文網址 [Django channel](http://channels.readthedocs.io/en/latest/concepts.html) 
* Channels 範例 [線上聊天室](https://github.com/jacobian/channels-example)

目前正在進行的 Django-channel 翻譯專案。~~歡迎 FORK 一起翻譯，目前計劃先使用 gitbook 建立在 git.io。~~


## 翻譯方法

+ 第一種像是 [python-doc-tw](https://github.com/python-doc-tw/python-doc-tw) 透過 Transifex 將 rst 檔案拉到網站上一個個翻譯。可參考完整[教學](http://www.sphinx-doc.org/en/stable/intl.html)
+ 第二種為在本機端上編輯一個新的 sphinx 來編輯一個新的翻譯。

兩種方式各有優缺點。

第一種優點是方便，可以透過網站專心翻譯，但缺點是需要手動拉下 .po 檔案再轉 rst 不太確定 Django channels 作者能不能這樣共同編輯翻譯。

採用 RTD 網站，~不知道中英文要怎樣處理~。發現 RTD 對於中英文方式很簡單，假如是英文要翻譯中文或是其他語言，只需設定同樣內容為子專案（語言別設定為中文），自動就會產生語言選項類似：
!['#'](http://i.imgur.com/0Yknt4p.png)

~第二種比較單純，就編寫一下轉 sphinx document 風格的網站。只是翻譯大概就自己一個人翻譯吧？放在 github 上應該沒人會理我。~


## Transifex 平台和建立翻譯檔案
目前我訂採用第一種方式，採用此方式要先把本機端的檔案轉成 .po 檔案上傳到 Transifex。因此在 mac os(osx) 上要安裝一個支援多語系的套件 gettext。方式很簡單：

```
#brew install gettext
#brew link gettext --force //如果安裝過要重新 --force 
```

接著先 clone 專案的 docs 檔將 rst 轉成 .po 檔案，流程在 sphinx 官方網站上有一個很清楚的流程圖：
<img src="http://www.sphinx-doc.org/en/stable/_images/translation.png" width="40%" height="60%">


所以先 clone Django channels 得專案到本機端上：
```shell
git clone https://github.com/django/channels.git
```

進入專案的 docs 底下，不過要先確認你的環境目前有安裝兩個套件，一個是 [sphinx](https://github.com/sphinx-doc/sphinx), 一個是 [sphinx_intl](https://github.com/sphinx-doc/sphinx-intl) 然後執行

```shell
make gettext
```

接著會在 `/_build/gettext` 底下建立對應的 .pot 檔案。這些 .pot 檔案要讓我們用來轉換成 .po 檔。轉 .po 檔案的方式也很簡單，執行指令如下：

```shell
sphinx-intl update -l zh_TW
```

要注意是因為我在 Transifex 上選擇 zh_TW 所以轉換格式要輸入正確。 然後就可以上到網站註冊一個翻譯團體，接著將這些 .po 檔案上傳就大功告成囉。


## 完成翻譯
從 Transifex 翻譯專案並且將完成的 .po 檔案 pull 回本機。在 root 資料夾底下建立 .tx 的資料夾和建立一個 config 檔案並輸入 Transifex網站位置和 .po 檔與 .pot 之間關係。

```
[main]
host = https://www.transifex.com
type = PO

[django-channels-tw-docs.asgipo]
file_filter = locale/<lang>/LC_MESSAGES/asgi.po
source_file = _build/gettext/asgi.pot
source_lang = en
```

接著翻譯完成之後只要執行 `tx pull -a` 就可以順利完成翻譯檔整合囉。


## 透過 RTD 發佈
將翻譯好的 github 指向 RTD 專案設定就成自動生成一個靜態文件頁面。
