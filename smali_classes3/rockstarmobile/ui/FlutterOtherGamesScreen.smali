.class public Lrockstarmobile/ui/FlutterOtherGamesScreen;
.super Lrockstarmobile/ui/FlutterScreen;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# static fields
.field private static final log:Lrockstarmobile/utilities/Log;


# instance fields
.field private complete:Lrockstarmobile/Rockstar$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "FlutterOtherGamesScreen"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lrockstarmobile/ui/FlutterOtherGamesScreen;->log:Lrockstarmobile/utilities/Log;

    return-void
.end method

.method public constructor <init>(Lrockstarmobile/Rockstar$Callback;)V
    .locals 4

    .line 1
    invoke-static {}, Lrockstarmobile/ui/FlutterOtherGamesScreen;->getArgs()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "OtherGamesScreen"

    const-string v2, "Other Games"

    const-string v3, "/othergames"

    invoke-direct {p0, v3, v1, v0, v2}, Lrockstarmobile/ui/FlutterScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lrockstarmobile/ui/FlutterOtherGamesScreen;->complete:Lrockstarmobile/Rockstar$Callback;

    return-void
.end method

.method private static getArgs()Ljava/util/HashMap;
    .locals 8
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig;->games:Lrockstarmobile/GCConfig$GamesConfig;

    invoke-virtual {v1}, Lrockstarmobile/GCConfig$GamesConfig;->all()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;

    .line 4
    iget-object v2, v2, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->slug:Ljava/lang/String;

    sget-object v3, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v3, v3, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v3, v3, Lrockstarmobile/GCConfig$GeneralConfig;->slug:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "OTHERGAMES_HEADING_DEFAULT"

    const-string v5, "More Rockstar games"

    invoke-static {v4, v5, v3}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "heading"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-array v3, v2, [Ljava/lang/String;

    const-string v5, "OTHERGAMES_SUBHEADING_DEFAULT"

    const-string v6, "Try our other world-class mobile games"

    invoke-static {v5, v6, v3}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "subheading"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-boolean v3, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v3, :cond_2

    .line 13
    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "OTHERGAMES_HEADING"

    const-string v7, "More games with [gtaplus]"

    invoke-static {v6, v7, v3}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "OTHERGAMES_SUBHEADING"

    const-string v4, "Try our other world-class mobile games, all included with GTA+"

    invoke-static {v3, v4, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_2
    const-string v2, ","

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "games"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "dismissable"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public dismiss(Lrockstarmobile/ui/FlutterScreenHost;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterOtherGamesScreen;->complete:Lrockstarmobile/Rockstar$Callback;

    invoke-interface {v0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lrockstarmobile/ui/FlutterScreen;->dismiss(Lrockstarmobile/ui/FlutterScreenHost;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "gametapped"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-super {p0, p1, p2}, Lrockstarmobile/ui/FlutterScreen;->handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 19
    :cond_0
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 20
    sget-object p2, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object p2, p2, Lrockstarmobile/GCConfig;->games:Lrockstarmobile/GCConfig$GamesConfig;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lrockstarmobile/GCConfig$GamesConfig;->getBySlug(Ljava/lang/String;)Lrockstarmobile/GCConfig$GamesConfig$GameConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 22
    iget-object p1, p1, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->androidPackageName:Ljava/lang/String;

    .line 23
    iget-object p2, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 26
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 27
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 29
    :cond_1
    iget-object p2, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-static {p2, p1}, Lrockstarmobile/Rockstar;->openGooglePlayPage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
