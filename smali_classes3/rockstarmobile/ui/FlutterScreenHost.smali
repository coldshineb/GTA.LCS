.class public Lrockstarmobile/ui/FlutterScreenHost;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Lio/flutter/embedding/android/ExclusiveAppComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/ui/FlutterScreenHost$b;,
        Lrockstarmobile/ui/FlutterScreenHost$Orientation;
    }
.end annotation


# static fields
.field private static FLUTTERSCREENCLOSEDRESULT:I

.field private static final log:Lrockstarmobile/utilities/Log;

.field private static pendingLaunches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lrockstarmobile/ui/FlutterScreenHost$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public channel:Lio/flutter/plugin/common/MethodChannel;

.field private closed:Z

.field private engine:Lio/flutter/embedding/engine/FlutterEngine;

.field private flutterView:Lio/flutter/embedding/android/FlutterView;

.field public hideNavigationBar:Z

.field public hideNotch:Z

.field private platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

.field private screen:Lrockstarmobile/ui/FlutterScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "FlutterScreenHost"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lrockstarmobile/ui/FlutterScreenHost;->log:Lrockstarmobile/utilities/Log;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lrockstarmobile/ui/FlutterScreenHost;->pendingLaunches:Ljava/util/HashMap;

    const v0, 0xe4dca

    .line 4
    sput v0, Lrockstarmobile/ui/FlutterScreenHost;->FLUTTERSCREENCLOSEDRESULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->hideNotch:Z

    .line 48
    iput-boolean v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->hideNavigationBar:Z

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 50
    iput-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 51
    iput-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->closed:Z

    return-void
.end method

.method static synthetic lambda$launch$0()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$launch$1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-boolean v1, Lrockstarmobile/Rockstar;->configured:Z

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lrockstarmobile/ui/FlutterScreenHost;->log:Lrockstarmobile/utilities/Log;

    const-string v2, "Rockstar not configured (??) - attempting to initialize"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    .line 6
    :try_start_0
    new-instance v1, Lrockstarmobile/ui/FlutterScreenHost$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lrockstarmobile/ui/FlutterScreenHost$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lrockstarmobile/ui/FlutterScreenHost$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lrockstarmobile/ui/FlutterScreenHost$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v1, v2}, Lrockstarmobile/Rockstar;->setup(Landroid/app/Activity;Lrockstarmobile/Rockstar$StateCallback;Lrockstarmobile/Rockstar$GameTicketCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    sget-object v2, Lrockstarmobile/ui/FlutterScreenHost;->log:Lrockstarmobile/utilities/Log;

    const-string v4, "Failed to initialize Rockstar API"

    invoke-virtual {v2, v4, v1, v3}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 13
    :cond_0
    :goto_0
    new-instance v1, Lrockstarmobile/ui/FlutterScreenHost$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrockstarmobile/ui/FlutterScreenHost$b;-><init>(Lrockstarmobile/ui/FlutterScreenHost$a;)V

    .line 14
    iput-object p1, v1, Lrockstarmobile/ui/FlutterScreenHost$b;->a:Lrockstarmobile/ui/FlutterScreen;

    .line 15
    iput-object p2, v1, Lrockstarmobile/ui/FlutterScreenHost$b;->b:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    .line 16
    sget-object p1, Lrockstarmobile/ui/FlutterScreenHost;->pendingLaunches:Ljava/util/HashMap;

    monitor-enter p1

    .line 17
    :try_start_1
    sget-object p2, Lrockstarmobile/ui/FlutterScreenHost;->pendingLaunches:Ljava/util/HashMap;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lrockstarmobile/ui/FlutterScreenHost;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    const-string p2, "PENDINGID"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    sget p2, Lrockstarmobile/ui/FlutterScreenHost;->FLUTTERSCREENCLOSEDRESULT:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :catchall_0
    move-exception p0

    .line 25
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public close(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->closed:Z

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PENDINGID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    sget-object v2, Lrockstarmobile/ui/FlutterScreenHost;->pendingLaunches:Ljava/util/HashMap;

    monitor-enter v2

    .line 12
    :try_start_0
    sget-object v3, Lrockstarmobile/ui/FlutterScreenHost;->pendingLaunches:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 17
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_2

    .line 19
    const-string p1, "closeup"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const/4 p1, -0x1

    .line 21
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public detachFromFlutterEngine()V
    .locals 0

    return-void
.end method

.method public getAppComponent()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method synthetic lambda$onCreate$2$rockstarmobile-ui-FlutterScreenHost(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "requestinitialstate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dismiss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->screen:Lrockstarmobile/ui/FlutterScreen;

    invoke-virtual {v0, p1, p2}, Lrockstarmobile/ui/FlutterScreen;->handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->screen:Lrockstarmobile/ui/FlutterScreen;

    invoke-virtual {v0, p0, p1, p2}, Lrockstarmobile/ui/FlutterScreen;->dismiss(Lrockstarmobile/ui/FlutterScreenHost;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 14
    :cond_1
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreenHost;->screen:Lrockstarmobile/ui/FlutterScreen;

    iget-object v0, p1, Lrockstarmobile/ui/FlutterScreen;->state:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    const/4 p1, 0x0

    .line 15
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    sget v0, Lrockstarmobile/ui/FlutterScreenHost;->FLUTTERSCREENCLOSEDRESULT:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    const-string v1, "closeup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterScreenHost;->close(Z)V

    .line 11
    :cond_0
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onUserLeaveHint()V

    .line 15
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "PendingLaunch not found. Guid:"

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lrockstarmobile/ui/FlutterScreenHost;->log:Lrockstarmobile/utilities/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Instance of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " started with no Intent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 12
    :cond_0
    sget-object p1, Lrockstarmobile/ui/FlutterScreenHost;->pendingLaunches:Ljava/util/HashMap;

    monitor-enter p1

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "PENDINGID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 15
    sget-object v3, Lrockstarmobile/ui/FlutterScreenHost;->pendingLaunches:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrockstarmobile/ui/FlutterScreenHost$b;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 22
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object p1, v3, Lrockstarmobile/ui/FlutterScreenHost$b;->b:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-virtual {p0, p1}, Lrockstarmobile/ui/FlutterScreenHost;->setOrientation(Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    .line 28
    iget-object p1, v3, Lrockstarmobile/ui/FlutterScreenHost$b;->a:Lrockstarmobile/ui/FlutterScreen;

    iput-object p1, p0, Lrockstarmobile/ui/FlutterScreenHost;->screen:Lrockstarmobile/ui/FlutterScreen;

    .line 29
    iput-object p0, p1, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    .line 32
    new-instance p1, Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 33
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v0

    const-string v1, "sdkui/interop"

    invoke-direct {p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lrockstarmobile/ui/FlutterScreenHost;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 34
    new-instance v0, Lrockstarmobile/ui/FlutterScreenHost$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lrockstarmobile/ui/FlutterScreenHost$$ExternalSyntheticLambda0;-><init>(Lrockstarmobile/ui/FlutterScreenHost;)V

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 47
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    move-result-object p1

    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->screen:Lrockstarmobile/ui/FlutterScreen;

    iget-object v0, v0, Lrockstarmobile/ui/FlutterScreen;->route:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->setInitialRoute(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object p1

    invoke-static {}, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->createDefault()Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)V

    .line 51
    new-instance p1, Lio/flutter/plugin/platform/PlatformPlugin;

    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformChannel()Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/flutter/plugin/platform/PlatformPlugin;-><init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)V

    iput-object p1, p0, Lrockstarmobile/ui/FlutterScreenHost;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 52
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->attachToActivity(Lio/flutter/embedding/android/ExclusiveAppComponent;Landroidx/lifecycle/Lifecycle;)V

    .line 55
    sget p1, Lrockstarmobile/sdk/R$layout;->flutter_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 56
    sget p1, Lrockstarmobile/sdk/R$id;->fluttercontainer:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 57
    new-instance v0, Lio/flutter/embedding/android/FlutterView;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->flutterView:Lio/flutter/embedding/android/FlutterView;

    const/4 v1, -0x1

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 59
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreenHost;->flutterView:Lio/flutter/embedding/android/FlutterView;

    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {p1, v0}, Lio/flutter/embedding/android/FlutterView;->attachToFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 61
    invoke-virtual {p0}, Lrockstarmobile/ui/FlutterScreenHost;->sendScreenView()V

    .line 64
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreenHost;->screen:Lrockstarmobile/ui/FlutterScreen;

    invoke-virtual {p1}, Lrockstarmobile/ui/FlutterScreen;->onStart()V

    return-void

    .line 65
    :cond_3
    :goto_1
    :try_start_1
    sget-object v4, Lrockstarmobile/ui/FlutterScreenHost;->log:Lrockstarmobile/utilities/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pending: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 67
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    .line 69
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 4
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->detachFromActivity()V

    .line 12
    :cond_0
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformPlugin;->destroy()V

    .line 14
    iput-object v1, p0, Lrockstarmobile/ui/FlutterScreenHost;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 18
    :cond_1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsDetached()V

    .line 23
    :cond_2
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 28
    :cond_3
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->flutterView:Lio/flutter/embedding/android/FlutterView;

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->detachFromFlutterEngine()V

    :cond_4
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsInactive()V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->hideNotch:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 8
    :cond_0
    iget-boolean v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->hideNavigationBar:Z

    if-eqz v0, :cond_1

    .line 9
    sget-object v0, Lrockstarmobile/ui/FlutterScreenHost;->log:Lrockstarmobile/utilities/Log;

    const-string v1, "Hiding navbar"

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1706

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 24
    const-string v1, "Hid navbar"

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 27
    :cond_1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsResumed()V

    .line 28
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsPaused()V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onUserLeaveHint()V

    .line 5
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserLeaveHint()V

    return-void
.end method

.method public sendScreenView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->screen:Lrockstarmobile/ui/FlutterScreen;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lrockstarmobile/ui/FlutterScreen;->screenName:Ljava/lang/String;

    invoke-static {v0}, Lrockstarmobile/Rockstar;->setAnalyticsScreen(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOrientation(Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setScreen(Lrockstarmobile/ui/FlutterScreen;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->screen:Lrockstarmobile/ui/FlutterScreen;

    const/4 v1, 0x0

    iput-object v1, v0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    .line 2
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->popRoute()V

    .line 3
    iput-object p1, p0, Lrockstarmobile/ui/FlutterScreenHost;->screen:Lrockstarmobile/ui/FlutterScreen;

    .line 4
    iput-object p0, p1, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    .line 5
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreenHost;->engine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    move-result-object v0

    iget-object v1, p1, Lrockstarmobile/ui/FlutterScreen;->route:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->pushRoute(Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Lrockstarmobile/ui/FlutterScreen;->screenName:Ljava/lang/String;

    invoke-static {p1}, Lrockstarmobile/Rockstar;->setAnalyticsScreen(Ljava/lang/String;)V

    return-void
.end method
