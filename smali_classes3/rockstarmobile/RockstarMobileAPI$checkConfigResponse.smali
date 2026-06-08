.class public Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/RockstarMobileAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "checkConfigResponse"
.end annotation


# instance fields
.field public events:Lrockstarmobile/GCState$ConfigEvents;

.field public experiments:Lrockstarmobile/GCState$ConfigExperiments;

.field public gamechallenges:Lrockstarmobile/GCState$ConfigGameChallenges;

.field public gates:Lrockstarmobile/GCState$ConfigGates;

.field public legacyupgrade:Lrockstarmobile/GCState$ConfigLegacyUpgrade;

.field public scorelists:Lrockstarmobile/GCState$ConfigScorelists;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-boolean v0, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v0, :cond_0

    .line 5
    const-string v0, "legacyupgrade"

    invoke-static {p1, v0}, Lrockstarmobile/utilities/HttpAPI;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Lrockstarmobile/GCState$ConfigLegacyUpgrade;

    invoke-direct {v1, v0}, Lrockstarmobile/GCState$ConfigLegacyUpgrade;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;->legacyupgrade:Lrockstarmobile/GCState$ConfigLegacyUpgrade;

    .line 11
    :cond_0
    const-string v0, "experiments"

    invoke-static {p1, v0}, Lrockstarmobile/utilities/HttpAPI;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    new-instance v1, Lrockstarmobile/GCState$ConfigExperiments;

    invoke-direct {v1, v0}, Lrockstarmobile/GCState$ConfigExperiments;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;->experiments:Lrockstarmobile/GCState$ConfigExperiments;

    .line 16
    :cond_1
    const-string v0, "gates"

    invoke-static {p1, v0}, Lrockstarmobile/utilities/HttpAPI;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    new-instance v1, Lrockstarmobile/GCState$ConfigGates;

    invoke-direct {v1, v0}, Lrockstarmobile/GCState$ConfigGates;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;->gates:Lrockstarmobile/GCState$ConfigGates;

    .line 21
    :cond_2
    const-string v0, "gamechallenges"

    invoke-static {p1, v0}, Lrockstarmobile/utilities/HttpAPI;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    new-instance v1, Lrockstarmobile/GCState$ConfigGameChallenges;

    invoke-direct {v1, v0}, Lrockstarmobile/GCState$ConfigGameChallenges;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;->gamechallenges:Lrockstarmobile/GCState$ConfigGameChallenges;

    .line 26
    :cond_3
    const-string v0, "scorelists"

    invoke-static {p1, v0}, Lrockstarmobile/utilities/HttpAPI;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 28
    new-instance v1, Lrockstarmobile/GCState$ConfigScorelists;

    invoke-direct {v1, v0}, Lrockstarmobile/GCState$ConfigScorelists;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;->scorelists:Lrockstarmobile/GCState$ConfigScorelists;

    .line 31
    :cond_4
    const-string v0, "events"

    invoke-static {p1, v0}, Lrockstarmobile/utilities/HttpAPI;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 33
    new-instance v0, Lrockstarmobile/GCState$ConfigEvents;

    invoke-direct {v0, p1}, Lrockstarmobile/GCState$ConfigEvents;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;->events:Lrockstarmobile/GCState$ConfigEvents;

    :cond_5
    return-void
.end method
