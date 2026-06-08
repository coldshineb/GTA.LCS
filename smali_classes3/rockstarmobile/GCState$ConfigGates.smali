.class public Lrockstarmobile/GCState$ConfigGates;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigGates"
.end annotation


# instance fields
.field public final config:Lrockstarmobile/GCConfig$GatesConfig;

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrockstarmobile/GCConfig$GatesConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrockstarmobile/GCState$ConfigGates;->version:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lrockstarmobile/GCState$ConfigGates;->config:Lrockstarmobile/GCConfig$GatesConfig;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCState$ConfigGates;->version:Ljava/lang/String;

    .line 6
    new-instance v0, Lrockstarmobile/GCConfig$GatesConfig;

    const-string v1, "config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lrockstarmobile/GCConfig$GatesConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lrockstarmobile/GCState$ConfigGates;->config:Lrockstarmobile/GCConfig$GatesConfig;

    return-void
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lrockstarmobile/GCState$ConfigGates;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lrockstarmobile/GCState$ConfigGates;->config:Lrockstarmobile/GCConfig$GatesConfig;

    invoke-virtual {v1}, Lrockstarmobile/GCConfig$GatesConfig;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
