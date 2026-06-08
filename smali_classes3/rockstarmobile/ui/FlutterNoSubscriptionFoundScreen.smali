.class public Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;
.super Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# instance fields
.field private completed:Lrockstarmobile/Rockstar$TCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrockstarmobile/Rockstar$TCallback<",
            "Lrockstarmobile/ui/FlutterScreenHost;",
            ">;"
        }
    .end annotation
.end field

.field private onDismiss:Lrockstarmobile/Rockstar$TCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrockstarmobile/Rockstar$TCallback<",
            "Lrockstarmobile/ui/FlutterScreenHost;",
            ">;"
        }
    .end annotation
.end field

.field private user:Lrockstarmobile/RockstarUser;


# direct methods
.method public constructor <init>(Lrockstarmobile/RockstarUser;ZLrockstarmobile/Rockstar$TCallback;Lrockstarmobile/Rockstar$TCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrockstarmobile/RockstarUser;",
            "Z",
            "Lrockstarmobile/Rockstar$TCallback<",
            "Lrockstarmobile/ui/FlutterScreenHost;",
            ">;",
            "Lrockstarmobile/Rockstar$TCallback<",
            "Lrockstarmobile/ui/FlutterScreenHost;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0, p3}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->getArgs(ZZLrockstarmobile/Rockstar$TCallback;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "Select your platform"

    goto :goto_0

    :cond_0
    const-string p2, "Membership Not Active"

    :goto_0
    const-string v1, "button1"

    const-string v2, "awesome"

    invoke-direct {p0, v1, v2, v0, p2}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->user:Lrockstarmobile/RockstarUser;

    .line 3
    iput-object p3, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->onDismiss:Lrockstarmobile/Rockstar$TCallback;

    .line 4
    iput-object p4, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->completed:Lrockstarmobile/Rockstar$TCallback;

    .line 5
    const-string p1, "membership_failed"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$000(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;)Lrockstarmobile/RockstarUser;
    .locals 0

    .line 1
    iget-object p0, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->user:Lrockstarmobile/RockstarUser;

    return-object p0
.end method

.method static synthetic access$100(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;)Lrockstarmobile/Rockstar$TCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->onDismiss:Lrockstarmobile/Rockstar$TCallback;

    return-object p0
.end method

.method static synthetic access$200(ZZLrockstarmobile/Rockstar$TCallback;)Ljava/util/HashMap;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->getArgs(ZZLrockstarmobile/Rockstar$TCallback;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private static getArgs(ZZLrockstarmobile/Rockstar$TCallback;)Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrockstarmobile/Rockstar$TCallback<",
            "Lrockstarmobile/ui/FlutterScreenHost;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dismissable"

    const-string v2, "buttonsloading"

    const-string v3, ""

    const-string v4, "button3"

    const-string v5, "button2"

    const-string v6, "footer"

    const-string v7, "button4visible"

    const-string v8, "button1visible"

    const-string v9, "subheading"

    const-string v10, "heading"

    const-string v11, "background"

    const-string v12, "assets/images/gtapluslogo.png"

    const-string v13, "logo"

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxBackground()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-array v11, v15, [Ljava/lang/String;

    const-string v12, "NO_SUBSCRIPTION_FOUND_FIRST_HEADING"

    const-string v13, "Select your platform"

    invoke-static {v12, v13, v11}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-array v10, v15, [Ljava/lang/String;

    const-string v11, "NO_SUBSCRIPTION_FOUND_FIRST_SUBHEADING"

    const-string v12, "Log in to your PlayStation or Xbox account that has an active GTA+ subscription. This will link the console account to your Rockstar Games account."

    invoke-static {v11, v12, v10}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-array v3, v15, [Ljava/lang/String;

    const-string v6, "NO_SUBSCRIPTION_FOUND_LOGIN_WITH_PLAYSTATION"

    const-string v7, "LOGIN WITH PLAYSTATION"

    invoke-static {v6, v7, v3}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-array v3, v15, [Ljava/lang/String;

    const-string v5, "NO_SUBSCRIPTION_FOUND_LOGIN_WITH_XBOX"

    const-string v6, "LOGIN WITH XBOX"

    invoke-static {v5, v6, v3}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v14, v15

    .line 13
    :goto_0
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 15
    :cond_1
    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxBackground()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-array v11, v15, [Ljava/lang/String;

    const-string v12, "NO_SUBSCRIPTION_FOUND_HEADING"

    const-string v13, "We\u2019re not seeing an active GTA+ membership"

    invoke-static {v12, v13, v11}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-array v10, v15, [Ljava/lang/String;

    const-string v11, "NO_SUBSCRIPTION_FOUND_SUBHEADING"

    const-string v12, "Launch GTA Online on your console while logged in to your PlayStation or Xbox account that has an active GTA+ subscription, then tap \"Check for GTA+ Again\". If you don\'t have GTA+, you can buy the full game with in-app purchase."

    invoke-static {v11, v12, v10}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-array v7, v15, [Ljava/lang/String;

    const-string v8, "SOCIALCLUB_LEGAL_LINK"

    const-string v9, "https://www.rockstargames.com/legal"

    invoke-static {v8, v9, v7}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 23
    new-array v8, v15, [Ljava/lang/String;

    const-string v9, "SOCIALCLUB_PRIVACY_LINK"

    const-string v10, "https://www.rockstargames.com/privacy"

    invoke-static {v9, v10, v8}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    .line 24
    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "[legalLink]"

    aput-object v10, v9, v15

    aput-object v7, v9, v14

    const/4 v7, 0x2

    const-string v10, "[privacyPolicyLink]"

    aput-object v10, v9, v7

    const/4 v7, 0x3

    aput-object v8, v9, v7

    const-string v7, "UNLOCK_FOOTER_ANDROID"

    const-string v8, "By tapping Buy Full Game and completing your purchase, you confirm that you have read, understood, and agree to be bound by Rockstar\'s Terms of Service ([legalLink]), and acknowledge that you have read and understood the Privacy Policy ([privacyPolicyLink])."

    invoke-static {v7, v8, v9}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-array v6, v15, [Ljava/lang/String;

    const-string v7, "NO_SUBSCRIPTION_FOUND_RECHECK"

    const-string v8, "CHECK FOR GTA+ AGAIN"

    invoke-static {v7, v8, v6}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v14, v15

    .line 29
    :goto_1
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic lambda$platformLink$0()V
    .locals 0

    return-void
.end method

.method private openUrl(Landroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private platformLink(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "buttonsloading"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "dismissable"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    .line 6
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    iget-object v1, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->user:Lrockstarmobile/RockstarUser;

    new-instance v2, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$$ExternalSyntheticLambda1;-><init>(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;)V

    invoke-static {v0, v1, p1, v2, v3}, Lrockstarmobile/ui/BrowserScreen;->launchPlatformLink(Landroid/app/Activity;Lrockstarmobile/RockstarUser;Ljava/lang/String;Lrockstarmobile/ui/BrowserScreen$OpenedCallback;Lrockstarmobile/ui/BrowserScreen$PlatformLinkedCallback;)V

    return-void
.end method

.method private refresh(J)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "buttonsloading"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "dismissable"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    .line 6
    iget-object v0, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->completed:Lrockstarmobile/Rockstar$TCallback;

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;

    invoke-direct {v2, p0, v0}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;-><init>(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;Lrockstarmobile/Rockstar$TCallback;)V

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dismiss(Lrockstarmobile/ui/FlutterScreenHost;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->onDismiss:Lrockstarmobile/Rockstar$TCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lrockstarmobile/ui/FlutterScreen;->dismiss(Lrockstarmobile/ui/FlutterScreenHost;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "button2"

    const-string v3, "button3"

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "footerurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 34
    :goto_0
    const-string v0, "cta_login"

    const-string v1, "text"

    const-string v5, "element_label"

    const-string v6, ""

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 35
    :pswitch_0
    const-string p1, "xbl"

    invoke-direct {p0, p1}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->platformLink(Ljava/lang/String;)V

    .line 37
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 38
    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v3, v6}, Lrockstarmobile/ui/FlutterScreen;->stateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v0, p1}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 41
    :pswitch_1
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreen;->state:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 p1, 0x1f4

    .line 43
    invoke-direct {p0, p1, p2}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->refresh(J)V

    return-void

    .line 45
    :cond_3
    const-string p1, "np"

    invoke-direct {p0, p1}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->platformLink(Ljava/lang/String;)V

    .line 47
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 48
    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v2, v6}, Lrockstarmobile/ui/FlutterScreen;->stateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {v0, p1}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 65
    :pswitch_2
    :try_start_0
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->openUrl(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lio/sentry/Sentry;->captureException(Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x268e9a0c -> :sswitch_2
        0xe62bf40 -> :sswitch_1
        0xe62bf41 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$platformLink$1$rockstarmobile-ui-FlutterNoSubscriptionFoundScreen()V
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->refresh(J)V

    return-void
.end method

.method public purchaseDoneScreenDismissed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->completed:Lrockstarmobile/Rockstar$TCallback;

    iget-object v1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-interface {v0, v1}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    return-void
.end method
