[![Documentation Status](https://readthedocs.org/projects/channels-doc-tw/badge/?version=latest)](http://channels-doc.readthedocs.io/zh_TW/latest/?badge=latest)

# Channels-docs-zh-TW

目前正在進行的 Django Channels 翻譯專案。歡迎一起翻譯，目前共同翻譯方式採 [Transifex 線上翻譯](https://www.transifex.com/Channels-doc-tw/public/)，請先加入專案，翻譯完成後可以在 [github issue](https://github.com/chairco/Channels-tw-doc/issues) 發起，接著會將您發佈的翻譯內容審核。

未來目標是希望能夠將翻譯補全後整合進入 Channels 專案內。


相關網站請參考:

* Transifex 線上翻譯 [Channels-doc-tw](https://www.transifex.com/Channels-doc-tw/public/)
* 翻譯文件 [Channels-doc-tw](http://channels-doc.readthedocs.io/zh_TW/latest/)
* 原專案文件 [Channels](http://channels.readthedocs.io/en/latest/) 
* Channels 範例 [線上聊天室](https://github.com/jacobian/channels-example)


## 翻譯方法

介紹兩類翻譯方法，線上翻譯與本機端翻譯。兩種方式各有特點並說明差異。如果您只是想參與翻譯可以省略以下內容。


### 線上翻譯

類似 [python-doc-tw](https://github.com/python-doc-tw/python-doc-tw) 透過 Transifex 將 rst 檔案拉到網站上一個個翻譯。(http://www.sphinx-doc.org/en/stable/intl.html)

優點是方便，可以透過網站專心翻譯，但缺點是需要手動拉下 .po 檔案再轉 rst 不太確定 Django channels 作者能不能這樣共同編輯翻譯。

但採用 RTD 網站，~不知道中英文要怎樣處理~。發現 RTD 對於中英文方式很簡單，假如是英文要翻譯中文或是其他語言，只需設定同樣內容為子專案（語言別設定為中文），自動就會產生語言選項類似：

<img src="http://i.imgur.com/CWDyfHM.png" width="40%" height="40%">

### 本機翻譯

本機端上編輯一個新的 sphinx 來編輯一個新的翻譯。~比較單純，就編寫一下轉 sphinx document 風格的網站。只是翻譯大概就自己一個人翻譯吧？放在 github 上應該沒人會理我。~


## Transifex 平台和建立翻譯檔案步驟

本專案目前採`線上翻譯`。流程圖是參考 sphinx 官方網站：

![sphinx process](http://www.sphinx-doc.org/en/stable/_images/translation.png)


### 安裝多語系套件

線上翻譯的方法要先將本機端的 `.rst` 檔案轉成 `.po` 檔案，接著上傳到 Transifex。在作業系統上要安裝一個支援多語系的套件 gettext。以系統是 mac os(OSX) 為例：

```
$ brew install gettext
$ brew link gettext --force //如果安裝過要重新 --force 
```


### 複製原專案 docs 並轉換文檔

需要先複製一份[channel 專案](https://github.com/django/channels/)的 docs 檔到本機端，接著在本機端將 rst 轉成 .po 檔案。

先 clone Django channels 專案到本機端上

```shell
git clone https://github.com/django/channels.git
```

進入專案的 docs 底下，不過要先確認你的環境目前有安裝兩個套件，一個是 [sphinx](https://github.com/sphinx-doc/sphinx), 一個是 [sphinx_intl](https://github.com/sphinx-doc/sphinx-intl) 然後執行

```
make gettext
```

接著會在 `/_build/gettext` 底下建立對應的 .pot 檔案。這些 .pot 檔案要讓我們用來轉換成 .po 檔。轉換 .po 檔案的方式也很簡單，執行指令如下：

```shell
sphinx-intl update -l zh_TW
```

要注意是因為我在 Transifex 上選擇 zh_TW 所以轉換格式要輸入正確。 然後就可以上到網站註冊一個翻譯團體，接著將這些 .po 檔案上傳就大功告成囉。


### 完成翻譯

從 Transifex 翻譯專案並且將完成的 .po 檔案 pull 回本機。在 root 資料夾底下建立 .tx 的資料夾和建立一個 config 檔案並輸入 Transifex網站位置和 .po 檔與 .pot 之間關係。

```
[main]
host = https://www.transifex.com
type = PO

[Channels.asgipo]
file_filter = locale/<lang>/LC_MESSAGES/asgi.po
source_file = _build/gettext/asgi.pot
source_lang = en
```

接著翻譯完成之後只要執行 `tx pull -a` 就可以順利完成翻譯檔整合囉。


### RTD 發佈網站

在本機端 `/locale/zh_TW/LC_MESSAGE` 內應該會存在 .po 檔案，但網頁須要 .mo 檔案才有辦法正確顯示。所以最後一個步驟是透過 `make html` 指令產生一個靜態頁面同時將 .po 檔案兩兩對應的轉換成 .mo 檔案。

接著將 RTD 內的專案設定指向 github 位置，每一次 push 新的程式碼就會 trigger RTD 並且自動建置靜態文件頁面網站囉。


## 感謝[貢獻者](https://www.transifex.com/Channels-doc-tw/teams/72101/zh_TW/)
這個翻譯感謝參與 [PyConTW 2017.3 Sprint](https://www.meetup.com/Taipei-py/events/238139601/?_cookie-check=RCk0Puwq5Y-alyDD) 活動的夥伴。沒有你們這個翻譯應該不會有太多進展(根據字母排序)：

+ Adrian Liaw (@adrianliaw)
+ Cropse (@cropse)
+ hsiao yi (@hsiaoyi0504)
+ Hsiang Hung (@linusonwork0325)
+ Jason (@chairco)
+ Larry Huang (@larry0220)
+ Yuan CHAO (@yuanchao)
+ YUN CHEN (@sayhi5)
+ SpongeYao
+ Wonder Chang (@wonderchang)
+ Zong-han Xie (@xingularity)
