��          t               �      �      �         y     A   �  G   �       K     �   ^  m   �  �  V     �          !  y   )  A   �  G   �     -  K   3  �     m   	   1.0.3 Release Notes Backwards Incompatible Changes Changes Channel sessions are not re-saved if they're empty even if they're marked as modified, allowing logout to work correctly. Channels 1.0.3 is a minor bugfix release, released on 2017/02/01. Database connections are no longer force-closed after each test is run. None. Request reading timeouts now correctly return 408 rather than erroring out. The ``rundelay`` delay server now only polls the database once per second, and this interval is configurable with the ``--sleep`` option. WebsocketDemultiplexer now correctly does sessions for the second/third/etc. connect and disconnect handlers. Project-Id-Version: Django-Channels-tw-docs 0.0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-06-21 02:56+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_Hant_TW
Language-Team: zh_Hant_TW <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 1.0.3 Release Notes Backwards Incompatible Changes Changes Channel sessions are not re-saved if they're empty even if they're marked as modified, allowing logout to work correctly. Channels 1.0.3 is a minor bugfix release, released on 2017/02/01. Database connections are no longer force-closed after each test is run. None. Request reading timeouts now correctly return 408 rather than erroring out. The ``rundelay`` delay server now only polls the database once per second, and this interval is configurable with the ``--sleep`` option. WebsocketDemultiplexer now correctly does sessions for the second/third/etc. connect and disconnect handlers. 