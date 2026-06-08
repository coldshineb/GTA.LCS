.class public Lrockstarmobile/ui/FlutterGateScreen;
.super Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# instance fields
.field private completed:Lrockstarmobile/Rockstar$Callback;

.field private setSubheaderWithPriceOnProductLoad:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLrockstarmobile/Rockstar$Callback;)V
    .locals 2

    .line 7
    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->getDefaultButton()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->getDefaultButtonStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lrockstarmobile/ui/FlutterGateScreen;->getArgs(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->getScreenName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, v1, p1, p2}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lrockstarmobile/ui/FlutterGateScreen;->setSubheaderWithPriceOnProductLoad:Z

    .line 23
    iput-object p4, p0, Lrockstarmobile/ui/FlutterGateScreen;->completed:Lrockstarmobile/Rockstar$Callback;

    return-void
.end method

.method public constructor <init>(ZLrockstarmobile/Rockstar$Callback;)V
    .locals 4

    .line 1
    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->getDefaultButton()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->getDefaultButtonStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->getDefaultHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->getDefaultSubheader()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lrockstarmobile/ui/FlutterGateScreen;->getArgs(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lrockstarmobile/ui/FlutterGateScreen;->setSubheaderWithPriceOnProductLoad:Z

    .line 3
    invoke-static {}, Lrockstarmobile/Rockstar;->getSubscriptions()Lrockstarmobile/GCSubscriptions;

    move-result-object p1

    invoke-virtual {p1}, Lrockstarmobile/GCSubscriptions;->getFullGameProduct()Lcom/android/billingclient/api/ProductDetails;

    move-result-object p1

    .line 4
    iput-object p2, p0, Lrockstarmobile/ui/FlutterGateScreen;->completed:Lrockstarmobile/Rockstar$Callback;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lrockstarmobile/ui/FlutterGateScreen;->loadingGotProduct(Lcom/android/billingclient/api/ProductDetails;)V

    :cond_0
    return-void
.end method

.method private static getArgs(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->conf()Lrockstarmobile/GCState$Config;

    move-result-object v0

    iget-object v0, v0, Lrockstarmobile/GCState$Config;->gates:Lrockstarmobile/GCState$ConfigGates;

    iget-object v0, v0, Lrockstarmobile/GCState$ConfigGates;->config:Lrockstarmobile/GCConfig$GatesConfig;

    iget v0, v0, Lrockstarmobile/GCConfig$GatesConfig;->timedGateSeconds:I

    invoke-static {}, Lrockstarmobile/GCState;->trialSecondsSpent()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v3, "TRY GAME FOR [minutes] MIN"

    const-string v4, "UNLOCK_TRY_GAME_FOR"

    const/4 v5, 0x1

    const-string v6, "[minutes]"

    const/4 v7, 0x2

    const-string v8, ""

    if-lez v0, :cond_0

    .line 6
    invoke-static {v0}, Lrockstarmobile/ui/TrialBanner;->durationString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/String;

    aput-object v6, v10, v1

    aput-object v9, v10, v5

    const-string v9, "UNLOCK_CONTINUE_GAME_FOR"

    const-string v11, "CONTINUE GAME FOR [minutes] MIN"

    invoke-static {v9, v11, v10}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-static {}, Lrockstarmobile/GCState;->trialSecondsSpent()I

    move-result v10

    if-nez v10, :cond_1

    .line 8
    invoke-static {v0}, Lrockstarmobile/ui/TrialBanner;->durationString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/String;

    aput-object v6, v10, v1

    aput-object v9, v10, v5

    invoke-static {v4, v3, v10}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    move-object v9, v8

    .line 12
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v10, "dismissable"

    invoke-virtual {v2, v10, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p2, "heading"

    invoke-virtual {v2, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v10, "subheading"

    invoke-virtual {v2, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxLogo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "logo"

    invoke-virtual {v2, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxBackground()Ljava/lang/String;

    move-result-object v11

    const-string v12, "background"

    invoke-virtual {v2, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v11, "button2"

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-boolean v9, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v9, :cond_3

    .line 19
    invoke-virtual {v2, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v2, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-array p0, v1, [Ljava/lang/String;

    const-string p1, "UNLOCK_I_HAVE_GTAPLUS"

    const-string p2, "UNLOCK WITH [gtaplus]"

    invoke-static {p1, p2, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "button1"

    invoke-virtual {v2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string p0, "button1style"

    const-string p1, "awesome"

    invoke-virtual {v2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v0, :cond_2

    .line 23
    invoke-static {v0}, Lrockstarmobile/ui/TrialBanner;->durationString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v7, [Ljava/lang/String;

    aput-object v6, p1, v1

    aput-object p0, p1, v5

    invoke-static {v4, v3, p1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method private static getDefaultButton()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "button3"

    return-object v0

    .line 4
    :cond_0
    const-string v0, "button1"

    return-object v0
.end method

.method private static getDefaultButtonStyle()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v0, :cond_0

    .line 2
    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    const-string v0, "awesome"

    return-object v0
.end method

.method private static getDefaultHeader()Ljava/lang/String;
    .locals 4

    .line 1
    sget-boolean v0, Lrockstarmobile/Include;->GTAPlus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "UNLOCK_HEADER_GTAPLUS"

    const-string v2, "Buy the Full Game or Unlock it with GTA+"

    invoke-static {v1, v2, v0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v0, v0, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v0, v0, Lrockstarmobile/GCConfig$GeneralConfig;->name:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "[game]"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "UNLOCK_HEADER_DEFAULT"

    const-string v1, "Buy [game] to unlock the full version of the game."

    invoke-static {v0, v1, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSubheader()Ljava/lang/String;
    .locals 5

    .line 1
    sget-boolean v0, Lrockstarmobile/Include;->GTAPlus:Z

    const/4 v1, 0x1

    const-string v2, "[minutes]"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->totalTrialTimeInMinutes()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v3

    aput-object v0, v4, v1

    const-string v0, "UNLOCK_SUBHEADER_GTAPLUS"

    const-string v1, "This game is free to play for the first [minutes] minutes. Buy the full game or unlock it with your GTA+ Membership to access the full game for as long as it is included in GTA+ and you remain subscribed."

    invoke-static {v0, v1, v4}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->totalTrialTimeInMinutes()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v3

    aput-object v0, v4, v1

    const-string v0, "UNLOCK_SUBHEADER_DEFAULT"

    const-string v1, "This game is free to play for the first [minutes] minutes."

    invoke-static {v0, v1, v4}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getScreenName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->conf()Lrockstarmobile/GCState$Config;

    move-result-object v0

    iget-object v0, v0, Lrockstarmobile/GCState$Config;->gates:Lrockstarmobile/GCState$ConfigGates;

    iget-object v0, v0, Lrockstarmobile/GCState$ConfigGates;->config:Lrockstarmobile/GCConfig$GatesConfig;

    iget v0, v0, Lrockstarmobile/GCConfig$GatesConfig;->timedGateSeconds:I

    invoke-static {}, Lrockstarmobile/GCState;->trialSecondsSpent()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "Time is up"

    goto :goto_0

    :cond_0
    const-string v0, "Continue"

    :goto_0
    const-string v1, "Purchase Gate - "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static totalTrialTimeInMinutes()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->conf()Lrockstarmobile/GCState$Config;

    move-result-object v0

    iget-object v0, v0, Lrockstarmobile/GCState$Config;->gates:Lrockstarmobile/GCState$ConfigGates;

    iget-object v0, v0, Lrockstarmobile/GCState$ConfigGates;->config:Lrockstarmobile/GCConfig$GatesConfig;

    iget v0, v0, Lrockstarmobile/GCConfig$GatesConfig;->timedGateSeconds:I

    invoke-static {v0}, Lrockstarmobile/ui/TrialBanner;->durationString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, ":00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public dismiss(Lrockstarmobile/ui/FlutterScreenHost;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterGateScreen;->completed:Lrockstarmobile/Rockstar$Callback;

    invoke-interface {v0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lrockstarmobile/ui/FlutterScreen;->dismiss(Lrockstarmobile/ui/FlutterScreenHost;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "button1"

    const-string v3, "button2"

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_0

    :sswitch_2
    const-string v1, "footerurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 85
    :goto_0
    const-string v0, "text"

    const-string v1, "element_label"

    packed-switch v5, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 86
    :pswitch_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 87
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string p2, ""

    invoke-virtual {p0, v3, p2}, Lrockstarmobile/ui/FlutterScreen;->stateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string p2, "play_trial"

    invoke-static {p2, p1}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    invoke-static {v4}, Lrockstarmobile/GCState;->setIsTrialActive(Z)V

    .line 92
    iget-object p1, p0, Lrockstarmobile/ui/FlutterGateScreen;->completed:Lrockstarmobile/Rockstar$Callback;

    invoke-interface {p1}, Lrockstarmobile/Rockstar$Callback;->callback()V

    .line 93
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-virtual {p1, v4}, Lrockstarmobile/ui/FlutterScreenHost;->close(Z)V

    return-void

    .line 94
    :pswitch_1
    sget-boolean v3, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v3, :cond_4

    .line 95
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string p2, "gateunlock"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lrockstarmobile/ui/FlutterScreen;->state:Ljava/util/HashMap;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string p2, "cta_unlock_game"

    invoke-static {p2, p1}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    new-instance p1, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda0;-><init>(Lrockstarmobile/ui/FlutterGateScreen;)V

    .line 116
    new-instance p2, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda1;-><init>(Lrockstarmobile/ui/FlutterGateScreen;Lrockstarmobile/Rockstar$ABCallback;)V

    .line 135
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {p0, v4}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->setLoading(Z)V

    .line 139
    new-instance v1, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1, v0}, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda2;-><init>(Lrockstarmobile/ui/FlutterGateScreen;Ljava/lang/Runnable;Lrockstarmobile/Rockstar$ABCallback;Lrockstarmobile/RockstarUser;)V

    invoke-static {v1}, Lrockstarmobile/Rockstar;->checkAuthTokenValidity(Lrockstarmobile/Rockstar$TCallback;)V

    return-void

    .line 151
    :cond_3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 156
    :cond_4
    invoke-super {p0, p1, p2}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 169
    :pswitch_2
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 170
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 171
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 172
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x268e9a0c -> :sswitch_2
        0xe62bf3f -> :sswitch_1
        0xe62bf40 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$handleMethodCall$0$rockstarmobile-ui-FlutterGateScreen()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterGateScreen;->completed:Lrockstarmobile/Rockstar$Callback;

    invoke-interface {v0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method

.method synthetic lambda$handleMethodCall$1$rockstarmobile-ui-FlutterGateScreen(Lrockstarmobile/ui/FlutterScreenHost;Lrockstarmobile/ui/FlutterScreenHost;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lrockstarmobile/ui/FlutterScreenHost;->setScreen(Lrockstarmobile/ui/FlutterScreen;)V

    return-void
.end method

.method synthetic lambda$handleMethodCall$2$rockstarmobile-ui-FlutterGateScreen()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterGateScreen;->completed:Lrockstarmobile/Rockstar$Callback;

    invoke-interface {v0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method

.method synthetic lambda$handleMethodCall$3$rockstarmobile-ui-FlutterGateScreen(Lrockstarmobile/ui/FlutterScreenHost;Lrockstarmobile/ui/FlutterScreenHost;)V
    .locals 1

    .line 1
    new-instance p2, Lrockstarmobile/ui/FlutterMembershipConfirmedScreen;

    new-instance v0, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda6;-><init>(Lrockstarmobile/ui/FlutterGateScreen;)V

    invoke-direct {p2, v0}, Lrockstarmobile/ui/FlutterMembershipConfirmedScreen;-><init>(Lrockstarmobile/Rockstar$Callback;)V

    invoke-virtual {p1, p2}, Lrockstarmobile/ui/FlutterScreenHost;->setScreen(Lrockstarmobile/ui/FlutterScreen;)V

    return-void
.end method

.method synthetic lambda$handleMethodCall$4$rockstarmobile-ui-FlutterGateScreen(Lrockstarmobile/ui/FlutterScreenHost;Lrockstarmobile/RockstarUser;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    sget-object v1, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p2, Lrockstarmobile/ui/FlutterMembershipConfirmedScreen;

    new-instance v0, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda3;-><init>(Lrockstarmobile/ui/FlutterGateScreen;)V

    invoke-direct {p2, v0}, Lrockstarmobile/ui/FlutterMembershipConfirmedScreen;-><init>(Lrockstarmobile/Rockstar$Callback;)V

    invoke-virtual {p1, p2}, Lrockstarmobile/ui/FlutterScreenHost;->setScreen(Lrockstarmobile/ui/FlutterScreen;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;

    new-instance v1, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda4;-><init>(Lrockstarmobile/ui/FlutterGateScreen;Lrockstarmobile/ui/FlutterScreenHost;)V

    new-instance v2, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda5;-><init>(Lrockstarmobile/ui/FlutterGateScreen;Lrockstarmobile/ui/FlutterScreenHost;)V

    const/4 v3, 0x1

    invoke-direct {v0, p2, v3, v1, v2}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;-><init>(Lrockstarmobile/RockstarUser;ZLrockstarmobile/Rockstar$TCallback;Lrockstarmobile/Rockstar$TCallback;)V

    invoke-virtual {p1, v0}, Lrockstarmobile/ui/FlutterScreenHost;->setScreen(Lrockstarmobile/ui/FlutterScreen;)V

    return-void
.end method

.method synthetic lambda$handleMethodCall$5$rockstarmobile-ui-FlutterGateScreen(Lrockstarmobile/Rockstar$ABCallback;Lrockstarmobile/ui/FlutterScreenHost;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Lrockstarmobile/ui/FlutterScreenHost;->close(Z)V

    .line 4
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-interface {p1, v0, p2}, Lrockstarmobile/Rockstar$ABCallback;->callback(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$handleMethodCall$6$rockstarmobile-ui-FlutterGateScreen(Lrockstarmobile/Rockstar$ABCallback;)V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;

    sget-object v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->SlidingUpsell:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    new-instance v2, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda7;-><init>(Lrockstarmobile/ui/FlutterGateScreen;Lrockstarmobile/Rockstar$ABCallback;)V

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;Lrockstarmobile/Rockstar$TCallback;)V

    .line 15
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    sget-object v1, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->PORTRAIT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {p1, v0, v1}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    return-void
.end method

.method synthetic lambda$handleMethodCall$7$rockstarmobile-ui-FlutterGateScreen(Ljava/lang/Runnable;Lrockstarmobile/Rockstar$ABCallback;Lrockstarmobile/RockstarUser;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 2
    invoke-static {}, Lrockstarmobile/Rockstar;->invalidateUser()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->setLoading(Z)V

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-interface {p2, p1, p3}, Lrockstarmobile/Rockstar$ABCallback;->callback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->setLoading(Z)V

    return-void
.end method

.method protected loadingGotProduct(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->loadingGotProduct(Lcom/android/billingclient/api/ProductDetails;)V

    .line 2
    iget-boolean v0, p0, Lrockstarmobile/ui/FlutterGateScreen;->setSubheaderWithPriceOnProductLoad:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->totalTrialTimeInMinutes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "[minutes]"

    aput-object v6, v4, v5

    const/4 v7, 0x1

    aput-object v1, v4, v7

    const/4 v1, 0x2

    const-string v8, "[price]"

    aput-object v8, v4, v1

    const/4 v9, 0x3

    aput-object v2, v4, v9

    const-string v2, "UNLOCK_SUBHEADER_DEFAULT_WITH_PRICE"

    const-string v10, "This game is free to play for the first [minutes] minutes. Buy the full game for just [price]."

    invoke-static {v2, v10, v4}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "subheading"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-boolean v2, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->totalTrialTimeInMinutes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v6, v3, v5

    aput-object v2, v3, v7

    aput-object v8, v3, v1

    aput-object p1, v3, v9

    const-string p1, "UNLOCK_SUBHEADER_WITH_PRICE"

    const-string v1, "This game is free to play for the first [minutes] minutes. Buy the full game for [price] or unlock it with your GTA+ Membership to access the full game for as long as it is included in GTA+ and you remain subscribed."

    invoke-static {p1, v1, v3}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public purchaseDoneScreenDismissed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterGateScreen;->completed:Lrockstarmobile/Rockstar$Callback;

    invoke-interface {v0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method
