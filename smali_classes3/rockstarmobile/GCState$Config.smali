.class public Lrockstarmobile/GCState$Config;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final events:Lrockstarmobile/GCState$ConfigEvents;

.field public final experiments:Lrockstarmobile/GCState$ConfigExperiments;

.field public final gameChallenges:Lrockstarmobile/GCState$ConfigGameChallenges;

.field public final gates:Lrockstarmobile/GCState$ConfigGates;

.field public final legacyUpgrade:Lrockstarmobile/GCState$ConfigLegacyUpgrade;

.field public final scorelists:Lrockstarmobile/GCState$ConfigScorelists;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lrockstarmobile/GCState$ConfigLegacyUpgrade;

    const-string v1, "legacyupgrade"

    invoke-static {p1, v1}, Lrockstarmobile/utilities/HttpAPI;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lrockstarmobile/GCState$ConfigLegacyUpgrade;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lrockstarmobile/GCState$Config;->legacyUpgrade:Lrockstarmobile/GCState$ConfigLegacyUpgrade;

    .line 16
    new-instance v0, Lrockstarmobile/GCState$ConfigExperiments;

    const-string v1, "experiments"

    invoke-static {p1, v1}, Lrockstarmobile/utilities/HttpAPI;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lrockstarmobile/GCState$ConfigExperiments;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lrockstarmobile/GCState$Config;->experiments:Lrockstarmobile/GCState$ConfigExperiments;

    .line 17
    new-instance v0, Lrockstarmobile/GCState$ConfigGates;

    const-string v1, "gates"

    invoke-static {p1, v1}, Lrockstarmobile/utilities/HttpAPI;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lrockstarmobile/GCState$ConfigGates;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lrockstarmobile/GCState$Config;->gates:Lrockstarmobile/GCState$ConfigGates;

    .line 18
    new-instance v0, Lrockstarmobile/GCState$ConfigGameChallenges;

    const-string v1, "gamechallenges"

    invoke-static {p1, v1}, Lrockstarmobile/utilities/HttpAPI;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lrockstarmobile/GCState$ConfigGameChallenges;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lrockstarmobile/GCState$Config;->gameChallenges:Lrockstarmobile/GCState$ConfigGameChallenges;

    .line 19
    new-instance v0, Lrockstarmobile/GCState$ConfigScorelists;

    const-string v1, "scorelists"

    invoke-static {p1, v1}, Lrockstarmobile/utilities/HttpAPI;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lrockstarmobile/GCState$ConfigScorelists;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lrockstarmobile/GCState$Config;->scorelists:Lrockstarmobile/GCState$ConfigScorelists;

    .line 20
    new-instance v0, Lrockstarmobile/GCState$ConfigEvents;

    const-string v1, "events"

    invoke-static {p1, v1}, Lrockstarmobile/utilities/HttpAPI;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lrockstarmobile/GCState$ConfigEvents;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lrockstarmobile/GCState$Config;->events:Lrockstarmobile/GCState$ConfigEvents;

    return-void
.end method

.method public constructor <init>(Lrockstarmobile/GCState$ConfigLegacyUpgrade;Lrockstarmobile/GCState$ConfigExperiments;Lrockstarmobile/GCState$ConfigGates;Lrockstarmobile/GCState$ConfigGameChallenges;Lrockstarmobile/GCState$ConfigScorelists;Lrockstarmobile/GCState$ConfigEvents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lrockstarmobile/GCState$Config;->legacyUpgrade:Lrockstarmobile/GCState$ConfigLegacyUpgrade;

    .line 6
    iput-object p2, p0, Lrockstarmobile/GCState$Config;->experiments:Lrockstarmobile/GCState$ConfigExperiments;

    .line 7
    iput-object p3, p0, Lrockstarmobile/GCState$Config;->gates:Lrockstarmobile/GCState$ConfigGates;

    .line 8
    iput-object p4, p0, Lrockstarmobile/GCState$Config;->gameChallenges:Lrockstarmobile/GCState$ConfigGameChallenges;

    .line 9
    iput-object p5, p0, Lrockstarmobile/GCState$Config;->scorelists:Lrockstarmobile/GCState$ConfigScorelists;

    .line 10
    iput-object p6, p0, Lrockstarmobile/GCState$Config;->events:Lrockstarmobile/GCState$ConfigEvents;

    return-void
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    sget-boolean v1, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lrockstarmobile/GCState$Config;->legacyUpgrade:Lrockstarmobile/GCState$ConfigLegacyUpgrade;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lrockstarmobile/GCState$ConfigLegacyUpgrade;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "legacyupgrade"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_0
    iget-object v1, p0, Lrockstarmobile/GCState$Config;->experiments:Lrockstarmobile/GCState$ConfigExperiments;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lrockstarmobile/GCState$ConfigExperiments;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "experiments"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_1
    iget-object v1, p0, Lrockstarmobile/GCState$Config;->gates:Lrockstarmobile/GCState$ConfigGates;

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v1}, Lrockstarmobile/GCState$ConfigGates;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "gates"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :cond_2
    iget-object v1, p0, Lrockstarmobile/GCState$Config;->gameChallenges:Lrockstarmobile/GCState$ConfigGameChallenges;

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v1}, Lrockstarmobile/GCState$ConfigGameChallenges;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "gamechallenges"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_3
    iget-object v1, p0, Lrockstarmobile/GCState$Config;->scorelists:Lrockstarmobile/GCState$ConfigScorelists;

    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {v1}, Lrockstarmobile/GCState$ConfigScorelists;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "scorelists"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    :cond_4
    iget-object v1, p0, Lrockstarmobile/GCState$Config;->events:Lrockstarmobile/GCState$ConfigEvents;

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {v1}, Lrockstarmobile/GCState$ConfigEvents;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "events"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-object v0
.end method
