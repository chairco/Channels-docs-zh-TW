# django-channel-tw-docs

* 網址 [Django channel](http://channels.readthedocs.io/en/latest/concepts.html)  
* 範例 [線上聊天室](https://github.com/jacobian/channels-example)
* 線上翻譯 [Django-channels-tw-docs](https://www.transifex.com/django-channels-tw-docs/public/)
* 完成版本 [django-channels-docs-tw](http://django-channels-docs-tw.readthedocs.io/zh_TW/latest/)


目前正在進行的 Django-channel 翻譯專案。~~歡迎 FORK 一起翻譯，目前計劃先使用 gitbook 建立在 git.io。~~

有兩種參考翻譯方法:

* 第一種像是 [python-doc-tw](https://github.com/python-doc-tw/python-doc-tw) 透過 Transifex 將 rst 檔案拉到網站上一個個翻譯。
* 第二種為在本機端上編輯一個新的 sphinx 來編輯一個新的翻譯。

兩種方式各有優缺點。

第一種優點是方便，可以透過網站專心翻譯，但缺點是需要手動拉下 .po 檔案再轉 rst 不太確定 Django channels 作者能不能這樣共同編輯翻譯，而且它採用 RTD 網站，不知道中英文要怎樣處理。

第二種比較單純，就編寫一下轉 sphinx document 風格的網站。只是翻譯大概就自己一個人翻譯吧？放在 github 上應該沒人會理我。

## 採用 Transifex
目前我訂採用第一種方式，採用此方式要先把本機端的檔案轉成 .po 檔案上傳到 Transifex。因此在 mac os(osx) 上要安裝一個支援多語系的套件 gettex。方式很簡單：

```
#brew install gettext
#brew link gettext --force //如果安裝過要重新 --force 
```

接著先 clone 專案的 docs 檔將 rst 轉成 .po 檔案，流程在 sphinx 官方網站上有一個很清楚的流程圖：
![sphinx process](http://www.sphinx-doc.org/en/stable/_images/translation.png)

所以先 clone Django channels 得專案到本機端上：
```
git clone https://github.com/django/channels.git
```

進入專案的 docs 底下，不過要先確認你的環境目前有安裝兩個套件，一個是 [sphinx](https://github.com/sphinx-doc/sphinx), 一個是 [sphinx_intl](https://github.com/sphinx-doc/sphinx-intl) 然後執行

```
make gettex
```

接著會在 `/_build/locale` 底下建立對應的 .pot 檔案。這些 .pot 檔案要讓我們用來轉換成 .po 檔。轉 .po 檔案的方式也很簡單，執行指令如下：

```
sphinx-intl update -l zh_TW
```

要注意是因為我在 Transifex 上選擇 zh_TW 所以轉換格式要輸入正確。 然後就可以上到網站註冊一個翻譯團體，接著將這些 .po 檔案上傳就大功告成囉。


翻譯的網址：https://www.transifex.com/django-channels-tw-docs/public/
