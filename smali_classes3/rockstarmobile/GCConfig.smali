.class public Lrockstarmobile/GCConfig;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/GCConfig$GamesConfig;,
        Lrockstarmobile/GCConfig$GeneralConfig;,
        Lrockstarmobile/GCConfig$GooglePlayConfig;,
        Lrockstarmobile/GCConfig$GatesConfig;,
        Lrockstarmobile/GCConfig$GateConfig;
    }
.end annotation


# static fields
.field public static C:Lrockstarmobile/GCConfig;

.field private static log:Lrockstarmobile/utilities/Log;

.field public static override:Ljava/lang/String;


# instance fields
.field public final games:Lrockstarmobile/GCConfig$GamesConfig;

.field public final gates:Lrockstarmobile/GCConfig$GateConfig;

.field public gatesconfig:Lrockstarmobile/GCConfig$GatesConfig;

.field public final general:Lrockstarmobile/GCConfig$GeneralConfig;

.field public final googleplay:Lrockstarmobile/GCConfig$GooglePlayConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "GCConfig"

    invoke-direct {v0, v1}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrockstarmobile/GCConfig;->log:Lrockstarmobile/utilities/Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    :try_start_0
    const-string v0, "SDK.config"

    invoke-static {p1, v0}, Lrockstarmobile/GCFileSystem;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    sget-object v2, Lrockstarmobile/GCConfig;->override:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v1, Lrockstarmobile/GCConfig$GeneralConfig;

    const-string v2, "general"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lrockstarmobile/GCConfig$GeneralConfig;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    .line 18
    new-instance p1, Lrockstarmobile/GCConfig$GooglePlayConfig;

    const-string v1, "googleplay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lrockstarmobile/GCConfig$GooglePlayConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lrockstarmobile/GCConfig;->googleplay:Lrockstarmobile/GCConfig$GooglePlayConfig;

    .line 19
    invoke-static {}, Lrockstarmobile/GCState;->getGatesConfigJSON()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v1, Lrockstarmobile/GCConfig$GatesConfig;

    if-eqz p1, :cond_3

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 21
    :cond_3
    :goto_2
    const-string p1, "gatesconfig"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_3
    invoke-direct {v1, v2}, Lrockstarmobile/GCConfig$GatesConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lrockstarmobile/GCConfig;->gatesconfig:Lrockstarmobile/GCConfig$GatesConfig;

    .line 22
    new-instance p1, Lrockstarmobile/GCConfig$GateConfig;

    const-string v1, "gates"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lrockstarmobile/GCConfig$GateConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lrockstarmobile/GCConfig;->gates:Lrockstarmobile/GCConfig$GateConfig;

    .line 23
    new-instance p1, Lrockstarmobile/GCConfig$GamesConfig;

    const-string v1, "games"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lrockstarmobile/GCConfig$GamesConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lrockstarmobile/GCConfig;->games:Lrockstarmobile/GCConfig$GamesConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Lrockstarmobile/GCException;

    const-string v1, "Unable to load SDK.config"

    invoke-direct {v0, v1, p1}, Lrockstarmobile/GCException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private static getJSONStringSet(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static isEmulator()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK built for x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static setup(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lrockstarmobile/GCConfig;

    invoke-direct {v0, p0}, Lrockstarmobile/GCConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getGame()Lrockstarmobile/GCConfig$GamesConfig$GameConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCConfig;->games:Lrockstarmobile/GCConfig$GamesConfig;

    iget-object v1, p0, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig$GeneralConfig;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lrockstarmobile/GCConfig$GamesConfig;->get(Ljava/lang/String;)Lrockstarmobile/GCConfig$GamesConfig$GameConfig;

    move-result-object v0

    return-object v0
.end method
