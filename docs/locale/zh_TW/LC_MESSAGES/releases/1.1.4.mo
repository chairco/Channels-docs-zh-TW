��          �               �      �        S   0  D   �     �     �  �   �     |  ?   �     �  D   �  Y      G   z  �  �     V     j  S   �  D   �     "     0  �   I     �  ?   �       D   4  Y   y  G   �   1.1.4 Release Notes Backwards Incompatible Changes Channels 1.1.4 is a bugfix release for the 1.1 series, released on June 15th, 2017. Decorator added to check ``Origin`` headers (``allowed_hosts_only``) Major Changes Minor Changes & Bugfixes New ``TEST_CONFIG`` setting in ``CHANNEL_LAYERS`` that allows varying of the channel layer for tests (e.g. using a different Redis install) None. Pending messages correctly handle retries in backlog situations Test client improvements Workers in threading mode now respond to ctrl-C and gracefully exit. ``ChannelServerLiveTestCase`` added, allows an equivalent of the Django ``LiveTestCase``. ``request.meta['QUERY_STRING']`` is now correctly encoded at all times. Project-Id-Version: Channels-docs-zh_TW 2.1.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-05-21 20:37+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_Hant_TW
Language-Team: zh_Hant_TW <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 1.1.4 Release Notes Backwards Incompatible Changes Channels 1.1.4 is a bugfix release for the 1.1 series, released on June 15th, 2017. Decorator added to check ``Origin`` headers (``allowed_hosts_only``) Major Changes Minor Changes & Bugfixes New ``TEST_CONFIG`` setting in ``CHANNEL_LAYERS`` that allows varying of the channel layer for tests (e.g. using a different Redis install) None. Pending messages correctly handle retries in backlog situations Test client improvements Workers in threading mode now respond to ctrl-C and gracefully exit. ``ChannelServerLiveTestCase`` added, allows an equivalent of the Django ``LiveTestCase``. ``request.meta['QUERY_STRING']`` is now correctly encoded at all times. 