.class public Lrockstarmobile/utilities/HttpAPI;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/utilities/HttpAPI$Error;,
        Lrockstarmobile/utilities/HttpAPI$RequestTask;,
        Lrockstarmobile/utilities/HttpAPI$Constructor;,
        Lrockstarmobile/utilities/HttpAPI$ErrorCallback;,
        Lrockstarmobile/utilities/HttpAPI$SuccessCallback;
    }
.end annotation


# static fields
.field public static UserAgent:Ljava/lang/String;

.field private static final log:Lrockstarmobile/utilities/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "HttpAPI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lrockstarmobile/utilities/HttpAPI;->log:Lrockstarmobile/utilities/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lrockstarmobile/utilities/Log;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/utilities/HttpAPI;->log:Lrockstarmobile/utilities/Log;

    return-object v0
.end method

.method public static getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
