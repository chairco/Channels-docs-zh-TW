# Channels-docs-zh-TW

[![Documentation Status](https://readthedocs.org/projects/channels-doc-tw/badge/?version=latest)](http://channels-doc.readthedocs.io/zh_TW/latest/?badge=latest)


Channels 強化 Django，讓你可以使用熟悉的 Django 設計模式與靈活病彈性的底層框架，為你的程式碼提供了 Websocket, 長輪詢 HTTP，任務卸載以及其他非同步支援，不僅可以自行定義行為，還可以編輯對你自己協議的需求。

中文版的文件檔案請參考 http://channels-doc.readthedocs.io/zh_TW/latest/ 目前正在努力翻譯至 2.x，或是你迫不及待的想先閱讀英文版本 https://channels.readthedocs.io/ 如果可以，在閱讀完後，也可以加入 https://www.transifex.com/Channels-zhTW/ 或是到 [Wiki](https://github.com/chairco/Channels-docs-zh-TW/wiki/Channels-docs-zh_TW-%E7%BF%BB%E8%AD%AF%E6%B5%81%E7%A8%8B) 了解細節與參與翻譯喔！

Channels 是一個官方的 Django 專案，因此有一個棄用政策。有關每個版本的已棄用或待批棄用的詳細訊息，請參閱[發行說明](http://channels.readthedocs.io/en/latest/releases/index.html)。

透過 issues 在這邊獲得支援，或是到 Freenode 內的 #django-channels 頻道來取得協助。

使用 PyPI 來安裝 channels 與其套件，請參考我們的安裝與教學說明文件檔案瞭解更多。


## 相依性

目前 Channels 專案已經完全支援 3.5 或更高版本。 channels 兼容於 Django 1.11 或是 Django 2.0。


## 貢獻

請先[研讀我的們的貢獻手冊](https://channels.readthedocs.io/en/latest/contributing.html)，瞭解更多貢獻的方式。


## 維護以及安全


請聯繫 security@djangoproject.com 回報安全的問題. 關於 GPG 簽章與更多安全流程訊息， 參見 https://docs.djangoproject.com/en/dev/internals/security/.

回報臭蟲或是請求新的 features，請發起一個新的 GitHub issue。針對較大型討論，請張貼到 django-developers mailing list。

Django Core Shepherd: Andrew Godwin <andrew@aeracode.org>

維護團隊:

Andrew Godwin <andrew@aeracode.org>
Steven Davidson
Jeremy Spencer
If you are interested in joining the maintenance team, please read more about contributing and get in touch!


## 其他專案

Channels 專案是由以下幾個套件組合而成; 這些套件如:

+ [Daphne](https://github.com/django/daphne/), the HTTP and Websocket termination server
+ [asgiref](https://github.com/django/asgiref/), the base ASGI library/memory backend
+ [channels_redis](https://github.com/django/channels_redis/), the Redis channel backend


## 中文翻譯感謝[貢獻者](https://www.transifex.com/Channels-zhTW/teams/72101/zh_TW/)
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
