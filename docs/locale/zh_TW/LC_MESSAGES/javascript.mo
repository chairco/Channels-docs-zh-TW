��          |               �      �   s   �   {   l  �   �  �   �  �   �  �        �     �  &   �  '   "  �  J     �  s   �  {   q  �   �  �   �  �   �	  �   
     �
     �
  &      '   '   Channels WebSocket wrapper Channels ships with a javascript WebSocket wrapper to help you connect to your websocket and send/receive messages. First, you must include the javascript library in your template; if you're using Django's staticfiles, this is as easy as:: If you are using an alternative method of serving static files, the compiled source code is located at ``channels/static/channels/js/websocketbridge.js`` in a Channels installation. We compile the file for you each release; it's ready to serve as-is. The `WebSocketBridge` instance exposes the underlaying `ReconnectingWebSocket` as the `socket` property. You can use this property to add any custom behavior. For example The library is also available as a npm module, under the name `django-channels <https://www.npmjs.com/package/django-channels>`_ The library is deliberately quite low-level and generic; it's designed to be compatible with any JavaScript code or framework, so you can build more specific integration on top of it. To demultiplex specific streams To process messages To send a message to a specific stream To send messages, use the `send` method Project-Id-Version: Django-Channels-tw-docs 0.0.1
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
 Channels WebSocket wrapper Channels ships with a javascript WebSocket wrapper to help you connect to your websocket and send/receive messages. First, you must include the javascript library in your template; if you're using Django's staticfiles, this is as easy as:: If you are using an alternative method of serving static files, the compiled source code is located at ``channels/static/channels/js/websocketbridge.js`` in a Channels installation. We compile the file for you each release; it's ready to serve as-is. The `WebSocketBridge` instance exposes the underlaying `ReconnectingWebSocket` as the `socket` property. You can use this property to add any custom behavior. For example The library is also available as a npm module, under the name `django-channels <https://www.npmjs.com/package/django-channels>`_ The library is deliberately quite low-level and generic; it's designed to be compatible with any JavaScript code or framework, so you can build more specific integration on top of it. To demultiplex specific streams To process messages To send a message to a specific stream To send messages, use the `send` method 