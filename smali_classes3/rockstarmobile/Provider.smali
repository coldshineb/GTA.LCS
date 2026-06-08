.class public Lrockstarmobile/Provider;
.super Landroid/content/ContentProvider;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# static fields
.field public static final POSTFIX:Ljava/lang/String; = ".rockstarprovider"

.field public static final TABLE_NAME:Ljava/lang/String; = "preferences"

.field private static log:Lrockstarmobile/utilities/Log;


# instance fields
.field private _db:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "Provider"

    invoke-direct {v0, v1}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrockstarmobile/Provider;->log:Lrockstarmobile/utilities/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, "application/text"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 1
    iget-object v0, p0, Lrockstarmobile/Provider;->_db:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-string v3, "preferences"

    invoke-virtual {v0, v3, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-object p1
.end method

.method public onCreate()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lrockstarmobile/utilities/Log;->init(Landroid/content/Context;)V

    .line 3
    sget-object v0, Lrockstarmobile/Provider;->log:Lrockstarmobile/utilities/Log;

    const-string v1, "Opening rockstarmobile.db"

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 5
    :try_start_0
    new-instance v2, Lrockstarmobile/Provider$a;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "rockstarmobile.db"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p0

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lrockstarmobile/Provider$a;-><init>(Lrockstarmobile/Provider;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, v3, Lrockstarmobile/Provider;->_db:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, p0

    .line 17
    :goto_0
    sget-object v2, Lrockstarmobile/Provider;->log:Lrockstarmobile/utilities/Log;

    const-string v4, "Error opening rockstarmobile.db"

    invoke-virtual {v2, v4, v0, v1}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 21
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 22
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    sput-boolean v0, Lrockstarmobile/GCAudioLogic;->otherAudioPlayingAtLaunch:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 24
    sget-object v2, Lrockstarmobile/Provider;->log:Lrockstarmobile/utilities/Log;

    const-string v4, "Unable to get other audio state at launch"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v5}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_2
    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "key"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lrockstarmobile/Provider;->_db:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 p1, 0x0

    new-array v4, p1, [Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "CASE WHEN key = \'"

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p4, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' THEN 1 ELSE 2 END, key"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "preferences"

    const-string v3, ""

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
