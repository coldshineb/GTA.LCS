.class Lrockstarmobile/Rockstar$LifecycleListener;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/Rockstar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LifecycleListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;
    }
.end annotation


# static fields
.field private static b:Z


# instance fields
.field private a:Z


# direct methods
.method public static synthetic $r8$lambda$sEm-RIXr_fzD5wAqFKzqVHXfsAg()V
    .locals 0

    invoke-static {}, Lrockstarmobile/Rockstar$LifecycleListener;->a()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrockstarmobile/Rockstar$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lrockstarmobile/Rockstar$LifecycleListener;-><init>()V

    return-void
.end method

.method private static synthetic a()V
    .locals 0

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 21
    invoke-static {p1}, Lrockstarmobile/Rockstar;->access$712(I)I

    .line 22
    invoke-static {}, Lrockstarmobile/Rockstar;->access$700()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 23
    sget-object p1, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->AppPaused:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    invoke-direct {p0, p1}, Lrockstarmobile/Rockstar$LifecycleListener;->a(Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lrockstarmobile/Rockstar;->access$700()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 25
    sget-object p1, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->AppResumed:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    invoke-direct {p0, p1}, Lrockstarmobile/Rockstar$LifecycleListener;->a(Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;)V

    .line 28
    :cond_1
    :goto_0
    invoke-static {}, Lrockstarmobile/Rockstar;->access$700()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lrockstarmobile/Rockstar;->access$802(Z)Z

    return-void
.end method

.method private a(Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 16
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void

    .line 17
    :cond_0
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "android.onlowmemory"

    invoke-virtual {p1, v1, v0}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void

    .line 18
    :cond_1
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "android.appresumed"

    invoke-virtual {p1, v1, v0}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void

    .line 19
    :cond_2
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "android.applaunched"

    invoke-virtual {p1, v1, v0}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void

    .line 20
    :cond_3
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "android.apppaused"

    invoke-virtual {p1, v1, v0}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, -0x1

    .line 1
    invoke-direct {p0, p1}, Lrockstarmobile/Rockstar$LifecycleListener;->a(I)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lrockstarmobile/Rockstar$LifecycleListener;->a(I)V

    .line 4
    instance-of v1, p1, Lrockstarmobile/ui/FlutterScreenHost;

    if-eqz v1, :cond_0

    .line 5
    move-object v2, p1

    check-cast v2, Lrockstarmobile/ui/FlutterScreenHost;

    invoke-virtual {v2}, Lrockstarmobile/ui/FlutterScreenHost;->sendScreenView()V

    goto :goto_0

    .line 7
    :cond_0
    const-string v2, "Game"

    invoke-static {v2}, Lrockstarmobile/Rockstar;->setAnalyticsScreen(Ljava/lang/String;)V

    .line 10
    :goto_0
    instance-of v2, p1, Lcom/android/billingclient/api/ProxyBillingActivity;

    if-nez v2, :cond_1

    .line 11
    invoke-static {p1}, Lrockstarmobile/Rockstar;->access$202(Landroid/app/Activity;)Landroid/app/Activity;

    .line 14
    :cond_1
    invoke-static {}, Lrockstarmobile/Rockstar;->access$200()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lrockstarmobile/ui/TrialBanner;->setHostActivity(Landroid/app/Activity;)V

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 16
    instance-of p1, p1, Lrockstarmobile/ui/BrowserScreen;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    :goto_1
    invoke-static {v0}, Lrockstarmobile/Rockstar;->access$302(Z)Z

    .line 17
    invoke-static {}, Lrockstarmobile/Rockstar;->access$300()Z

    move-result p1

    sget-boolean v0, Lrockstarmobile/Rockstar$LifecycleListener;->b:Z

    if-eq p1, v0, :cond_4

    .line 18
    invoke-static {}, Lrockstarmobile/Rockstar;->access$400()Lrockstarmobile/Rockstar$StateCallback;

    move-result-object p1

    invoke-interface {p1}, Lrockstarmobile/Rockstar$StateCallback;->onStateChanged()V

    .line 19
    invoke-static {}, Lrockstarmobile/Rockstar;->access$300()Z

    move-result p1

    sput-boolean p1, Lrockstarmobile/Rockstar$LifecycleListener;->b:Z

    .line 22
    :cond_4
    invoke-static {}, Lrockstarmobile/Rockstar;->access$500()Lrockstarmobile/GCSubscriptions;

    move-result-object p1

    new-instance v0, Lrockstarmobile/Rockstar$LifecycleListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lrockstarmobile/Rockstar$LifecycleListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v2, v0}, Lrockstarmobile/GCSubscriptions;->checkForNewPurchases(ZLrockstarmobile/Rockstar$Callback;)V

    .line 26
    invoke-static {}, Lrockstarmobile/Rockstar;->access$600()Lrockstarmobile/GCAudioLogic;

    move-result-object p1

    invoke-virtual {p1}, Lrockstarmobile/GCAudioLogic;->reactivateAudio()V

    .line 28
    invoke-static {}, Lrockstarmobile/Rockstar;->updateAnalyticsProperties()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lrockstarmobile/Rockstar$LifecycleListener;->a:Z

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->AppLaunched:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    invoke-direct {p0, p1}, Lrockstarmobile/Rockstar$LifecycleListener;->a(Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lrockstarmobile/Rockstar$LifecycleListener;->a:Z

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
