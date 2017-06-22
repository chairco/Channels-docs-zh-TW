Þ          ì               ¼  Ò   ½  Ñ        b     ó  (       0  	   4  ª   >    é    ñ     v	     	     	
     
     
    ³
  Í   6           Õ   ¤  e   z  S   à  ¤   4     Ù  -   ÷  Ë  %  Ò   ñ  À   Ä                   #  	   '     1  ï   Ï    ¿     C     L     Ö     Ü  k   ã  :  O  ¨     ×   3       ±   £  e   U  S   »              -   ®    Any channel layer that conforms to the :doc:`ASGI spec <asgi>` can be used by Django; just set ``BACKEND`` to the class to instantiate and ``CONFIG`` to a dict of keyword arguments to initialize the class with. As it uses shared memory, it does not require any additional servers running to get working, and is quicker than any network-based channel layer. However, it can only run between processes on the same machine. By default, it will attempt to connect to a Redis server on ``localhost:6379``, but you can override this with the ``hosts`` key in its config:: Channel Layer Types For normal channels, since any worker can service any channel request, messages are simply distributed randomly among all possible servers, and workers will pick a single server to listen to. Note that if you run more Redis servers than workers, it's very likely that some servers will not have workers listening to them; we recommend you always have at least ten workers for each Redis server to ensure good distribution. Workers will, however, change server periodically (every five seconds or so) so queued messages should eventually get a response. IPC In-memory Its path is ``asgiref.inmemory.ChannelLayer``. If you try and use this channel layer with ``runworker``, it will exit, as it does not support cross-process communication. Multiple choices of backend are available, to fill different tradeoffs of complexity, throughput and scalability. You can also write your own backend if you wish; the spec they confirm to is called :doc:`ASGI <asgi>`. Any ASGI-compliant channel layer can be used. Note that if you change the set of sharding servers you will need to restart all interface servers and workers with the new set before anything works, and any in-flight messages will be lost (even with persistence, some will); the consistent hashing model relies on all running clients having the same settings. Any misconfigured interface server or worker will drop some or all messages. RabbitMQ RabbitMQ layer is comparable to Redis in terms of latency and throughput.  It can work with single RabbitMQ node and with Erlang cluster. Redis Sharding The IPC backend uses POSIX shared memory segments and semaphores in order to allow different processes on the same machine to communicate with each other. The IPC layer only communicates between processes on the same machine, and while you might initially be tempted to run a cluster of machines all with their own IPC-based set of processes, this will result in groups not working properly; events sent to a group will only go to those channels that joined the group on the same machine. This backend is for single-machine deployments only. The Redis layer is the recommended backend to run Channels with, as it supports both high throughput on a single Redis server as well as the ability to run against a set of Redis servers in a sharded mode. The in-memory layer is only useful when running the protocol server and the worker server in a single process; the most common case of this is ``runserver``, where a server thread, this channel layer, and worker thread all co-exist inside the same python process. The interface channel layers present to Django and other software that communicates over them is codified in a specification called :doc:`ASGI <asgi>`. The sharding model is based on consistent hashing - in particular, :ref:`response channels <channel-types>` are hashed and used to pick a single Redis server that both the interface server and the worker will use. This layer has complete `documentation <http://asgi-rabbitmq.readthedocs.io/en/latest/>`_ on its own. To use it you also need provide link to the virtual host with granted permissions:: To use the Redis layer, simply install it from PyPI (it lives in a separate package, as we didn't want to force a dependency on the redis-py for the main install):: Writing Custom Channel Layers You need to install layer package from PyPI:: Project-Id-Version: test 0.0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-06-21 02:56+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: Jason <chairco@gmail.com>, 2017
Language: zh_Hant_TW
Language-Team: Chinese (Taiwan) (https://www.transifex.com/django-channels-tw-docs/teams/72101/zh_TW/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 Any channel layer that conforms to the :doc:`ASGI spec <asgi>` can be used by Django; just set ``BACKEND`` to the class to instantiate and ``CONFIG`` to a dict of keyword arguments to initialize the class with. ç±æ¼å®ä½¿ç¨å±äº«å§å­ï¼å®ä¸éè¦ä»»ä½é¡å¤çæåå¨éè¡ä¾å·¥ä½ï¼ä¸¦ä¸å¿«æ¼ä»»ä½åºæ¼ç¶²çµ¡çééå±¤ãä½æ¯ï¼å®åªè½å¨åä¸å°æ©å¨ä¸çé²ç¨ä¹ééè¡ã é»èªææ³ä¸ï¼å®å°åè©¦é£æ¥å° ``localhost:6379`` ç Redis æåå¨ï¼ä½æ¯ä½ å¯ä»¥ç¨ ``hosts`` åè¤å¯«å®ç config:: ééå±¤é¡å å°æ¼æ­£å¸¸ä¿¡éï¼ç±æ¼ä»»ä½å·¥ä½èé½å¯ä»¥æåä»»ä½ä¿¡éè«æ±ï¼æä»¥æ¶æ¯ç°¡å®å°å¨ææå¯è½çæåå¨ä¹éåä½ï¼å·¥ä½èå°é¸æå®åæåå¨ä¾æ¶è½ãæ³¨æï¼å¦æä½ éè¡ç Redis æåå¨æ¯ worker å¤ï¼å¾å¯è½æäºæåå¨æ²æå·¥ä½ç·ç¨ç£è½å®å;æåå»ºè­°æ¨å§çµçºæ¯å Redis æåå¨è³å°æååå·¥ä½ç·ç¨ï¼ä»¥ç¢ºä¿è¯å¥½çåç¼ãç¶èï¼å·¥ä½èå°å®æï¼æ¯äºç§å·¦å³ï¼æ¹è®æåå¨ï¼å æ­¤æéçæ¶æ¯æè©²æçµå¾å°é¿æã IPC In-memory å®çè·¯å¾æ¯``asgiref.inmemory.ChannelLayer``ãå¦æä½ åè©¦å``runworker``ä½¿ç¨éåééå±¤ï¼å®å°éåºï¼å çºå®ä¸æ¯æè·¨é²ç¨éä¿¡ã å¯ä»¥é¸æå¤ç¨®å¾ç«¯ï¼ä»¥æ»¿è¶³è¤éæ§ï¼ååéåå¯æ´å±æ§çä¸åæè¡·ãä½ ä¹å¯ä»¥å¯«ä½ èªå·±çå¾ç«¯ï¼å¦æä½ é¡æï¼ä»åç¢ºèªçè¦ç¯è¢«ç¨±çº :doc:`ASGI <asgi>`ãå¯ä»¥ä½¿ç¨ä»»ä½ç¬¦åASGIçä¿¡éå±¤ã è«æ³¨æï¼å¦ææ´æ¹åçæåå¨éï¼æ¨éè¦å¨ä»»ä½å·¥ä½ä¹åéæ°ååæææ¥å£æåå¨åå·ææ°éçå·¥ä½ç·ç¨ï¼ä¸¦ä¸ä»»ä½æ­£å¨å³è¼¸çæ¶æ¯é½å°ä¸å¤±ï¼å³ä½¿ææä¹æ§ï¼ä¹ææï¼ãä¸è´æ§åå¸æ¨¡åä¾è³´æ¼å·æç¸åè¨­ç½®çææéè¡çå®¢æ¶ç«¯ãä»»ä½éç½®é¯èª¤çæ¥å£æåå¨æå·¥ä½ç¨åºå°åªé¤é¨åæå¨é¨æ¶æ¯ã RabbitMQ RabbitMQ layer is comparable to Redis in terms of latency and throughput.  It can work with single RabbitMQ node and with Erlang cluster. Redis åç IPC å¾ç«¯ä½¿ç¨ POSIX å±äº«å§å­æ®µåä¿¡èéï¼ä»¥åè¨±åä¸æ©å¨ä¸çä¸åé²ç¨ç¸äºéä¿¡ã IPC å±¤åªå¨åä¸å°æ©å¨ä¸çé²ç¨ä¹éé²è¡éä¿¡ï¼éç¶æåå¯è½æè©¦åéè¡ä¸çµå·æèªå·±çåºæ¼IPCçé²ç¨éåçæ©å¨ï¼ä½éæå°è´çµç¡æ³æ­£å¸¸å·¥ä½;ç¼éå°ç¾¤çµçäºä»¶å°åªæè½å°å¨åä¸å°è¨ç®æ©ä¸å å¥ç¾¤çµçé£äºé »éãæ­¤å¾ç«¯åç¨æ¼å®æ©é¨ç½²ã Redis å±¤æ¯éè¡ Channels çæ¨è¦å¾ç«¯ï¼å çºå®æ¯æå®å Redis æåå¨ä¸çé«ååéä»¥åå¨åçæ¨¡å¼ä¸å°ä¸çµ Redis æåå¨éè¡çè½åã in-memory å±¤åå¨å®åé²ç¨ä¸­éè¡åè­°æåå¨åå·¥ä½æåå¨ææç¨;æå¸¸è¦çææ³æ¯``runserver``ï¼å¶ä¸­æåå¨ç·ç¨ï¼éåééå±¤åå·¥ä½ç·ç¨é½å¨åä¸å python é²ç¨å§å±å­ã The interface channel layers present to Django and other software that communicates over them is codified in a specification called :doc:`ASGI <asgi>`. åçæ¨¡ååºæ¼ä¸è´æ§æ£å - ç¹å¥æ¯ :ref:`response channels <channel-types>` è¢«æ£åï¼ç¨æ¼é¸ææ¥å£æåå¨å worker é½å°ä½¿ç¨çå®å Redis æåå¨ã This layer has complete `documentation <http://asgi-rabbitmq.readthedocs.io/en/latest/>`_ on its own. To use it you also need provide link to the virtual host with granted permissions:: è¦ä½¿ç¨ Redis å±¤ï¼åªéå¾ PyPI å®è£å® (å®æ¾å¨ä¸åå®ç¨çåï¼å çºæåä¸æ³å¼·å¶ä¾è³´æ¼ redis-py ä¸»å®è£):: ç·¨å¯«èªå®ç¾©ééå±¤ You need to install layer package from PyPI:: 