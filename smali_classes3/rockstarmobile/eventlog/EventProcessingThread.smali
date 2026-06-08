.class public Lrockstarmobile/eventlog/EventProcessingThread;
.super Ljava/lang/Thread;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# instance fields
.field mEventLog:Lrockstarmobile/eventlog/GCEventLog;


# direct methods
.method public constructor <init>(Lrockstarmobile/eventlog/GCEventLog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    iput-object p1, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    .line 5
    const-string p1, "ProcessingThread"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    iget-object v3, v0, Lrockstarmobile/eventlog/GCEventLog;->processLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iget-object v0, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    iget-object v4, v0, Lrockstarmobile/eventlog/GCEventLog;->removeIds:Ljava/util/HashSet;

    .line 3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v0, Lrockstarmobile/eventlog/GCEventLog;->removeIds:Ljava/util/HashSet;

    .line 4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    iget-object v0, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    iget-object v0, v0, Lrockstarmobile/eventlog/GCEventLog;->db:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 7
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 8
    sget-object v3, Lrockstarmobile/eventlog/GCEventLog;->log:Lrockstarmobile/utilities/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleting event with id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 9
    const-string v3, "gameclubevents"

    const-string v8, "id=?"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v1

    invoke-virtual {v5, v3, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    iget-object v3, v0, Lrockstarmobile/eventlog/GCEventLog;->processLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    :try_start_3
    sget-object v0, Lrockstarmobile/eventlog/GCEventLog;->log:Lrockstarmobile/utilities/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selecting events after id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    iget-wide v7, v7, Lrockstarmobile/eventlog/GCEventLog;->startFromId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 15
    const-string v6, "gameclubevents"

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v7, v1

    const-string v0, "name"

    aput-object v0, v7, v4

    const-string v0, "args"

    const/4 v13, 0x2

    aput-object v0, v7, v13

    const-string v8, "id>?"

    iget-object v0, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    iget-wide v9, v0, Lrockstarmobile/eventlog/GCEventLog;->startFromId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    new-array v9, v4, [Ljava/lang/String;

    aput-object v0, v9, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 17
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    iget-object v0, v0, Lrockstarmobile/eventlog/GCEventLog;->delegate:Lrockstarmobile/eventlog/GCEventLog$Delegate;

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 21
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :goto_2
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 25
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 32
    :try_start_5
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 34
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 35
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 36
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 40
    :catch_0
    :try_start_6
    const-string v8, "Json"

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_2
    new-instance v3, Lrockstarmobile/eventlog/GCEventLog$Event;

    invoke-direct {v3, v5, v6, v0, v7}, Lrockstarmobile/eventlog/GCEventLog$Event;-><init>(JLjava/lang/String;Ljava/util/Map;)V

    .line 45
    sget-object v0, Lrockstarmobile/eventlog/GCEventLog;->log:Lrockstarmobile/utilities/Log;

    const-string v5, "Passing event id %d (%s) to delegate - Event is %s secs old"

    iget-wide v6, v3, Lrockstarmobile/eventlog/GCEventLog$Event;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v3, Lrockstarmobile/eventlog/GCEventLog$Event;->name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v3, Lrockstarmobile/eventlog/GCEventLog$Event;->id:J

    sub-long/2addr v8, v10

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    iget-object v0, v0, Lrockstarmobile/eventlog/GCEventLog;->delegate:Lrockstarmobile/eventlog/GCEventLog$Delegate;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    xor-int/2addr v5, v4

    invoke-interface {v0, v3, v5}, Lrockstarmobile/eventlog/GCEventLog$Delegate;->onEvent(Lrockstarmobile/eventlog/GCEventLog$Event;Z)V

    .line 50
    iget-object v0, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    iget-wide v5, v3, Lrockstarmobile/eventlog/GCEventLog$Event;->id:J

    iput-wide v5, v0, Lrockstarmobile/eventlog/GCEventLog;->startFromId:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 57
    :cond_3
    :goto_4
    :try_start_7
    iget-object v0, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    iget-object v0, v0, Lrockstarmobile/eventlog/GCEventLog;->processLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 58
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 95
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 96
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_1
    move-exception v0

    .line 97
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 146
    :try_start_c
    sget-object v3, Lrockstarmobile/eventlog/GCEventLog;->log:Lrockstarmobile/utilities/Log;

    const-string v4, "Event processing thread crashed - will try again!"

    invoke-virtual {v3, v4, v0, v1}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v2, :cond_5

    .line 56
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_5
    :try_start_d
    iget-object v0, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    iget-object v2, v0, Lrockstarmobile/eventlog/GCEventLog;->processLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 156
    :try_start_e
    iget-object v0, p0, Lrockstarmobile/eventlog/EventProcessingThread;->mEventLog:Lrockstarmobile/eventlog/GCEventLog;

    iget-object v0, v0, Lrockstarmobile/eventlog/GCEventLog;->processLock:Ljava/lang/Object;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 157
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    .line 158
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    :catch_2
    move-exception v0

    .line 160
    sget-object v2, Lrockstarmobile/eventlog/GCEventLog;->log:Lrockstarmobile/utilities/Log;

    const-string v3, "Event processing thread wait was interrupted!"

    invoke-virtual {v2, v3, v0, v1}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto/16 :goto_0

    :goto_5
    if-eqz v2, :cond_6

    .line 161
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_6
    throw v0
.end method
