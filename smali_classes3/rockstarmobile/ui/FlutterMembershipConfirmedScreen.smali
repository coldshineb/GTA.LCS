.class public Lrockstarmobile/ui/FlutterMembershipConfirmedScreen;
.super Lrockstarmobile/ui/FlutterScreen;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# instance fields
.field private completed:Lrockstarmobile/Rockstar$Callback;


# direct methods
.method public constructor <init>(Lrockstarmobile/Rockstar$Callback;)V
    .locals 4

    .line 1
    invoke-static {}, Lrockstarmobile/ui/FlutterMembershipConfirmedScreen;->getArgs()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "OptionsScreen"

    const-string v2, "Membership Active"

    const-string v3, "/options"

    invoke-direct {p0, v3, v1, v0, v2}, Lrockstarmobile/ui/FlutterScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lrockstarmobile/ui/FlutterMembershipConfirmedScreen;->completed:Lrockstarmobile/Rockstar$Callback;

    .line 3
    const-string p1, "membership_activated"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static getArgs()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    const-string v1, "logo"

    const-string v2, "assets/images/gtapluslogo.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxBackground()Ljava/lang/String;

    move-result-object v1

    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig$GeneralConfig;->name:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "[game]"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "UNLOCKED_HEADING"

    const-string v3, "[game] Unlocked."

    invoke-static {v1, v3, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "heading"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "UNLOCKED_SUBHEADING"

    const-string v3, "Thanks for confirming your GTA+ membership. The full game is now unlocked and ready to play."

    invoke-static {v2, v3, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "subheading"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "UNLOCKED_BUTTON"

    const-string v3, "CONTINUE"

    invoke-static {v2, v3, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "button1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v1, "button1style"

    const-string v2, "primary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "button1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-super {p0, p1, p2}, Lrockstarmobile/ui/FlutterScreen;->handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 13
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 14
    const-string p2, "element_label"

    const-string v0, "membershipconfirmed"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 15
    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "UNLOCKED_BUTTON"

    const-string v1, "CONTINUE"

    invoke-static {v0, v1, p2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "text"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string p2, "cta_unlock_game"

    invoke-static {p2, p1}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lrockstarmobile/ui/FlutterScreenHost;->close(Z)V

    .line 19
    iget-object p1, p0, Lrockstarmobile/ui/FlutterMembershipConfirmedScreen;->completed:Lrockstarmobile/Rockstar$Callback;

    invoke-interface {p1}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method
