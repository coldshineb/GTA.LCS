.class public Lrockstarmobile/eventlog/GCEventLog;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/eventlog/GCEventLog$Event;,
        Lrockstarmobile/eventlog/GCEventLog$Delegate;
    }
.end annotation


# static fields
.field static final TABLE:Ljava/lang/String; = "gameclubevents"

.field private static id:J

.field private static final idLock:Ljava/lang/Object;

.field static final log:Lrockstarmobile/utilities/Log;


# instance fields
.field final db:Landroid/database/sqlite/SQLiteOpenHelper;

.field delegate:Lrockstarmobile/eventlog/GCEventLog$Delegate;

.field final processLock:Ljava/lang/Object;

.field removeIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field startFromId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrockstarmobile/eventlog/GCEventLog;->idLock:Ljava/lang/Object;

    .line 6
    new-instance v0, Lrockstarmobile/utilities/Log;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Eventlog"

    invoke-direct {v0, v3, v1, v2, v2}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lrockstarmobile/eventlog/GCEventLog;->log:Lrockstarmobile/utilities/Log;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrockstarmobile/eventlog/GCEventLog;->processLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lrockstarmobile/eventlog/GCEventLog;->removeIds:Ljava/util/HashSet;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lrockstarmobile/eventlog/GCEventLog;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/eventlog/GCEventLog;->db:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz p2, :cond_0

    .line 14
    new-instance p1, Lrockstarmobile/eventlog/EventProcessingThread;

    invoke-direct {p1, p0}, Lrockstarmobile/eventlog/EventProcessingThread;-><init>(Lrockstarmobile/eventlog/GCEventLog;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 6

    .line 1
    new-instance v0, Lrockstarmobile/eventlog/GCEventLog$a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v3, "gameclubevents"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrockstarmobile/eventlog/GCEventLog$a;-><init>(Lrockstarmobile/eventlog/GCEventLog;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-object v0
.end method

.method private varargs track(ZLjava/lang/String;[Ljava/lang/Object;)J
    .locals 5

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object v0, p3, v1

    instance-of v3, v0, Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 5
    move-object p1, v0

    check-cast p1, Ljava/util/Map;

    goto :goto_1

    .line 8
    :cond_0
    array-length v0, p3

    rem-int/lit8 v0, v0, 0x2

    if-eq v0, v2, :cond_4

    .line 13
    :goto_0
    array-length v0, p3

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    .line 14
    aget-object v0, p3, v0

    .line 15
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_1

    instance-of v2, v0, Ljava/lang/Double;

    if-nez v2, :cond_1

    instance-of v2, v0, Ljava/lang/Float;

    if-nez v2, :cond_1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_1
    aget-object v2, p3, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 23
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    sget-object p3, Lrockstarmobile/eventlog/GCEventLog;->idLock:Ljava/lang/Object;

    monitor-enter p3

    .line 25
    :try_start_0
    sget-wide v2, Lrockstarmobile/eventlog/GCEventLog;->id:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    .line 28
    :cond_3
    sput-wide v0, Lrockstarmobile/eventlog/GCEventLog;->id:J

    .line 29
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    .line 33
    sget-object v2, Lrockstarmobile/eventlog/GCEventLog;->log:Lrockstarmobile/utilities/Log;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {p2, p3, v3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v3, "%s %s #%d"

    invoke-static {v3, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 34
    new-instance p3, Lrockstarmobile/eventlog/GCEventLog$Event;

    invoke-direct {p3, v0, v1, p2, p1}, Lrockstarmobile/eventlog/GCEventLog$Event;-><init>(JLjava/lang/String;Ljava/util/Map;)V

    .line 37
    iget-object p1, p0, Lrockstarmobile/eventlog/GCEventLog;->processLock:Ljava/lang/Object;

    monitor-enter p1

    .line 38
    :try_start_1
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 39
    const-string v0, "id"

    iget-wide v1, p3, Lrockstarmobile/eventlog/GCEventLog$Event;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    const-string v0, "name"

    iget-object v1, p3, Lrockstarmobile/eventlog/GCEventLog$Event;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "args"

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p3, Lrockstarmobile/eventlog/GCEventLog$Event;->args:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lrockstarmobile/eventlog/GCEventLog;->db:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "gameclubevents"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 45
    iget-object p2, p0, Lrockstarmobile/eventlog/GCEventLog;->processLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 46
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    iget-wide p1, p3, Lrockstarmobile/eventlog/GCEventLog$Event;->id:J

    return-wide p1

    :catchall_0
    move-exception p2

    .line 65
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 66
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 67
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public logCustomGameEvent(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p6

    const-string p7, "Game %s"

    invoke-static {p7, p6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p7

    const/4 p9, 0x0

    const/4 p10, -0x1

    sparse-switch p7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p7, "Level Started"

    invoke-virtual {p1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p10, 0x6

    goto :goto_0

    :sswitch_1
    const-string p7, "Powerup"

    invoke-virtual {p1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p10, 0x5

    goto :goto_0

    :sswitch_2
    const-string p7, "Level Completed"

    invoke-virtual {p1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p10, 0x4

    goto :goto_0

    :sswitch_3
    const-string p7, "onboarding.complete"

    invoke-virtual {p1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p10, 0x3

    goto :goto_0

    :sswitch_4
    const-string p7, "Mode Tapped"

    invoke-virtual {p1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p10, 0x2

    goto :goto_0

    :sswitch_5
    const-string p7, "Mode Played"

    invoke-virtual {p1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p10, 0x1

    goto :goto_0

    :sswitch_6
    const-string p7, "Onboarding Step"

    invoke-virtual {p1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move p10, p9

    :goto_0
    const-string p1, "Level"

    const-string p7, ""

    packed-switch p10, :pswitch_data_0

    return-void

    :pswitch_0
    if-eq p8, p7, :cond_7

    goto :goto_1

    .line 8
    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p8

    :goto_1
    filled-new-array {p1, p8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p6, p1}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void

    .line 21
    :pswitch_1
    const-string p1, "Power"

    filled-new-array {p1, p8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p6, p1}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void

    :pswitch_2
    if-eq p8, p7, :cond_8

    goto :goto_2

    .line 22
    :cond_8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p8

    :goto_2
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Score"

    filled-new-array {p1, p8, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p6, p1}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void

    .line 23
    :pswitch_3
    new-array p1, p9, [Ljava/lang/Object;

    const-string p2, "Game Onboarding Completed"

    invoke-virtual {p0, p2, p1}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void

    .line 36
    :pswitch_4
    const-string p1, "Game Mode"

    filled-new-array {p1, p8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p6, p1}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void

    .line 37
    :pswitch_5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Step"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p6, p1}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6dc07a4f -> :sswitch_6
        -0x39613010 -> :sswitch_5
        -0x33222057 -> :sswitch_4
        0xb2a9bac -> :sswitch_3
        0x409bf86f -> :sswitch_2
        0x4c190240 -> :sswitch_1
        0x55887ba5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logPushToken(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/eventlog/GCEventLog;->log:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCM Push token registered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 2
    const-string v0, "Token"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Push Token Registered"

    invoke-virtual {p0, v0, p1}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void
.end method

.method public removeIds(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrockstarmobile/eventlog/GCEventLog;->processLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lrockstarmobile/eventlog/GCEventLog;->removeIds:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lrockstarmobile/eventlog/GCEventLog;->processLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDelegate(Lrockstarmobile/eventlog/GCEventLog$Delegate;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrockstarmobile/eventlog/GCEventLog;->processLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 2
    :try_start_0
    iput-wide v1, p0, Lrockstarmobile/eventlog/GCEventLog;->startFromId:J

    .line 3
    iput-object p1, p0, Lrockstarmobile/eventlog/GCEventLog;->delegate:Lrockstarmobile/eventlog/GCEventLog$Delegate;

    .line 4
    iget-object p1, p0, Lrockstarmobile/eventlog/GCEventLog;->processLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs track(Ljava/lang/String;[Ljava/lang/Object;)J
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lrockstarmobile/eventlog/GCEventLog;->track(ZLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method

.method public varargs trackInternalOnly(Ljava/lang/String;[Ljava/lang/Object;)J
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lrockstarmobile/eventlog/GCEventLog;->track(ZLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method
