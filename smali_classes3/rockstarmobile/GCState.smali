.class public Lrockstarmobile/GCState;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/GCState$GameTicket;,
        Lrockstarmobile/GCState$ToolOverrides;,
        Lrockstarmobile/GCState$Config;,
        Lrockstarmobile/GCState$ConfigLegacyUpgrade;,
        Lrockstarmobile/GCState$ConfigExperiments;,
        Lrockstarmobile/GCState$ConfigGates;,
        Lrockstarmobile/GCState$ConfigGameChallenges;,
        Lrockstarmobile/GCState$ConfigScorelists;,
        Lrockstarmobile/GCState$ConfigEvents;,
        Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;,
        Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;
    }
.end annotation


# static fields
.field private static _deviceIdentifier:Ljava/lang/String; = null

.field public static keyPrefix:Ljava/lang/String; = ""

.field private static mutableConfigCache:Lrockstarmobile/GCState$Config;

.field private static privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

.field private static sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

.field private static userCache:Lrockstarmobile/RockstarUser;

.field private static userGameTicketCache:Lrockstarmobile/GCState$GameTicket;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conf()Lrockstarmobile/GCState$Config;
    .locals 10

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->mutableConfigCache:Lrockstarmobile/GCState$Config;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mutableconfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    .line 5
    :try_start_0
    new-instance v1, Lrockstarmobile/GCState$Config;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lrockstarmobile/GCState$Config;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lrockstarmobile/GCState;->mutableConfigCache:Lrockstarmobile/GCState$Config;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    sget-object v0, Lrockstarmobile/GCState;->mutableConfigCache:Lrockstarmobile/GCState$Config;

    if-nez v0, :cond_1

    .line 11
    new-instance v3, Lrockstarmobile/GCState$Config;

    new-instance v4, Lrockstarmobile/GCState$ConfigLegacyUpgrade;

    const/4 v0, 0x0

    invoke-direct {v4, v2, v0}, Lrockstarmobile/GCState$ConfigLegacyUpgrade;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lrockstarmobile/GCState$ConfigExperiments;

    invoke-direct {v5, v2}, Lrockstarmobile/GCState$ConfigExperiments;-><init>(Ljava/lang/String;)V

    new-instance v6, Lrockstarmobile/GCState$ConfigGates;

    sget-object v0, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v0, v0, Lrockstarmobile/GCConfig;->gatesconfig:Lrockstarmobile/GCConfig$GatesConfig;

    invoke-direct {v6, v2, v0}, Lrockstarmobile/GCState$ConfigGates;-><init>(Ljava/lang/String;Lrockstarmobile/GCConfig$GatesConfig;)V

    new-instance v7, Lrockstarmobile/GCState$ConfigGameChallenges;

    invoke-direct {v7, v2}, Lrockstarmobile/GCState$ConfigGameChallenges;-><init>(Ljava/lang/String;)V

    new-instance v8, Lrockstarmobile/GCState$ConfigScorelists;

    invoke-direct {v8, v2}, Lrockstarmobile/GCState$ConfigScorelists;-><init>(Ljava/lang/String;)V

    new-instance v9, Lrockstarmobile/GCState$ConfigEvents;

    const/4 v0, 0x1

    invoke-direct {v9, v2, v0}, Lrockstarmobile/GCState$ConfigEvents;-><init>(Ljava/lang/String;Z)V

    invoke-direct/range {v3 .. v9}, Lrockstarmobile/GCState$Config;-><init>(Lrockstarmobile/GCState$ConfigLegacyUpgrade;Lrockstarmobile/GCState$ConfigExperiments;Lrockstarmobile/GCState$ConfigGates;Lrockstarmobile/GCState$ConfigGameChallenges;Lrockstarmobile/GCState$ConfigScorelists;Lrockstarmobile/GCState$ConfigEvents;)V

    sput-object v3, Lrockstarmobile/GCState;->mutableConfigCache:Lrockstarmobile/GCState$Config;

    .line 23
    :cond_1
    sget-object v0, Lrockstarmobile/GCState;->mutableConfigCache:Lrockstarmobile/GCState$Config;

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    invoke-virtual {v0, p0, p1}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAcceptedLaunchTerms()Ljava/lang/Boolean;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "acceptedlaunchterms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getAccessToken()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accesstoken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccessTokenSessionID()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accesstokensessionid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInitialized()Ljava/lang/Boolean;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appinitialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->_deviceIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnvironment()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    const-string v1, "gameclub.environment"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExperiments()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "experiments"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExperimentsOverride()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "experimentsoverride"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getForceOnboarding()Z
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "forceonboardingflow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getGameMusicVolume()F
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gamemusicvolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getGamePausedURL()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gamepausedurl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGameSoundFxVolume()F
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gamesoundfxvolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getGatesConfigJSON()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gatesconfigjson"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHadPaidSubscription()Z
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hadpaidsubscription"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getHadTrial()Z
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hadtrial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getHasEmail()Z
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hasemail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getHasSeenWelcomeMessage()Z
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "seenwelcomemessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getIsFirstLaunchedTracked()Z
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "firstlaunch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getLastLimitedMode()Ljava/util/Date;
    .locals 4

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastlimitedmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 2
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public static getLastOpenedGame()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastopenedgame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastPopup()Ljava/util/Date;
    .locals 4

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastpopup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 2
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public static getMemberType()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "membertype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMinutesSpentLastMilestone()I
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "minutesspentlastmilestone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMinutesSpentTotal()I
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "minutesspenttotal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPlans()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "plans"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProfileName()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profilename"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedAdMetaData()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedSessionID()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sharedsessionid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedSessionToken()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sharedsessiontoken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimedTrialDuration()I
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timedTrialDuration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTokenCount()I
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tokencount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTokenSecondsLeft()I
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tokensecondsleft"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTokenState()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tokenstate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "userid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasSession()Z
    .locals 3

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lrockstarmobile/GCState;->getAccessTokenSessionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lrockstarmobile/GCState;->getSharedSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lrockstarmobile/GCState;->getSharedSessionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lrockstarmobile/GCState;->getAccessTokenSessionID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lrockstarmobile/GCState;->getSharedSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lrockstarmobile/GCState;->getAccessTokenSessionID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lrockstarmobile/GCState;->getSharedSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {v1}, Lrockstarmobile/GCState;->setAccessToken(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lrockstarmobile/GCState;->setAccessTokenSessionID(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isCheatModeEnabled()Z
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cheatmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isForceDevMode()Z
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "forcedevmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFullMember()Z
    .locals 2

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->getMemberType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGameOwner()Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isLegacyCheckDone()Z
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    const-string v1, "legacyCheckDone"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLegacyUpgrade()Ljava/lang/Boolean;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "legacyupgrade"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isScreenshotMode()Z
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screenshotmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTimedGatesUserInfoNotificationClosed()Z
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timedgateuserinfonotificationclosed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTimedTrialExpired()Z
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timedTrialExpired"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lrockstarmobile/GCState;->isCheatModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTrialActive()Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static newDeviceID()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lrockstarmobile/utilities/DeviceID;->make()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrockstarmobile/GCState;->_deviceIdentifier:Ljava/lang/String;

    .line 2
    sget-object v1, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    const-string v2, "deviceid"

    invoke-virtual {v1, v2, v0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lrockstarmobile/GCState;->_deviceIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public static onAppInBackground()V
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    invoke-virtual {v0}, Lrockstarmobile/preferences/GCSharedPreferences;->clearContentProviders()V

    return-void
.end method

.method public static overrides()Lrockstarmobile/GCState$ToolOverrides;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    const-string v1, "tooloverrides"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    :try_start_0
    new-instance v1, Lrockstarmobile/GCState$ToolOverrides;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lrockstarmobile/GCState$ToolOverrides;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    invoke-virtual {v0, p0, p1}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAcceptedLaunchTerms(Z)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "acceptedlaunchterms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAccessToken(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accesstoken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAccessTokenSessionID(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accesstokensessionid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAppInitialized(Z)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appinitialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCheatMode(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cheatmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setConf(Lrockstarmobile/GCState$Config;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lrockstarmobile/GCState$Config;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    sget-object v1, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mutableconfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sput-object p0, Lrockstarmobile/GCState;->mutableConfigCache:Lrockstarmobile/GCState$Config;

    return-void

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static setEnvironment(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    const-string v1, "gameclub.environment"

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setExperiments(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "experiments"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setExperimentsOverride(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "experimentsoverride"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setForceDevMode(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "forcedevmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setForceOnboarding(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "forceonboardingflow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGameMusicVolume(F)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gamemusicvolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGamePausedURL(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gamepausedurl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGameSoundFxVolume(F)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gamesoundfxvolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGatesConfigJSON(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gatesconfigjson"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setHadPaidSubscription(Z)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hadpaidsubscription"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setHadTrial(Z)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hadtrial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setHasEmail(Z)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hasemail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setHasSeenWelcomeMessage(Z)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "seenwelcomemessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setIsFirstLaunchedTracked(Z)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "firstlaunch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setIsGameOwner(Z)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gameowner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setIsLegacyUpgrade(Z)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "legacyupgrade"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setIsTrialActive(Z)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "trialactive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLastLimitedMode(Ljava/util/Date;)V
    .locals 4

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastlimitedmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLastOpenedGame(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastopenedgame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLastPopup(Ljava/util/Date;)V
    .locals 4

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastpopup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLegacyCheckIsDone()V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    const-string v1, "legacyCheckDone"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMemberType(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "membertype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMinutesSpentLastMilestone(I)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "minutesspentlastmilestone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMinutesSpentTotal(I)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "minutesspenttotal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOverrides(Lrockstarmobile/GCState$ToolOverrides;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    const-string v1, "tooloverrides"

    invoke-virtual {p0}, Lrockstarmobile/GCState$ToolOverrides;->toJSON()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static setPlans(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "plans"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setProfileName(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profilename"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSavedAdMetaData(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setScreenshotMode(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screenshotmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSharedSessionID(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sharedsessionid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSharedSessionToken(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sharedsessiontoken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTimedGatesUserInfoNotificationClosed(Z)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timedgateuserinfonotificationclosed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTimedTrialDuration(I)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timedTrialDuration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTimedTrialExpired(Z)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timedTrialExpired"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTokenCount(I)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tokencount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTokenSecondsLeft(I)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tokensecondsleft"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTokenState(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tokenstate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTrialSecondsSpent(I)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "trialsecondspent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUser(Lrockstarmobile/RockstarUser;)V
    .locals 4

    if-nez p0, :cond_0

    .line 1
    const-string v0, ""

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lrockstarmobile/RockstarUser;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_0
    sget-object v1, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sput-object p0, Lrockstarmobile/GCState;->userCache:Lrockstarmobile/RockstarUser;

    .line 13
    invoke-static {}, Lrockstarmobile/Rockstar;->updateAnalyticsProperties()V

    return-void

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static setUserGameTicket(Lrockstarmobile/GCState$GameTicket;)V
    .locals 4

    if-nez p0, :cond_0

    .line 1
    const-string v0, ""

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lrockstarmobile/GCState$GameTicket;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_0
    sget-object v1, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "usergameticket"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lrockstarmobile/preferences/GCPrivatePreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sput-object p0, Lrockstarmobile/GCState;->userGameTicketCache:Lrockstarmobile/GCState$GameTicket;

    return-void

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "userid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setup(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lrockstarmobile/preferences/GCSharedPreferences;

    invoke-direct {v0, p0}, Lrockstarmobile/preferences/GCSharedPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    .line 3
    new-instance v0, Lrockstarmobile/preferences/GCPrivatePreferences;

    invoke-direct {v0, p0}, Lrockstarmobile/preferences/GCPrivatePreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    .line 5
    sget-object p0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    const-string v0, ""

    const-string v1, "deviceid"

    invoke-virtual {p0, v1, v0}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lrockstarmobile/GCState;->_deviceIdentifier:Ljava/lang/String;

    .line 6
    invoke-static {p0}, Lrockstarmobile/utilities/DeviceID;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7
    invoke-static {}, Lrockstarmobile/utilities/DeviceID;->make()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lrockstarmobile/GCState;->_deviceIdentifier:Ljava/lang/String;

    .line 8
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    invoke-virtual {v0, v1, p0}, Lrockstarmobile/preferences/GCSharedPreferences;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trialSecondsSpent()I
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "trialsecondspent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static user()Lrockstarmobile/RockstarUser;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->userCache:Lrockstarmobile/RockstarUser;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lrockstarmobile/GCState;->sharedPreferences:Lrockstarmobile/preferences/GCSharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCSharedPreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    :try_start_0
    new-instance v1, Lrockstarmobile/RockstarUser;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lrockstarmobile/RockstarUser;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lrockstarmobile/GCState;->userCache:Lrockstarmobile/RockstarUser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_0
    :goto_0
    sget-object v0, Lrockstarmobile/GCState;->userCache:Lrockstarmobile/RockstarUser;

    return-object v0
.end method

.method public static userGameTicket()Lrockstarmobile/GCState$GameTicket;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState;->userGameTicketCache:Lrockstarmobile/GCState$GameTicket;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lrockstarmobile/GCState;->privatePreferences:Lrockstarmobile/preferences/GCPrivatePreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "usergameticket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/preferences/GCPrivatePreferences;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    :try_start_0
    new-instance v1, Lrockstarmobile/GCState$GameTicket;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lrockstarmobile/GCState$GameTicket;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lrockstarmobile/GCState;->userGameTicketCache:Lrockstarmobile/GCState$GameTicket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_0
    :goto_0
    sget-object v0, Lrockstarmobile/GCState;->userGameTicketCache:Lrockstarmobile/GCState$GameTicket;

    return-object v0
.end method
