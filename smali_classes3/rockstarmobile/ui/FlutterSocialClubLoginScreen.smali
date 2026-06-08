.class public Lrockstarmobile/ui/FlutterSocialClubLoginScreen;
.super Lrockstarmobile/ui/FlutterScreen;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Lrockstarmobile/ui/BrowserScreen$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;
    }
.end annotation


# static fields
.field private static final log:Lrockstarmobile/utilities/Log;


# instance fields
.field bob:Ljava/lang/Object;

.field private completion:Lrockstarmobile/Rockstar$TCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrockstarmobile/Rockstar$TCallback<",
            "Lrockstarmobile/ui/FlutterScreenHost;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "FlutterSocialClubLoginScreen"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->log:Lrockstarmobile/utilities/Log;

    return-void
.end method

.method public constructor <init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;Lrockstarmobile/Rockstar$TCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;",
            "Lrockstarmobile/Rockstar$TCallback<",
            "Lrockstarmobile/ui/FlutterScreenHost;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->SlidingUpsell:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    if-ne p1, v0, :cond_0

    const-string v1, "/socialclubintro"

    goto :goto_0

    :cond_0
    const-string v1, "/options"

    :goto_0
    if-ne p1, v0, :cond_1

    const-string v0, "SocialClubIntroScreen"

    goto :goto_1

    :cond_1
    const-string v0, "OptionsScreen"

    :goto_1
    invoke-static {p1}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->getArgs(Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->getScreenName(Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lrockstarmobile/ui/FlutterScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->bob:Ljava/lang/Object;

    .line 86
    iput-object p1, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->mode:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    .line 87
    iput-object p2, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->completion:Lrockstarmobile/Rockstar$TCallback;

    return-void
.end method

.method private static getArgs(Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    const-string v3, "assets/images/rockstar.png"

    const-string v4, "logo"

    const-string v5, "assets/images/rockstarbg.png"

    const-string v6, "background"

    if-eq p0, v2, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-array p0, v1, [Ljava/lang/String;

    const-string v1, "LOADING"

    const-string v2, "loading..."

    invoke-static {v1, v2, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "loading"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 51
    :cond_1
    new-array p0, v1, [Ljava/lang/String;

    const-string v2, "SOCIALCLUB_LAUNCHSIGNIN_HEADING"

    const-string v7, "Sign in with your Rockstar Games account"

    invoke-static {v2, v7, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "heading"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-array p0, v1, [Ljava/lang/String;

    const-string v2, "SOCIALCLUB_LAUNCHSIGNIN_SUBHEADING"

    const-string v7, "Signing in enables the use of Cloud Saving. Games can be saved to the Cloud Slots and accessed from compatible devices"

    invoke-static {v2, v7, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "subheading"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-array p0, v1, [Ljava/lang/String;

    const-string v2, "SOCIALCLUB_LAUNCHSIGNIN_SIGNINBUTTON"

    const-string v3, "Sign in"

    invoke-static {v2, v3, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "button1"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string p0, "button1style"

    const-string v2, "primary"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-array p0, v1, [Ljava/lang/String;

    const-string v2, "SOCIALCLUB_LAUNCHSIGNIN_SIGNUPBUTTON"

    const-string v3, "Sign up"

    invoke-static {v2, v3, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "button2"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-array p0, v1, [Ljava/lang/String;

    const-string v1, "SOCIALCLUB_LAUNCHSIGNIN_SKIPBUTTON"

    const-string v2, "Skip Sign in"

    invoke-static {v1, v2, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "button3"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 59
    :cond_2
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxLogo()Ljava/lang/String;

    move-result-object p0

    .line 60
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "SOCIALCLUB_SIGNIN_INTRO_SLIDE1_HEADING_DEFAULT"

    const-string v4, "Let\'s Hook You Up"

    invoke-static {v3, v4, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "SOCIALCLUB_SIGNIN_INTRO_SLIDE1_SUBHEADING_DEFAULT"

    const-string v5, "Sign in to your Rockstar Games account."

    invoke-static {v4, v5, v3}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxBackground()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxBackground()Ljava/lang/String;

    move-result-object v5

    .line 64
    sget-boolean v6, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v6, :cond_3

    .line 65
    new-array p0, v1, [Ljava/lang/String;

    const-string v2, "SOCIALCLUB_SIGNIN_INTRO_SLIDE1_HEADING"

    const-string v3, "Play with GTA+"

    invoke-static {v2, v3, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    new-array p0, v1, [Ljava/lang/String;

    const-string v3, "SOCIALCLUB_SIGNIN_INTRO_SLIDE1_SUBHEADING"

    const-string v6, "Sign in to your Rockstar Games account to confirm your GTA+ membership and unlock the full game for as long as it is included in GTA+ and you remain subscribed."

    invoke-static {v3, v6, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "assets/images/gtapluslogo.png"

    .line 71
    :cond_3
    const-string v6, "slide1logo"

    invoke-virtual {v0, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string p0, "slide1heading"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string p0, "slide1subheading"

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string p0, "slide1background"

    invoke-virtual {v0, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string p0, "slide2logo"

    const-string v2, ""

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string p0, "slide2heading"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string p0, "slide2subheading"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string p0, "slide2background"

    invoke-virtual {v0, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string p0, "slide3logo"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string p0, "slide3heading"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string p0, "slide3subheading"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string p0, "slide3background"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string p0, "slide4logo"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string p0, "slide4heading"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string p0, "slide4subheading"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string p0, "slide4background"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-array p0, v1, [Ljava/lang/String;

    const-string v2, "SOCIALCLUB_SIGNIN_INTRO_SIGNIN"

    const-string v3, "SIGN IN"

    invoke-static {v2, v3, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "signin"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-array p0, v1, [Ljava/lang/String;

    const-string v1, "SOCIALCLUB_SIGNIN_INTRO_SIGNUP"

    const-string v2, "I don\'t have a Rockstar Games account"

    invoke-static {v1, v2, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "signup"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getScreenName(Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "Sign in direct"

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 11
    const-string p0, "Login"

    return-object p0

    :cond_0
    return-object v1

    .line 14
    :cond_1
    const-string p0, "Rockstar Account on launch"

    return-object p0

    .line 15
    :cond_2
    const-string p0, "Rockstar Account"

    return-object p0
.end method

.method static synthetic lambda$onResult$4()V
    .locals 0

    return-void
.end method


# virtual methods
.method public handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "socialclubsignup"

    const-string v3, "socialclubsignin"

    const-string v4, "button3"

    const-string v5, "button2"

    const-string v6, "button1"

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    .line 47
    :goto_0
    const-string v0, "create"

    const-string v1, "signin"

    const/4 v8, 0x0

    const-string v9, ""

    packed-switch v7, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lrockstarmobile/ui/FlutterScreen;->handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 48
    :pswitch_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v0, "element_label"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v4, v9}, Lrockstarmobile/ui/FlutterScreen;->stateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "cta_skip_login"

    invoke-static {v0, p1}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    .line 54
    invoke-static {}, Lrockstarmobile/GCState;->getAcceptedLaunchTerms()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 55
    new-instance v0, Lrockstarmobile/ui/FlutterLegalScreen;

    new-instance v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda3;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen;Lrockstarmobile/ui/FlutterScreenHost;)V

    invoke-direct {v0, v1}, Lrockstarmobile/ui/FlutterLegalScreen;-><init>(Lrockstarmobile/Rockstar$Callback;)V

    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterScreen;->setScreen(Lrockstarmobile/ui/FlutterScreen;)V

    goto :goto_1

    .line 60
    :cond_5
    iget-object p1, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->completion:Lrockstarmobile/Rockstar$TCallback;

    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-interface {p1, v0}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    .line 62
    :goto_1
    invoke-interface {p2, v8}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 63
    :pswitch_1
    invoke-virtual {p0, v5, v9}, Lrockstarmobile/ui/FlutterScreen;->stateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v5, p1}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-interface {p2, v8}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 65
    :pswitch_2
    invoke-virtual {p0, v6, v9}, Lrockstarmobile/ui/FlutterScreen;->stateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v6, p1}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-interface {p2, v8}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 67
    :pswitch_3
    const-string p1, "signup"

    invoke-virtual {p0, p1, v9}, Lrockstarmobile/ui/FlutterScreen;->stateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v2, p1}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-interface {p2, v8}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 69
    :pswitch_4
    invoke-virtual {p0, v1, v9}, Lrockstarmobile/ui/FlutterScreen;->stateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v3, p1}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-interface {p2, v8}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x448158fb -> :sswitch_4
        -0x44815785 -> :sswitch_3
        0xe62bf3f -> :sswitch_2
        0xe62bf40 -> :sswitch_1
        0xe62bf41 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$handleMethodCall$0$rockstarmobile-ui-FlutterSocialClubLoginScreen(Lrockstarmobile/ui/FlutterScreenHost;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lrockstarmobile/GCState;->setAcceptedLaunchTerms(Z)V

    .line 2
    iget-object v0, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->completion:Lrockstarmobile/Rockstar$TCallback;

    invoke-interface {v0, p1}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onResult$2$rockstarmobile-ui-FlutterSocialClubLoginScreen(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "loading"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    return-void
.end method

.method synthetic lambda$onResult$3$rockstarmobile-ui-FlutterSocialClubLoginScreen(Lrockstarmobile/RockstarUser;Lrockstarmobile/GCState$GameTicket;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lrockstarmobile/GCState;->setUser(Lrockstarmobile/RockstarUser;)V

    .line 2
    invoke-static {p2}, Lrockstarmobile/GCState;->setUserGameTicket(Lrockstarmobile/GCState$GameTicket;)V

    .line 3
    invoke-static {}, Lrockstarmobile/Rockstar;->checkPlayerTicketChange()V

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5
    const-string p2, "method"

    const-string v0, "Rockstar Games"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string p2, "login"

    invoke-static {p2, p1}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    iget-object p1, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->completion:Lrockstarmobile/Rockstar$TCallback;

    iget-object p2, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-interface {p1, p2}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onResult$5$rockstarmobile-ui-FlutterSocialClubLoginScreen(Lrockstarmobile/Rockstar$Callback;Z)V
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p1}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->reset()V

    return-void
.end method

.method synthetic lambda$onResult$6$rockstarmobile-ui-FlutterSocialClubLoginScreen(Lrockstarmobile/RockstarUser;Lrockstarmobile/GCState$GameTicket;)V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda5;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen;Lrockstarmobile/RockstarUser;Lrockstarmobile/GCState$GameTicket;)V

    .line 10
    iget-object p2, p1, Lrockstarmobile/RockstarUser;->acceptedAllPolicies:Lrockstarmobile/RockstarUser$POLICY_STATE;

    sget-object v1, Lrockstarmobile/RockstarUser$POLICY_STATE;->YES:Lrockstarmobile/RockstarUser$POLICY_STATE;

    if-ne p2, v1, :cond_0

    .line 11
    invoke-interface {v0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void

    .line 13
    :cond_0
    iget-object p2, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    new-instance v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda6;-><init>()V

    new-instance v2, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda7;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen;Lrockstarmobile/Rockstar$Callback;)V

    invoke-static {p2, p1, v1, v2}, Lrockstarmobile/ui/BrowserScreen;->launchAcceptTermsFlow(Landroid/app/Activity;Lrockstarmobile/RockstarUser;Lrockstarmobile/ui/BrowserScreen$OpenedCallback;Lrockstarmobile/ui/BrowserScreen$AcceptTermsCallback;)V

    return-void
.end method

.method synthetic lambda$onResult$7$rockstarmobile-ui-FlutterSocialClubLoginScreen(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->reset()V

    return-void
.end method

.method synthetic lambda$onResult$8$rockstarmobile-ui-FlutterSocialClubLoginScreen(Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 5

    .line 1
    sget-object v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->log:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lrockstarmobile/utilities/HttpAPI$Error;->message:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " code:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lrockstarmobile/utilities/HttpAPI$Error;->code:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", details: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lrockstarmobile/utilities/HttpAPI$Error;->details:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    const-string v1, "loading"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    .line 9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "LOGIN_COMPLETE_ERROR_HEADING"

    const-string v4, "Error"

    invoke-static {v2, v4, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 11
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 12
    iget-object p1, p1, Lrockstarmobile/utilities/HttpAPI$Error;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 13
    new-array p1, v3, [Ljava/lang/String;

    const-string v1, "LOGIN_COMPLETE_ERROR_OKAY"

    const-string v2, "Okay"

    invoke-static {v1, v2, p1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda4;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 16
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method synthetic lambda$start$1$rockstarmobile-ui-FlutterSocialClubLoginScreen(Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    const-string v1, ""

    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->reset()V

    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 9
    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "LOADING"

    const-string v5, "loading..."

    invoke-static {v4, v5, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "loading"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, v1}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    .line 12
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 14
    new-instance v2, Lrockstarmobile/RockstarUser;

    sget-object v15, Lrockstarmobile/RockstarUser$POLICY_STATE;->UNKNOWN:Lrockstarmobile/RockstarUser$POLICY_STATE;

    sget-object v17, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->UNKNOWN_REQUIRES_AUTH_TOKEN:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    const-string v11, ""

    const-string v12, ""

    const-string v6, ""

    const-string v9, ""

    move-object v5, v4

    move-object v7, v4

    move-object v8, v4

    move-object v10, v4

    move-object/from16 v16, v4

    move-object/from16 v18, v4

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v19, p4

    invoke-direct/range {v2 .. v19}, Lrockstarmobile/RockstarUser;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/RockstarUser$POLICY_STATE;Ljava/util/Date;Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;Ljava/util/Date;Ljava/lang/String;)V

    new-instance v11, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda0;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen;)V

    new-instance v12, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda1;

    invoke-direct {v12, v0}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda1;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen;)V

    new-instance v13, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda2;

    invoke-direct {v13, v0}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda2;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen;)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v13}, Lrockstarmobile/SocialClubAPI;->refresh(Lrockstarmobile/RockstarUser;ZZZZZLrockstarmobile/SocialClubAPI$StatusCallback;Lrockstarmobile/SocialClubAPI$RefreshCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->mode:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    sget-object v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->ScAuthDirectSignin:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    const-string v2, "game_ui"

    if-ne v0, v1, :cond_0

    .line 2
    const-string v0, "signin"

    invoke-virtual {p0, v0, v2, v2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->ScAuthDirectSignup:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    if-ne v0, v1, :cond_1

    .line 4
    const-string v0, "create"

    invoke-virtual {p0, v0, v2, v2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->mode:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    sget-object v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->ScAuthDirectSignup:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->ScAuthDirectSignin:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string v1, "loading"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    return-void

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->completion:Lrockstarmobile/Rockstar$TCallback;

    iget-object v1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-interface {v0, v1}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v1, "element_label"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "text"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string p2, "create"

    if-ne p1, p2, :cond_1

    const-string p2, "cta_signup"

    goto :goto_1

    :cond_1
    const-string p2, "cta_login"

    :goto_1
    invoke-static {p2, v0}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    .line 7
    new-array p3, p3, [Ljava/lang/String;

    const-string v0, "LOADING"

    const-string v1, "loading..."

    invoke-static {v0, v1, p3}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "loading"

    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p3, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    new-instance v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda8;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen;Ljava/util/HashMap;)V

    invoke-static {p3, p1, v0, p0}, Lrockstarmobile/ui/BrowserScreen;->launchLogin(Landroid/app/Activity;Ljava/lang/String;Lrockstarmobile/ui/BrowserScreen$OpenedCallback;Lrockstarmobile/ui/BrowserScreen$LoginCallback;)V

    return-void
.end method
