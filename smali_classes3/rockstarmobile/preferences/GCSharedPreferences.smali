.class public Lrockstarmobile/preferences/GCSharedPreferences;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/preferences/GCSharedPreferences$a;
    }
.end annotation


# static fields
.field private static final log:Lrockstarmobile/utilities/Log;


# instance fields
.field _keyValueCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _writeLock:Ljava/lang/Object;

.field private _writeSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lrockstarmobile/preferences/GCSharedPreferences$a;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field gcproviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final myauthority:Ljava/lang/String;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SharedPreferences"

    invoke-direct {v0, v3, v1, v2, v2}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lrockstarmobile/preferences/GCSharedPreferences;->log:Lrockstarmobile/utilities/Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeSets:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_keyValueCache:Ljava/util/HashMap;

    .line 77
    iput-object p1, p0, Lrockstarmobile/preferences/GCSharedPreferences;->context:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/preferences/GCSharedPreferences;->resolver:Landroid/content/ContentResolver;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".rockstarprovider"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/preferences/GCSharedPreferences;->myauthority:Ljava/lang/String;

    .line 81
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lrockstarmobile/preferences/GCSharedPreferences$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lrockstarmobile/preferences/GCSharedPreferences$$ExternalSyntheticLambda0;-><init>(Lrockstarmobile/preferences/GCSharedPreferences;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 127
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createUriForAuthority(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/preferences"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getGameClubContentProviderAuthorities(Ljava/lang/StringBuffer;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrockstarmobile/preferences/GCSharedPreferences;->gcproviders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 6
    :try_start_0
    iget-object v4, p0, Lrockstarmobile/preferences/GCSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 7
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v5, :cond_1

    .line 9
    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    if-eqz v8, :cond_2

    .line 10
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v9, :cond_2

    const-string v10, ".rockstarprovider"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 11
    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 17
    sget-object v5, Lrockstarmobile/preferences/GCSharedPreferences;->log:Lrockstarmobile/utilities/Log;

    const-string v6, "Unable to get Rockstar mobile providers"

    invoke-virtual {v5, v6, v4, v3}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 19
    :cond_3
    iput-object v2, p0, Lrockstarmobile/preferences/GCSharedPreferences;->gcproviders:Ljava/util/ArrayList;

    .line 20
    const-string v2, "LIST:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 22
    const-string v0, "ms "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    :cond_4
    iget-object p1, p0, Lrockstarmobile/preferences/GCSharedPreferences;->gcproviders:Ljava/util/ArrayList;

    return-object p1
.end method

.method private getValueForAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "ms "

    const-string v4, ":"

    const-string v5, "GET "

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5
    invoke-direct/range {p0 .. p1}, Lrockstarmobile/preferences/GCSharedPreferences;->createUriForAuthority(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v15, p0

    .line 7
    :try_start_0
    iget-object v8, v15, Lrockstarmobile/preferences/GCSharedPreferences;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v8, :cond_0

    if-eqz v8, :cond_4

    .line 28
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->close()V

    goto/16 :goto_1

    :cond_0
    const/4 v10, 0x2

    .line 35
    :try_start_1
    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "key"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string v11, "value"

    const/4 v13, 0x1

    aput-object v11, v10, v13

    const-string v11, "key"

    move/from16 v16, v12

    new-array v12, v13, [Ljava/lang/String;

    aput-object v0, v12, v16

    move/from16 v17, v13

    const/4 v13, 0x0

    move/from16 v14, v16

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_2

    .line 37
    :goto_0
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 38
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    .line 39
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 40
    sget-object v13, Lrockstarmobile/preferences/GCSharedPreferences;->log:Lrockstarmobile/utilities/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "read cursor "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_1

    .line 49
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 51
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->close()V

    move-object v14, v12

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v14, v9

    goto :goto_4

    :cond_2
    if-eqz v9, :cond_3

    .line 52
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_3
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->close()V

    :cond_4
    :goto_1
    const/4 v14, 0x0

    .line 30
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v14

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    const/4 v8, 0x0

    :goto_3
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_5

    .line 55
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v8, :cond_6

    .line 57
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->close()V

    .line 59
    :cond_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    throw v0
.end method

.method private setValueForAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeSets:Ljava/util/ArrayList;

    new-instance v2, Lrockstarmobile/preferences/GCSharedPreferences$a;

    invoke-direct {v2, p1, p2, p3}, Lrockstarmobile/preferences/GCSharedPreferences$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeLock:Ljava/lang/Object;

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


# virtual methods
.method public clearContentProviders()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_keyValueCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lrockstarmobile/preferences/GCSharedPreferences;->gcproviders:Ljava/util/ArrayList;

    return-void
.end method

.method public getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "err"

    .line 1
    iget-object v0, v1, Lrockstarmobile/preferences/GCSharedPreferences;->_keyValueCache:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 9
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 11
    :try_start_0
    iget-object v0, v1, Lrockstarmobile/preferences/GCSharedPreferences;->myauthority:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v6}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v0, :cond_1

    move-object v9, v0

    goto :goto_0

    :cond_1
    move-object/from16 v9, p2

    .line 16
    :goto_0
    :try_start_1
    invoke-direct {v1, v6}, Lrockstarmobile/preferences/GCSharedPreferences;->getGameClubContentProviderAuthorities(Ljava/lang/StringBuffer;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_1
    if-ge v0, v11, :cond_3

    :try_start_2
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v0, 0x1

    check-cast v14, Ljava/lang/String;

    .line 17
    iget-object v0, v1, Lrockstarmobile/preferences/GCSharedPreferences;->myauthority:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v0, :cond_2

    .line 19
    :try_start_3
    sget-object v0, Lrockstarmobile/preferences/GCSharedPreferences;->log:Lrockstarmobile/utilities/Log;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v16, 0x1

    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to get shared preference ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 20
    invoke-direct {v1, v14, v2, v6}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v13, v13, 0x1

    if-eqz v0, :cond_2

    move-object v9, v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/16 v16, 0x1

    .line 27
    :goto_2
    :try_start_5
    sget-object v7, Lrockstarmobile/preferences/GCSharedPreferences;->log:Lrockstarmobile/utilities/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_3
    move v0, v15

    goto :goto_1

    :catch_3
    move-exception v0

    const/16 v16, 0x1

    goto :goto_4

    :catch_4
    move-exception v0

    const/16 v16, 0x1

    move/from16 v13, v16

    const/4 v12, 0x0

    goto :goto_4

    :catch_5
    move-exception v0

    const/16 v16, 0x1

    move-object/from16 v9, p2

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 33
    :goto_4
    sget-object v7, Lrockstarmobile/preferences/GCSharedPreferences;->log:Lrockstarmobile/utilities/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    add-int/lit8 v12, v12, 0x1

    :cond_3
    :goto_5
    if-nez v13, :cond_4

    .line 37
    sget-object v0, Lrockstarmobile/preferences/GCSharedPreferences;->log:Lrockstarmobile/utilities/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "All content providers ("

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ") failed to provide shared preference "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    .line 39
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    const-wide/16 v3, 0x1f4

    cmp-long v0, v7, v3

    if-lez v0, :cond_5

    .line 41
    sget-object v0, Lrockstarmobile/preferences/GCSharedPreferences;->log:Lrockstarmobile/utilities/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Excessive time ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms) used to look up shared property with key ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    :cond_5
    if-eqz v9, :cond_6

    .line 47
    iget-object v0, v1, Lrockstarmobile/preferences/GCSharedPreferences;->_keyValueCache:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 48
    iget-object v0, v1, Lrockstarmobile/preferences/GCSharedPreferences;->_keyValueCache:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v1, v2, v9}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v9
.end method

.method synthetic lambda$new$0$rockstarmobile-preferences-GCSharedPreferences()V
    .locals 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_1
    :try_start_0
    iget-object v1, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    const/4 v2, 0x0

    if-ltz v1, :cond_4

    iget-object v3, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 10
    iget-object v3, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrockstarmobile/preferences/GCSharedPreferences$a;

    :goto_3
    if-ge v2, v1, :cond_3

    .line 12
    iget-object v4, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrockstarmobile/preferences/GCSharedPreferences$a;

    iget-object v4, v4, Lrockstarmobile/preferences/GCSharedPreferences$a;->b:Ljava/lang/String;

    iget-object v5, v3, Lrockstarmobile/preferences/GCSharedPreferences$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrockstarmobile/preferences/GCSharedPreferences$a;

    iget-object v4, v4, Lrockstarmobile/preferences/GCSharedPreferences$a;->a:Ljava/lang/String;

    iget-object v5, v3, Lrockstarmobile/preferences/GCSharedPreferences$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    sget-object v4, Lrockstarmobile/preferences/GCSharedPreferences;->log:Lrockstarmobile/utilities/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing duplicate key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lrockstarmobile/preferences/GCSharedPreferences$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for auth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lrockstarmobile/preferences/GCSharedPreferences$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 14
    iget-object v4, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 20
    :cond_4
    iget-object v1, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_writeSets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrockstarmobile/preferences/GCSharedPreferences$a;

    .line 21
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    iget-object v0, v1, Lrockstarmobile/preferences/GCSharedPreferences$a;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lrockstarmobile/preferences/GCSharedPreferences;->createUriForAuthority(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    .line 26
    :try_start_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 27
    const-string v5, "key"

    iget-object v6, v1, Lrockstarmobile/preferences/GCSharedPreferences$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v5, "value"

    iget-object v6, v1, Lrockstarmobile/preferences/GCSharedPreferences$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v5, p0, Lrockstarmobile/preferences/GCSharedPreferences;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 31
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    if-eqz v3, :cond_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 38
    :try_start_4
    sget-object v4, Lrockstarmobile/preferences/GCSharedPreferences;->log:Lrockstarmobile/utilities/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lrockstarmobile/preferences/GCSharedPreferences$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lrockstarmobile/preferences/GCSharedPreferences$a;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v1, Lrockstarmobile/preferences/GCSharedPreferences$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v0, v2}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    .line 37
    :goto_4
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    goto/16 :goto_0

    :goto_5
    if-eqz v3, :cond_6

    .line 42
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    .line 44
    :cond_6
    throw v0

    :catchall_1
    move-exception v1

    .line 45
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public setValueForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lrockstarmobile/preferences/GCSharedPreferences;->getGameClubContentProviderAuthorities(Ljava/lang/StringBuffer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const-string v6, "="

    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    check-cast v7, Ljava/lang/String;

    .line 4
    :try_start_0
    sget-object v8, Lrockstarmobile/preferences/GCSharedPreferences;->log:Lrockstarmobile/utilities/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to insert new shared preference ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v7, p1, p2}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    .line 12
    sget-object v0, Lrockstarmobile/preferences/GCSharedPreferences;->log:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "All content providers ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") failed to insert new shared preference "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lrockstarmobile/preferences/GCSharedPreferences;->_keyValueCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
