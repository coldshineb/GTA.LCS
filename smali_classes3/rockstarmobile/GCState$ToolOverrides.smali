.class public Lrockstarmobile/GCState$ToolOverrides;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolOverrides"
.end annotation


# instance fields
.field public acceptedTermsResponse:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

.field public disableChecksForNewPurchases:Z

.field public getSubscriptionResponse:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "disableChecksForNewPurchases"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lrockstarmobile/GCState$ToolOverrides;->disableChecksForNewPurchases:Z

    .line 9
    :cond_0
    const-string v0, "getsubscriptionresponse"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "previouslyactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "unknownrequiresauthtoken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "inactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 23
    sget-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->NO_OVERRIDE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    iput-object v0, p0, Lrockstarmobile/GCState$ToolOverrides;->getSubscriptionResponse:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    goto :goto_1

    .line 24
    :pswitch_0
    sget-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->PREVIOUSLY_ACTIVE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    iput-object v0, p0, Lrockstarmobile/GCState$ToolOverrides;->getSubscriptionResponse:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    goto :goto_1

    .line 27
    :pswitch_1
    sget-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->UNKNOWN_REQUIRES_AUTH_TOKEN:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    iput-object v0, p0, Lrockstarmobile/GCState$ToolOverrides;->getSubscriptionResponse:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    goto :goto_1

    .line 28
    :pswitch_2
    sget-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->INACTIVE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    iput-object v0, p0, Lrockstarmobile/GCState$ToolOverrides;->getSubscriptionResponse:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    goto :goto_1

    .line 29
    :pswitch_3
    sget-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->ACTIVE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    iput-object v0, p0, Lrockstarmobile/GCState$ToolOverrides;->getSubscriptionResponse:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    .line 44
    :goto_1
    const-string v0, "acceptedtermsresponse"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "allaccepted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "updatedterms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 52
    sget-object p1, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->NO_OVERRIDE:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    iput-object p1, p0, Lrockstarmobile/GCState$ToolOverrides;->acceptedTermsResponse:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    return-void

    .line 53
    :cond_5
    sget-object p1, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->UPDATED_TERMS:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    iput-object p1, p0, Lrockstarmobile/GCState$ToolOverrides;->acceptedTermsResponse:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    return-void

    .line 54
    :cond_6
    sget-object p1, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->ALL_ACCEPTED:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    iput-object p1, p0, Lrockstarmobile/GCState$ToolOverrides;->acceptedTermsResponse:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x54d080fa -> :sswitch_3
        0x1785c6b -> :sswitch_2
        0x14666e59 -> :sswitch_1
        0x36c142ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrockstarmobile/GCState$ToolOverrides;->getSubscriptionResponse:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    .line 3
    iput-object p2, p0, Lrockstarmobile/GCState$ToolOverrides;->acceptedTermsResponse:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    .line 4
    iput-boolean p3, p0, Lrockstarmobile/GCState$ToolOverrides;->disableChecksForNewPurchases:Z

    return-void
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-boolean v1, p0, Lrockstarmobile/GCState$ToolOverrides;->disableChecksForNewPurchases:Z

    const-string v2, "disableChecksForNewPurchases"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3
    const-string v1, "getsubscriptionresponse"

    const-string v2, "nooverride"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v3, p0, Lrockstarmobile/GCState$ToolOverrides;->getSubscriptionResponse:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_2

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    const-string v3, "unknownrequiresauthtoken"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 16
    :cond_1
    const-string v3, "previouslyactive"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 17
    :cond_2
    const-string v3, "inactive"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 18
    :cond_3
    const-string v3, "active"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    :goto_0
    const-string v1, "acceptedtermsresponse"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-object v2, p0, Lrockstarmobile/GCState$ToolOverrides;->acceptedTermsResponse:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    return-object v0

    .line 36
    :cond_4
    const-string v2, "updatedterms"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 37
    :cond_5
    const-string v2, "allaccepted"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
