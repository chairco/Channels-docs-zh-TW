��    
      l               �      �   �   �      �     �  `   �     D     Q  Z   W  �   �  �  x       �         
     )  `   2     �     �  Z   �  �      2.0.2 Release Notes As always, when updating Channels make sure to also update its dependencies (``asgiref`` and ``daphne``) as these also get their own bugfix updates, and some bugs that may appear to be part of Channels are actually in those packages. Backwards Incompatible Changes Bugfixes Channels 2.0.2 is a patch release of Channels, fixing a bug in the database connection handling. New Features None. SyncConsumer and all its descendant classes now close database connections when they exit. There is a new ``channels.db.database_sync_to_async`` wrapper that is like ``sync_to_async`` but also closes database connections for you. You can read more about usage in :doc:`/topics/databases`. Project-Id-Version: Channels-docs-zh_TW 2.1.1
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
 2.0.2 Release Notes As always, when updating Channels make sure to also update its dependencies (``asgiref`` and ``daphne``) as these also get their own bugfix updates, and some bugs that may appear to be part of Channels are actually in those packages. Backwards Incompatible Changes Bugfixes Channels 2.0.2 is a patch release of Channels, fixing a bug in the database connection handling. New Features None. SyncConsumer and all its descendant classes now close database connections when they exit. There is a new ``channels.db.database_sync_to_async`` wrapper that is like ``sync_to_async`` but also closes database connections for you. You can read more about usage in :doc:`/topics/databases`. 