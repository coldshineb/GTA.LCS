.class Lrockstarmobile/eventlog/GCEventLog$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/eventlog/GCEventLog;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrockstarmobile/eventlog/GCEventLog;


# direct methods
.method constructor <init>(Lrockstarmobile/eventlog/GCEventLog;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/eventlog/GCEventLog$a;->a:Lrockstarmobile/eventlog/GCEventLog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    const-string v0, "gameclubevents"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CREATE TABLE %s (`id` INTEGER PRIMARY KEY, `name` TEXT NOT NULL, `args` TEXT NOT NULL);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
