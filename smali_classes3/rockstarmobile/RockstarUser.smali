.class public Lrockstarmobile/RockstarUser;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/RockstarUser$POLICY_STATE;,
        Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;
    }
.end annotation


# instance fields
.field public final acceptedAllPolicies:Lrockstarmobile/RockstarUser$POLICY_STATE;

.field public final acceptedAllPoliciesRefreshed:Ljava/util/Date;

.field public final email:Ljava/lang/String;

.field public final fingerprint:Ljava/lang/String;

.field public final mobileToken:Ljava/lang/String;

.field public final mobileTokenRefreshed:Ljava/util/Date;

.field public final rememberedMachineToken:Ljava/lang/String;

.field public final rockstarId:Ljava/lang/String;

.field public final scAuthAccessToken:Ljava/lang/String;

.field public final scAuthToken:Ljava/lang/String;

.field public final scAuthTokenExpires:Ljava/util/Date;

.field public final scAuthTokenRefreshed:Ljava/util/Date;

.field public final scServicesTicket:Ljava/lang/String;

.field public final scServicesTicketExpires:Ljava/util/Date;

.field public final scServicesTicketRefreshed:Ljava/util/Date;

.field public final subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

.field public final subscriptionStateRefreshed:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/RockstarUser$POLICY_STATE;Ljava/util/Date;Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrockstarmobile/RockstarUser;->scAuthToken:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lrockstarmobile/RockstarUser;->scAuthTokenExpires:Ljava/util/Date;

    .line 4
    iput-object p3, p0, Lrockstarmobile/RockstarUser;->scAuthTokenRefreshed:Ljava/util/Date;

    .line 5
    iput-object p4, p0, Lrockstarmobile/RockstarUser;->scServicesTicket:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lrockstarmobile/RockstarUser;->scServicesTicketExpires:Ljava/util/Date;

    .line 7
    iput-object p6, p0, Lrockstarmobile/RockstarUser;->scServicesTicketRefreshed:Ljava/util/Date;

    .line 8
    iput-object p7, p0, Lrockstarmobile/RockstarUser;->mobileToken:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lrockstarmobile/RockstarUser;->mobileTokenRefreshed:Ljava/util/Date;

    .line 10
    iput-object p9, p0, Lrockstarmobile/RockstarUser;->email:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lrockstarmobile/RockstarUser;->rockstarId:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lrockstarmobile/RockstarUser;->rememberedMachineToken:Ljava/lang/String;

    .line 13
    iput-object p12, p0, Lrockstarmobile/RockstarUser;->fingerprint:Ljava/lang/String;

    .line 14
    iput-object p13, p0, Lrockstarmobile/RockstarUser;->acceptedAllPolicies:Lrockstarmobile/RockstarUser$POLICY_STATE;

    .line 15
    iput-object p14, p0, Lrockstarmobile/RockstarUser;->acceptedAllPoliciesRefreshed:Ljava/util/Date;

    .line 16
    iput-object p15, p0, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    move-object/from16 p1, p16

    .line 17
    iput-object p1, p0, Lrockstarmobile/RockstarUser;->subscriptionStateRefreshed:Ljava/util/Date;

    move-object/from16 p1, p17

    .line 18
    iput-object p1, p0, Lrockstarmobile/RockstarUser;->scAuthAccessToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "scAuthToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->scAuthToken:Ljava/lang/String;

    .line 21
    const-string v0, "scAuthTokenExpires"

    invoke-direct {p0, p1, v0}, Lrockstarmobile/RockstarUser;->getJsonDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->scAuthTokenExpires:Ljava/util/Date;

    .line 22
    const-string v0, "scAuthTokenRefreshed"

    invoke-direct {p0, p1, v0}, Lrockstarmobile/RockstarUser;->getJsonDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->scAuthTokenRefreshed:Ljava/util/Date;

    .line 23
    const-string v0, "scServicesTicket"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->scServicesTicket:Ljava/lang/String;

    .line 24
    const-string v0, "scServicesTicketExpires"

    invoke-direct {p0, p1, v0}, Lrockstarmobile/RockstarUser;->getJsonDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->scServicesTicketExpires:Ljava/util/Date;

    .line 25
    const-string v0, "scServicesTicketRefreshed"

    invoke-direct {p0, p1, v0}, Lrockstarmobile/RockstarUser;->getJsonDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->scServicesTicketRefreshed:Ljava/util/Date;

    .line 26
    const-string v0, "mobileToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->mobileToken:Ljava/lang/String;

    .line 27
    const-string v0, "mobileTokenRefreshed"

    invoke-direct {p0, p1, v0}, Lrockstarmobile/RockstarUser;->getJsonDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->mobileTokenRefreshed:Ljava/util/Date;

    .line 28
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->email:Ljava/lang/String;

    .line 29
    const-string v0, "rockstarId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->rockstarId:Ljava/lang/String;

    .line 30
    const-string v0, "rememberedMachineToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->rememberedMachineToken:Ljava/lang/String;

    .line 31
    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->fingerprint:Ljava/lang/String;

    .line 32
    const-string v0, "acceptedAllPolicies"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lrockstarmobile/RockstarUser$POLICY_STATE;->UNKNOWN:Lrockstarmobile/RockstarUser$POLICY_STATE;

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->acceptedAllPolicies:Lrockstarmobile/RockstarUser$POLICY_STATE;

    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lrockstarmobile/RockstarUser$POLICY_STATE;->YES:Lrockstarmobile/RockstarUser$POLICY_STATE;

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->acceptedAllPolicies:Lrockstarmobile/RockstarUser$POLICY_STATE;

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lrockstarmobile/RockstarUser$POLICY_STATE;->NO:Lrockstarmobile/RockstarUser$POLICY_STATE;

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->acceptedAllPolicies:Lrockstarmobile/RockstarUser$POLICY_STATE;

    .line 50
    :goto_0
    const-string v0, "acceptedAllPoliciesRefreshed"

    invoke-direct {p0, p1, v0}, Lrockstarmobile/RockstarUser;->getJsonDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->acceptedAllPoliciesRefreshed:Ljava/util/Date;

    .line 51
    const-string v0, "subscriptionState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x54d080fa

    if-eq v1, v2, :cond_5

    const v2, 0x1785c6b

    if-eq v1, v2, :cond_4

    const v2, 0x14666e59

    if-eq v1, v2, :cond_3

    const v2, 0x36c142ca

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "previouslyactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 59
    sget-object v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->PREVIOUSLY_ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    goto :goto_2

    .line 60
    :cond_3
    const-string v1, "unknownrequiresauthtoken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v1, "inactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    sget-object v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->INACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    goto :goto_2

    .line 66
    :cond_5
    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    sget-object v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    goto :goto_2

    .line 78
    :cond_6
    :goto_1
    sget-object v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->UNKNOWN_REQUIRES_AUTH_TOKEN:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    .line 81
    :goto_2
    const-string v0, "subscriptionStateRefreshed"

    invoke-direct {p0, p1, v0}, Lrockstarmobile/RockstarUser;->getJsonDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/RockstarUser;->subscriptionStateRefreshed:Ljava/util/Date;

    .line 82
    const-string v0, "scAuthAccessToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/RockstarUser;->scAuthAccessToken:Ljava/lang/String;

    return-void
.end method

.method private getJsonDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private setJsonDate(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->scAuthToken:Ljava/lang/String;

    const-string v2, "scAuthToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->scAuthTokenExpires:Ljava/util/Date;

    const-string v2, "scAuthTokenExpires"

    invoke-direct {p0, v0, v2, v1}, Lrockstarmobile/RockstarUser;->setJsonDate(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)V

    .line 4
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->scAuthTokenRefreshed:Ljava/util/Date;

    const-string v2, "scAuthTokenRefreshed"

    invoke-direct {p0, v0, v2, v1}, Lrockstarmobile/RockstarUser;->setJsonDate(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)V

    .line 5
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->scServicesTicket:Ljava/lang/String;

    const-string v2, "scServicesTicket"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->scServicesTicketExpires:Ljava/util/Date;

    const-string v2, "scServicesTicketExpires"

    invoke-direct {p0, v0, v2, v1}, Lrockstarmobile/RockstarUser;->setJsonDate(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)V

    .line 7
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->scServicesTicketRefreshed:Ljava/util/Date;

    const-string v2, "scServicesTicketRefreshed"

    invoke-direct {p0, v0, v2, v1}, Lrockstarmobile/RockstarUser;->setJsonDate(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)V

    .line 8
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->mobileToken:Ljava/lang/String;

    const-string v2, "mobileToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->mobileTokenRefreshed:Ljava/util/Date;

    const-string v2, "mobileTokenRefreshed"

    invoke-direct {p0, v0, v2, v1}, Lrockstarmobile/RockstarUser;->setJsonDate(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)V

    .line 10
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->email:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->rockstarId:Ljava/lang/String;

    const-string v2, "rockstarId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->rememberedMachineToken:Ljava/lang/String;

    const-string v2, "rememberedMachineToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->fingerprint:Ljava/lang/String;

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->acceptedAllPolicies:Lrockstarmobile/RockstarUser$POLICY_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "acceptedAllPolicies"

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    const-string v1, "no"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 23
    :cond_1
    const-string v1, "yes"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 24
    :cond_2
    const-string v1, "unknown"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :goto_0
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->acceptedAllPoliciesRefreshed:Ljava/util/Date;

    const-string v4, "acceptedAllPoliciesRefreshed"

    invoke-direct {p0, v0, v4, v1}, Lrockstarmobile/RockstarUser;->setJsonDate(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)V

    .line 34
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v4, "subscriptionState"

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 45
    :cond_3
    const-string v1, "unknownrequiresauthtoken"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 46
    :cond_4
    const-string v1, "previouslyactive"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 47
    :cond_5
    const-string v1, "inactive"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 48
    :cond_6
    const-string v1, "active"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :goto_1
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->subscriptionStateRefreshed:Ljava/util/Date;

    const-string v2, "subscriptionStateRefreshed"

    invoke-direct {p0, v0, v2, v1}, Lrockstarmobile/RockstarUser;->setJsonDate(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)V

    .line 61
    iget-object v1, p0, Lrockstarmobile/RockstarUser;->scAuthAccessToken:Ljava/lang/String;

    const-string v2, "scAuthAccessToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
