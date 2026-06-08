.class public Lrockstarmobile/RockstarMobileAPI;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/RockstarMobileAPI$requestAccountDeletionResponse;,
        Lrockstarmobile/RockstarMobileAPI$requestLegacyUpgradeResponse;,
        Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;
    }
.end annotation


# static fields
.field private static final log:Lrockstarmobile/utilities/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "RockstarMobileAPI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lrockstarmobile/RockstarMobileAPI;->log:Lrockstarmobile/utilities/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrockstarmobile/utilities/HttpAPI$SuccessCallback<",
            "Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;",
            ">;",
            "Lrockstarmobile/utilities/HttpAPI$ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda1;-><init>()V

    const-string v9, "scorelists"

    const-string v11, "events"

    const-string v1, "legacyupgrade"

    const-string v3, "experiments"

    const-string v5, "gates"

    const-string v7, "gamechallenges"

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p5

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "configcheck"

    const/16 v3, 0x1e

    move-object/from16 p2, p6

    move-object/from16 p3, p7

    move-object/from16 p4, v0

    move-object/from16 p5, v1

    move-object/from16 p0, v2

    move/from16 p1, v3

    invoke-static/range {p0 .. p5}, Lrockstarmobile/RockstarMobileAPI;->requestWithUser(Ljava/lang/String;ILrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda2;-><init>()V

    const-string v12, "scorelists"

    const-string v14, "events"

    const-string v4, "legacyupgrade"

    const-string v6, "experiments"

    const-string v8, "gates"

    const-string v10, "gamechallenges"

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    move-object/from16 v15, p5

    filled-new-array/range {v4 .. v15}, [Ljava/lang/Object;

    move-result-object v6

    move-object v5, v0

    const-string v0, "configcheck"

    const/16 v1, 0x1e

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-static/range {v0 .. v6}, Lrockstarmobile/RockstarMobileAPI;->request(Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$configCheck$2(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;

    invoke-direct {v0, p0}, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method static synthetic lambda$configCheck$3(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;

    invoke-direct {v0, p0}, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method static synthetic lambda$requestAccountDeletion$5(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lrockstarmobile/RockstarMobileAPI$requestAccountDeletionResponse;

    invoke-direct {p0}, Lrockstarmobile/RockstarMobileAPI$requestAccountDeletionResponse;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$requestLegacyUpgrade$4(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lrockstarmobile/RockstarMobileAPI$requestLegacyUpgradeResponse;

    invoke-direct {p0}, Lrockstarmobile/RockstarMobileAPI$requestLegacyUpgradeResponse;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$requestWithUser$0(Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;Lrockstarmobile/RockstarUser;)V
    .locals 0

    if-eqz p7, :cond_0

    .line 1
    invoke-static/range {p0 .. p6}, Lrockstarmobile/RockstarMobileAPI;->request(Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Lrockstarmobile/utilities/HttpAPI$Error;

    const-string p1, "not logged in"

    const-string p2, ""

    const-string p3, "no-session"

    invoke-direct {p0, p3, p1, p2}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p0}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void
.end method

.method static synthetic lambda$requestWithUser$1(Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 11

    move-object/from16 v0, p7

    .line 1
    iget-object v1, v0, Lrockstarmobile/utilities/HttpAPI$Error;->code:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "M0001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lrockstarmobile/utilities/HttpAPI$Error;->code:Ljava/lang/String;

    const-string v2, "garbled-response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    :cond_0
    sget-object v1, Lrockstarmobile/RockstarMobileAPI;->log:Lrockstarmobile/utilities/Log;

    invoke-virtual {v0}, Lrockstarmobile/utilities/HttpAPI$Error;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    .line 3
    new-instance v3, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;)V

    invoke-static {v3}, Lrockstarmobile/SocialClubAPI;->refreshUser(Lrockstarmobile/SocialClubAPI$RefreshedUserCallback;)V

    return-void

    .line 12
    :cond_1
    invoke-interface {p4, v0}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void
.end method

.method private static varargs request(Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lrockstarmobile/utilities/HttpAPI$SuccessCallback;",
            "Lrockstarmobile/utilities/HttpAPI$ErrorCallback;",
            "Lrockstarmobile/utilities/HttpAPI$Constructor;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object v3

    iget-object v3, v3, Lrockstarmobile/Environment;->rockstarMobileBase:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    if-eqz p6, :cond_5

    move v3, v2

    .line 12
    :goto_0
    :try_start_1
    array-length v4, p6

    if-ge v3, v4, :cond_5

    .line 13
    aget-object v4, p6, v3

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    .line 14
    aget-object v5, p6, v5

    .line 15
    instance-of v6, v5, [J

    if-eqz v6, :cond_0

    .line 16
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 17
    :cond_0
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 18
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 19
    :cond_1
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 20
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 21
    :cond_2
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_3

    .line 22
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    .line 23
    :cond_3
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 24
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 26
    :cond_4
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 30
    :catch_0
    new-instance p6, Lrockstarmobile/utilities/HttpAPI$Error;

    const-string v3, "bad-input"

    const-string v4, "Could not serialize arguments"

    invoke-direct {p6, v3, v4, v0}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p6}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    .line 34
    :cond_5
    new-instance p6, Lrockstarmobile/utilities/HttpAPI$RequestTask;

    invoke-direct {p6}, Lrockstarmobile/utilities/HttpAPI$RequestTask;-><init>()V

    .line 35
    const-string v0, "POST"

    iput-object v0, p6, Lrockstarmobile/utilities/HttpAPI$RequestTask;->method:Ljava/lang/String;

    .line 36
    iput-object v1, p6, Lrockstarmobile/utilities/HttpAPI$RequestTask;->url:Ljava/net/URL;

    .line 37
    iput p1, p6, Lrockstarmobile/utilities/HttpAPI$RequestTask;->timeoutInSeconds:I

    .line 38
    iput-object p3, p6, Lrockstarmobile/utilities/HttpAPI$RequestTask;->successCallback:Lrockstarmobile/utilities/HttpAPI$SuccessCallback;

    .line 39
    iput-object p4, p6, Lrockstarmobile/utilities/HttpAPI$RequestTask;->errorCallback:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    .line 40
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p6, Lrockstarmobile/utilities/HttpAPI$RequestTask;->jsonInput:Ljava/lang/String;

    const/4 p0, 0x1

    .line 41
    iput-boolean p0, p6, Lrockstarmobile/utilities/HttpAPI$RequestTask;->allowUpdateMobileToken:Z

    if-nez p2, :cond_6

    .line 43
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 45
    :cond_6
    const-string p0, "Content-Type"

    const-string p1, "application/json"

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string p0, "Accept"

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "android"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Lrockstarmobile/a;->a:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "X-SDK"

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object p0

    iget-object p0, p0, Lrockstarmobile/Environment;->rockstarMobileApiKey:Ljava/lang/String;

    const-string p1, "X-API-KEY"

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance p0, Ljava/lang/Integer;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    const p3, 0xf4240

    add-int/2addr p1, p3

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "X-UTC-OFFSET"

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lrockstarmobile/GCState;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object p0

    const-string p1, "X-DEVICE-ID"

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SCS-CorrelationId"

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iput-object p2, p6, Lrockstarmobile/utilities/HttpAPI$RequestTask;->headers:Ljava/util/HashMap;

    .line 54
    iput-object p5, p6, Lrockstarmobile/utilities/HttpAPI$RequestTask;->c:Lrockstarmobile/utilities/HttpAPI$Constructor;

    .line 55
    new-array p0, v2, [Ljava/lang/Void;

    invoke-virtual {p6, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 56
    :catch_1
    new-instance p1, Lrockstarmobile/utilities/HttpAPI$Error;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "could not parse the url for method: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "bad-url"

    invoke-direct {p1, p3, p2, v0}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    .line 57
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "bad url for method: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Error"

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Error Viewed"

    invoke-virtual {p1, p2, p0}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void
.end method

.method public static requestAccountDeletion(Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrockstarmobile/utilities/HttpAPI$SuccessCallback<",
            "Lrockstarmobile/RockstarMobileAPI$requestAccountDeletionResponse;",
            ">;",
            "Lrockstarmobile/utilities/HttpAPI$ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v4, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda5;-><init>()V

    const-string v0, "_"

    const-string v1, ""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "requestaccountdeletion"

    const/16 v1, 0x1e

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lrockstarmobile/RockstarMobileAPI;->requestWithUser(Ljava/lang/String;ILrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;)V

    return-void
.end method

.method public static requestLegacyUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrockstarmobile/utilities/HttpAPI$SuccessCallback<",
            "Lrockstarmobile/RockstarMobileAPI$requestLegacyUpgradeResponse;",
            ">;",
            "Lrockstarmobile/utilities/HttpAPI$ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda4;-><init>()V

    const-string v12, "image"

    const-string v14, "image_content_type"

    const-string v6, "email"

    const-string v8, "details"

    const-string v10, "transaction_id"

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v15, p4

    filled-new-array/range {v6 .. v15}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "requestlegacyupgrade"

    const/16 v1, 0x1e

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-static/range {v0 .. v6}, Lrockstarmobile/RockstarMobileAPI;->request(Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs requestWithUser(Ljava/lang/String;ILrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v1, v0, Lrockstarmobile/RockstarUser;->mobileToken:Ljava/lang/String;

    const-string v2, "X-MOBILE-TOKEN"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, v0, Lrockstarmobile/RockstarUser;->scServicesTicket:Ljava/lang/String;

    const-string v1, "X-TICKET"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object v4, v3

    move v3, p1

    invoke-direct/range {v1 .. v8}, Lrockstarmobile/RockstarMobileAPI$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v1

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lrockstarmobile/RockstarMobileAPI;->request(Ljava/lang/String;ILjava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Constructor;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
