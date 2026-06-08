.class public Lrockstarmobile/Rockstar;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/Rockstar$StateCallback;,
        Lrockstarmobile/Rockstar$GameTicketCallback;,
        Lrockstarmobile/Rockstar$LifecycleListener;,
        Lrockstarmobile/Rockstar$TCallback;,
        Lrockstarmobile/Rockstar$Callback;,
        Lrockstarmobile/Rockstar$c;,
        Lrockstarmobile/Rockstar$ABCallback;,
        Lrockstarmobile/Rockstar$GateCompletionCallback;
    }
.end annotation


# static fields
.field private static activeActivities:I

.field private static appInBackground:Z

.field private static audioLogic:Lrockstarmobile/GCAudioLogic;

.field public static configured:Z

.field private static currentActivity:Landroid/app/Activity;

.field private static currentScreenName:Ljava/lang/String;

.field static developmentMode:Z

.field private static environment:Lrockstarmobile/Environment;

.field static events:Lrockstarmobile/eventlog/GCEventLog;

.field protected static firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private static final gameLog:Lrockstarmobile/utilities/Log;

.field private static gameTicketUpdated:Lrockstarmobile/Rockstar$GameTicketCallback;

.field private static gameTicketUpdatedLastSent:Ljava/lang/String;

.field private static hasPassedGate:Z

.field private static lastRefresh:Ljava/util/Date;

.field private static lastRefreshGameTicket:Ljava/util/Date;

.field private static lifecycleListener:Lrockstarmobile/Rockstar$LifecycleListener;

.field private static final log:Lrockstarmobile/utilities/Log;

.field private static milestoneSeconds:I

.field private static nextConfigCheck:Ljava/util/Date;

.field private static secondsTimer:Ljava/util/Timer;

.field private static stateUpdated:Lrockstarmobile/Rockstar$StateCallback;

.field private static subscriptions:Lrockstarmobile/GCSubscriptions;

.field private static uiVisible:Z


# direct methods
.method public static synthetic $r8$lambda$X20CSlvOtUOJG20rSRDUQnDk0jc()V
    .locals 0

    invoke-static {}, Lrockstarmobile/Rockstar;->showDebugAppReviewAlert()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "Main"

    invoke-direct {v0, v1}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrockstarmobile/Rockstar;->log:Lrockstarmobile/utilities/Log;

    .line 2
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "Game"

    invoke-direct {v0, v1}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrockstarmobile/Rockstar;->gameLog:Lrockstarmobile/utilities/Log;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lrockstarmobile/Rockstar;->configured:Z

    .line 6
    sput v0, Lrockstarmobile/Rockstar;->milestoneSeconds:I

    const/4 v1, 0x0

    .line 9
    sput-object v1, Lrockstarmobile/Rockstar;->currentActivity:Landroid/app/Activity;

    .line 10
    sput-object v1, Lrockstarmobile/Rockstar;->lifecycleListener:Lrockstarmobile/Rockstar$LifecycleListener;

    .line 12
    sput-boolean v0, Lrockstarmobile/Rockstar;->uiVisible:Z

    .line 13
    sput-boolean v0, Lrockstarmobile/Rockstar;->appInBackground:Z

    .line 15
    sput-object v1, Lrockstarmobile/Rockstar;->gameTicketUpdatedLastSent:Ljava/lang/String;

    .line 16
    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda16;-><init>()V

    sput-object v2, Lrockstarmobile/Rockstar;->stateUpdated:Lrockstarmobile/Rockstar$StateCallback;

    .line 17
    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda17;-><init>()V

    sput-object v2, Lrockstarmobile/Rockstar;->gameTicketUpdated:Lrockstarmobile/Rockstar$GameTicketCallback;

    .line 19
    sput v0, Lrockstarmobile/Rockstar;->activeActivities:I

    .line 550
    sput-object v1, Lrockstarmobile/Rockstar;->nextConfigCheck:Ljava/util/Date;

    .line 668
    sput-object v1, Lrockstarmobile/Rockstar;->lastRefresh:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GfxBackground()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "assets/images/bg.[orientation].png"

    return-object v0
.end method

.method public static GfxLogo()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "assets/images/logo.png"

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->timerOneSecond()V

    return-void
.end method

.method static synthetic access$200()Landroid/app/Activity;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 1
    sput-object p0, Lrockstarmobile/Rockstar;->currentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrockstarmobile/Rockstar;->uiVisible:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lrockstarmobile/Rockstar;->uiVisible:Z

    return p0
.end method

.method static synthetic access$400()Lrockstarmobile/Rockstar$StateCallback;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->stateUpdated:Lrockstarmobile/Rockstar$StateCallback;

    return-object v0
.end method

.method static synthetic access$500()Lrockstarmobile/GCSubscriptions;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->subscriptions:Lrockstarmobile/GCSubscriptions;

    return-object v0
.end method

.method static synthetic access$600()Lrockstarmobile/GCAudioLogic;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->audioLogic:Lrockstarmobile/GCAudioLogic;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 1
    sget v0, Lrockstarmobile/Rockstar;->activeActivities:I

    return v0
.end method

.method static synthetic access$712(I)I
    .locals 1

    .line 1
    sget v0, Lrockstarmobile/Rockstar;->activeActivities:I

    add-int/2addr v0, p0

    sput v0, Lrockstarmobile/Rockstar;->activeActivities:I

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lrockstarmobile/Rockstar;->appInBackground:Z

    return p0
.end method

.method public static checkAuthTokenValidity(Lrockstarmobile/Rockstar$TCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrockstarmobile/Rockstar$TCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object v0

    iget-object v0, v0, Lrockstarmobile/Environment;->rockstarTitleGameServicesBase:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 15
    :cond_2
    new-instance v1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda13;-><init>(Lrockstarmobile/RockstarUser;Lrockstarmobile/Rockstar$TCallback;)V

    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda14;-><init>(Lrockstarmobile/Rockstar$TCallback;)V

    invoke-static {v0, v1, v2}, Lrockstarmobile/SocialClubAPI;->exchangeMobileLauncherTicketForTitleTicket(Lrockstarmobile/RockstarUser;Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void
.end method

.method private static checkForLegacyInstall(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lrockstarmobile/GCState;->isLegacyCheckDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lrockstarmobile/GCState;->setLegacyCheckIsDone()V

    .line 4
    sget-object v1, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig$GeneralConfig;->urlScheme:Ljava/lang/String;

    const-string v2, "gtactw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v1, 0x18a6c826700L

    goto :goto_0

    :cond_0
    const-wide v1, 0x1869dd3d518L

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    .line 9
    invoke-static {p0}, Lrockstarmobile/GCState;->setIsLegacyUpgrade(Z)V

    .line 10
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object p0

    const-string v1, "Full Game Enabled"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 14
    sget-object v1, Lrockstarmobile/Rockstar;->log:Lrockstarmobile/utilities/Log;

    const-string v2, "Failed to check for legacy install"

    invoke-virtual {v1, v2, p0, v0}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static checkGate(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Lrockstarmobile/Rockstar$c;

    const-string v1, "gate"

    invoke-direct {v0, p0, v1}, Lrockstarmobile/Rockstar$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lrockstarmobile/Rockstar;->ownsOrSubsOrTrialOrLegacy()Z

    move-result p0

    return p0
.end method

.method public static checkPlayerTicketChange()V
    .locals 5

    .line 2
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 5
    sget-object v2, Lrockstarmobile/Rockstar;->environment:Lrockstarmobile/Environment;

    iget-object v2, v2, Lrockstarmobile/Environment;->rockstarMobileLauncherGameServicesBase:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {}, Lrockstarmobile/GCState;->userGameTicket()Lrockstarmobile/GCState$GameTicket;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v3, v2, Lrockstarmobile/GCState$GameTicket;->basedOnServicesTicket:Ljava/lang/String;

    iget-object v4, v0, Lrockstarmobile/RockstarUser;->scServicesTicket:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 14
    :cond_1
    invoke-static {v0}, Lrockstarmobile/Rockstar;->refreshUserGameTicket(Lrockstarmobile/RockstarUser;)V

    :cond_2
    if-eqz v2, :cond_4

    .line 17
    iget-object v0, v2, Lrockstarmobile/GCState$GameTicket;->gameTicket:Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Lrockstarmobile/GCState;->setUserGameTicket(Lrockstarmobile/GCState$GameTicket;)V

    .line 29
    invoke-static {}, Lrockstarmobile/Rockstar;->inTrial()Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lrockstarmobile/Rockstar;->hasPassedGate:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lrockstarmobile/Rockstar;->isDevelopmentMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 30
    invoke-static {v0}, Lrockstarmobile/GCState;->setIsTrialActive(Z)V

    .line 35
    :cond_4
    :goto_0
    sget-object v0, Lrockstarmobile/Rockstar;->gameTicketUpdatedLastSent:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 36
    sput-object v1, Lrockstarmobile/Rockstar;->gameTicketUpdatedLastSent:Ljava/lang/String;

    .line 37
    sget-object v0, Lrockstarmobile/Rockstar;->gameTicketUpdated:Lrockstarmobile/Rockstar$GameTicketCallback;

    invoke-interface {v0, v1}, Lrockstarmobile/Rockstar$GameTicketCallback;->onGameTicketChange(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private static configCheck()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    sget-object v1, Lrockstarmobile/Rockstar;->nextConfigCheck:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 8
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 9
    sput-object v0, Lrockstarmobile/Rockstar;->nextConfigCheck:Ljava/util/Date;

    .line 12
    invoke-static {}, Lrockstarmobile/GCState;->conf()Lrockstarmobile/GCState$Config;

    move-result-object v0

    .line 13
    iget-object v1, v0, Lrockstarmobile/GCState$Config;->legacyUpgrade:Lrockstarmobile/GCState$ConfigLegacyUpgrade;

    iget-object v2, v1, Lrockstarmobile/GCState$ConfigLegacyUpgrade;->version:Ljava/lang/String;

    iget-object v1, v0, Lrockstarmobile/GCState$Config;->experiments:Lrockstarmobile/GCState$ConfigExperiments;

    iget-object v3, v1, Lrockstarmobile/GCState$ConfigExperiments;->version:Ljava/lang/String;

    iget-object v1, v0, Lrockstarmobile/GCState$Config;->gates:Lrockstarmobile/GCState$ConfigGates;

    iget-object v4, v1, Lrockstarmobile/GCState$ConfigGates;->version:Ljava/lang/String;

    iget-object v1, v0, Lrockstarmobile/GCState$Config;->gameChallenges:Lrockstarmobile/GCState$ConfigGameChallenges;

    iget-object v5, v1, Lrockstarmobile/GCState$ConfigGameChallenges;->version:Ljava/lang/String;

    iget-object v1, v0, Lrockstarmobile/GCState$Config;->scorelists:Lrockstarmobile/GCState$ConfigScorelists;

    iget-object v6, v1, Lrockstarmobile/GCState$ConfigScorelists;->version:Ljava/lang/String;

    iget-object v1, v0, Lrockstarmobile/GCState$Config;->events:Lrockstarmobile/GCState$ConfigEvents;

    iget-object v7, v1, Lrockstarmobile/GCState$ConfigEvents;->version:Ljava/lang/String;

    new-instance v8, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda32;

    invoke-direct {v8, v0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda32;-><init>(Lrockstarmobile/GCState$Config;)V

    new-instance v9, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda34;

    invoke-direct {v9}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda34;-><init>()V

    invoke-static/range {v2 .. v9}, Lrockstarmobile/RockstarMobileAPI;->configCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void
.end method

.method public static event(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4
    :cond_0
    invoke-static {}, Lrockstarmobile/GCState;->trialSecondsSpent()I

    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "trial_time_played"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    int-to-double v0, v0

    .line 7
    invoke-static {}, Lrockstarmobile/GCState;->conf()Lrockstarmobile/GCState$Config;

    move-result-object v2

    iget-object v2, v2, Lrockstarmobile/GCState$Config;->gates:Lrockstarmobile/GCState$ConfigGates;

    iget-object v2, v2, Lrockstarmobile/GCState$ConfigGates;->config:Lrockstarmobile/GCConfig$GatesConfig;

    iget v2, v2, Lrockstarmobile/GCConfig$GatesConfig;->timedGateSeconds:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpg-double v4, v0, v4

    const-string v5, "trial_time_threshold"

    if-gez v4, :cond_1

    .line 9
    const-string v0, "0"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v6

    if-gez v4, :cond_2

    .line 11
    const-string v0, "25"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpg-double v4, v0, v6

    if-gez v4, :cond_3

    .line 13
    const-string v0, "50"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 15
    const-string v0, "75"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_4
    const-string v0, "100"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_0
    sget-object v0, Lrockstarmobile/Rockstar;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 23
    :cond_5
    sget-object v0, Lrockstarmobile/Rockstar;->log:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "): "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    return-void
.end method

.method public static events()Lrockstarmobile/eventlog/GCEventLog;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->events:Lrockstarmobile/eventlog/GCEventLog;

    return-object v0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getEnvironment()Lrockstarmobile/Environment;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->environment:Lrockstarmobile/Environment;

    return-object v0
.end method

.method public static getExperiment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrockstarmobile/GCExperiments;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getLaunchEventArguments(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lrockstarmobile/utilities/ApkInfoUtils;->getAppSizeInMB(Landroid/content/Context;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, -0x1

    .line 5
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    sget-object v3, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v3, v3, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v3, v3, Lrockstarmobile/GCConfig$GeneralConfig;->mode:Ljava/lang/String;

    const-string v4, "Build Type"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p0}, Lrockstarmobile/utilities/Connectivity;->getInternetString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Internet"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "App Size"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lrockstarmobile/GCState;->isFullMember()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Is Full Member"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lrockstarmobile/Rockstar;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDK Version"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p0}, Lrockstarmobile/utilities/ApkInfoUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "App Version"

    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-boolean p0, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz p0, :cond_0

    .line 13
    invoke-static {}, Lrockstarmobile/GCState;->isLegacyUpgrade()Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "Is Legacy Upgrade"

    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method public static getMusicVolume()F
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->audioLogic:Lrockstarmobile/GCAudioLogic;

    invoke-virtual {v0}, Lrockstarmobile/GCAudioLogic;->getMusicVolume()F

    move-result v0

    return v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lrockstarmobile/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSoundFxVolume()F
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->audioLogic:Lrockstarmobile/GCAudioLogic;

    invoke-virtual {v0}, Lrockstarmobile/GCAudioLogic;->getSoundFxVolume()F

    move-result v0

    return v0
.end method

.method public static getSubscriptions()Lrockstarmobile/GCSubscriptions;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->subscriptions:Lrockstarmobile/GCSubscriptions;

    return-object v0
.end method

.method public static inTrial()Z
    .locals 4

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->isTrialActive()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lrockstarmobile/GCState;->isGameOwner()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    sget-boolean v3, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v3, :cond_3

    .line 3
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lrockstarmobile/GCState;->isLegacyUpgrade()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v3, :cond_1

    iget-object v0, v3, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    sget-object v3, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    if-eq v0, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public static invalidateUser()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lrockstarmobile/GCState;->setUser(Lrockstarmobile/RockstarUser;)V

    .line 2
    invoke-static {}, Lrockstarmobile/Rockstar;->checkPlayerTicketChange()V

    return-void
.end method

.method public static isDevelopmentMode()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrockstarmobile/Rockstar;->developmentMode:Z

    return v0
.end method

.method static synthetic lambda$checkAuthTokenValidity$16(Lrockstarmobile/RockstarUser;Lrockstarmobile/Rockstar$TCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lrockstarmobile/RockstarUser;->scServicesTicket:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Lrockstarmobile/GCState$GameTicket;

    iget-object p0, p0, Lrockstarmobile/RockstarUser;->scServicesTicket:Ljava/lang/String;

    invoke-direct {p3, p0, p2}, Lrockstarmobile/GCState$GameTicket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lrockstarmobile/GCState;->setUserGameTicket(Lrockstarmobile/GCState$GameTicket;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$checkAuthTokenValidity$17(Lrockstarmobile/Rockstar$TCallback;Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$configCheck$18(Lrockstarmobile/GCState$Config;Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;)V
    .locals 7

    .line 1
    new-instance v0, Lrockstarmobile/GCState$Config;

    iget-object v1, p1, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;->legacyupgrade:Lrockstarmobile/GCState$ConfigLegacyUpgrade;

    iget-object v2, p0, Lrockstarmobile/GCState$Config;->legacyUpgrade:Lrockstarmobile/GCState$ConfigLegacyUpgrade;

    .line 3
    invoke-static {v1, v2}, Lrockstarmobile/Rockstar;->qq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrockstarmobile/GCState$ConfigLegacyUpgrade;

    iget-object v2, p1, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;->experiments:Lrockstarmobile/GCState$ConfigExperiments;

    iget-object v3, p0, Lrockstarmobile/GCState$Config;->experiments:Lrockstarmobile/GCState$ConfigExperiments;

    .line 5
    invoke-static {v2, v3}, Lrockstarmobile/Rockstar;->qq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrockstarmobile/GCState$ConfigExperiments;

    iget-object v3, p1, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;->gates:Lrockstarmobile/GCState$ConfigGates;

    iget-object v4, p0, Lrockstarmobile/GCState$Config;->gates:Lrockstarmobile/GCState$ConfigGates;

    .line 6
    invoke-static {v3, v4}, Lrockstarmobile/Rockstar;->qq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrockstarmobile/GCState$ConfigGates;

    iget-object v4, p1, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;->gamechallenges:Lrockstarmobile/GCState$ConfigGameChallenges;

    iget-object v5, p0, Lrockstarmobile/GCState$Config;->gameChallenges:Lrockstarmobile/GCState$ConfigGameChallenges;

    .line 7
    invoke-static {v4, v5}, Lrockstarmobile/Rockstar;->qq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrockstarmobile/GCState$ConfigGameChallenges;

    iget-object v5, p1, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;->scorelists:Lrockstarmobile/GCState$ConfigScorelists;

    iget-object v6, p0, Lrockstarmobile/GCState$Config;->scorelists:Lrockstarmobile/GCState$ConfigScorelists;

    .line 8
    invoke-static {v5, v6}, Lrockstarmobile/Rockstar;->qq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrockstarmobile/GCState$ConfigScorelists;

    iget-object p1, p1, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;->events:Lrockstarmobile/GCState$ConfigEvents;

    iget-object p0, p0, Lrockstarmobile/GCState$Config;->events:Lrockstarmobile/GCState$ConfigEvents;

    .line 9
    invoke-static {p1, p0}, Lrockstarmobile/Rockstar;->qq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lrockstarmobile/GCState$ConfigEvents;

    invoke-direct/range {v0 .. v6}, Lrockstarmobile/GCState$Config;-><init>(Lrockstarmobile/GCState$ConfigLegacyUpgrade;Lrockstarmobile/GCState$ConfigExperiments;Lrockstarmobile/GCState$ConfigGates;Lrockstarmobile/GCState$ConfigGameChallenges;Lrockstarmobile/GCState$ConfigScorelists;Lrockstarmobile/GCState$ConfigEvents;)V

    .line 12
    sget-boolean p0, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz p0, :cond_0

    .line 13
    iget-object p0, v0, Lrockstarmobile/GCState$Config;->legacyUpgrade:Lrockstarmobile/GCState$ConfigLegacyUpgrade;

    iget-boolean p0, p0, Lrockstarmobile/GCState$ConfigLegacyUpgrade;->upgraded:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 14
    invoke-static {p0}, Lrockstarmobile/GCState;->setIsLegacyUpgrade(Z)V

    .line 18
    :cond_0
    invoke-static {v0}, Lrockstarmobile/GCState;->setConf(Lrockstarmobile/GCState$Config;)V

    .line 20
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0x6ddd00

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 22
    sput-object p0, Lrockstarmobile/Rockstar;->nextConfigCheck:Ljava/util/Date;

    return-void
.end method

.method static synthetic lambda$configCheck$19(Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 4

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->log:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error checking config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lrockstarmobile/utilities/HttpAPI$Error;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lrockstarmobile/utilities/HttpAPI$Error;->message:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    .line 2
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4
    sput-object p0, Lrockstarmobile/Rockstar;->nextConfigCheck:Ljava/util/Date;

    return-void
.end method

.method static synthetic lambda$login$10(Lrockstarmobile/Rockstar$Callback;Lrockstarmobile/ui/FlutterScreenHost;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lrockstarmobile/ui/FlutterScreenHost;->close(Z)V

    .line 2
    invoke-interface {p0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method

.method static synthetic lambda$login$11(Lrockstarmobile/Rockstar$Callback;Lrockstarmobile/ui/FlutterScreenHost;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lrockstarmobile/ui/FlutterScreenHost;->close(Z)V

    .line 2
    invoke-interface {p0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method

.method static synthetic lambda$login$9(Lrockstarmobile/Rockstar$Callback;Lrockstarmobile/ui/FlutterScreenHost;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lrockstarmobile/ui/FlutterScreenHost;->close(Z)V

    .line 2
    invoke-interface {p0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method

.method static synthetic lambda$logout$6(Lrockstarmobile/Rockstar$TCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lrockstarmobile/GCState;->setUser(Lrockstarmobile/RockstarUser;)V

    .line 2
    invoke-static {}, Lrockstarmobile/Rockstar;->checkPlayerTicketChange()V

    if-eqz p0, :cond_0

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$logout$7(Lrockstarmobile/Rockstar$TCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$logout$8(Lrockstarmobile/Rockstar$TCallback;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "LOGOUT_CONFIRM_HEADING"

    const-string v4, "Logout?"

    invoke-static {v3, v4, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "LOGOUT_CONFIRM_MESSAGE"

    const-string v4, "Are you sure you want to logout?"

    invoke-static {v3, v4, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "LOGOUT_CONFIRM_BUTTON_LOGOUT"

    const-string v4, "Logout"

    invoke-static {v3, v4, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda1;-><init>(Lrockstarmobile/Rockstar$TCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 13
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "LOGOUT_CONFIRM_BUTTON_CANCEL"

    const-string v3, "Cancel"

    invoke-static {v2, v3, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda2;-><init>(Lrockstarmobile/Rockstar$TCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 19
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic lambda$refreshSessionIfNeeded$21(Lrockstarmobile/RockstarUser;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 1
    sput-object p0, Lrockstarmobile/Rockstar;->lastRefresh:Ljava/util/Date;

    :cond_0
    return-void
.end method

.method static synthetic lambda$refreshUserGameTicket$14(Lrockstarmobile/RockstarUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    sput-object p2, Lrockstarmobile/Rockstar;->lastRefreshGameTicket:Ljava/util/Date;

    .line 3
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lrockstarmobile/RockstarUser;->scServicesTicket:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lrockstarmobile/GCState$GameTicket;

    iget-object p0, p0, Lrockstarmobile/RockstarUser;->scServicesTicket:Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Lrockstarmobile/GCState$GameTicket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lrockstarmobile/GCState;->setUserGameTicket(Lrockstarmobile/GCState$GameTicket;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$refreshUserGameTicket$15(Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 3

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->invalidateUser()V

    .line 3
    sget-object v0, Lrockstarmobile/Rockstar;->log:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error exchanging ticket ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lrockstarmobile/utilities/HttpAPI$Error;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$requestReviewPotentially$38(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    new-instance p1, Ljava/util/Date;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0x2a69c000

    add-long/2addr v0, v2

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lrockstarmobile/GCState;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lrockstarmobile/Rockstar;->openGooglePlayPage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$requestReviewPotentially$39(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$requestReviewPotentially$40(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v1, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig$GeneralConfig;->name:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "[game]"

    aput-object v5, v3, v4

    const/4 v6, 0x1

    aput-object v1, v3, v6

    const-string v1, "RATE_POPUP_TITLE"

    const-string v7, "Rate [game]?"

    invoke-static {v1, v7, v3}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3
    sget-object v1, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig$GeneralConfig;->name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v5, v2, v4

    aput-object v1, v2, v6

    const-string v1, "RATE_POPUP_MESSAGE"

    const-string v3, "Would you like to rate [game]?"

    invoke-static {v1, v3, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "RATE_POPUP_YES"

    const-string v3, "Yes"

    invoke-static {v2, v3, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda39;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    new-array p0, v4, [Ljava/lang/String;

    const-string v1, "RATE_POPUP_NO"

    const-string v2, "No"

    invoke-static {v1, v2, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda40;

    invoke-direct {v1}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda40;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic lambda$requireTermsAccepted$24()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$requireTermsAccepted$25(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$requireTermsAccepted$26(Lrockstarmobile/RockstarUser;Lrockstarmobile/GCState$GameTicket;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lrockstarmobile/GCState;->setUser(Lrockstarmobile/RockstarUser;)V

    return-void
.end method

.method static synthetic lambda$requireTermsAccepted$27(Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$requireTermsAccepted$28(Lrockstarmobile/Rockstar$Callback;Z)V
    .locals 9

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Lrockstarmobile/Rockstar;->requireTermsAccepted(Lrockstarmobile/Rockstar$Callback;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v6, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda3;-><init>()V

    new-instance v7, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda4;-><init>()V

    new-instance v8, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda5;

    invoke-direct {v8}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda5;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v0 .. v8}, Lrockstarmobile/SocialClubAPI;->refresh(Lrockstarmobile/RockstarUser;ZZZZZLrockstarmobile/SocialClubAPI$StatusCallback;Lrockstarmobile/SocialClubAPI$RefreshCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    .line 15
    :cond_1
    invoke-interface {p0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method

.method static synthetic lambda$requireTermsAccepted$29(Lrockstarmobile/Rockstar$Callback;Lrockstarmobile/RockstarUser;)V
    .locals 3

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda37;

    invoke-direct {v1}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda37;-><init>()V

    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda38;-><init>(Lrockstarmobile/Rockstar$Callback;)V

    invoke-static {v0, p1, v1, v2}, Lrockstarmobile/ui/BrowserScreen;->launchAcceptTermsFlow(Landroid/app/Activity;Lrockstarmobile/RockstarUser;Lrockstarmobile/ui/BrowserScreen$OpenedCallback;Lrockstarmobile/ui/BrowserScreen$AcceptTermsCallback;)V

    return-void
.end method

.method static synthetic lambda$requireTermsAccepted$30(Lrockstarmobile/Rockstar$TCallback;Ljava/lang/Boolean;Lrockstarmobile/RockstarUser;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p0, p2}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$requireTermsAccepted$31(Lrockstarmobile/Rockstar$TCallback;Lrockstarmobile/RockstarUser;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda22;-><init>(Lrockstarmobile/Rockstar$TCallback;)V

    invoke-static {p1}, Lrockstarmobile/Rockstar;->startUserAuthentication(Lrockstarmobile/Rockstar$ABCallback;)V

    return-void
.end method

.method static synthetic lambda$setup$2(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 3

    .line 1
    const-string v0, "https://db64b8264e69481c8bb90a1b751117b9@o432808.ingest.sentry.io/4504803640606720"

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setDsn(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrReportInDebug(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrEnabled(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUserInteractionTracing(Z)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachScreenshot(Z)V

    .line 6
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachViewHierarchy(Z)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lrockstarmobile/Rockstar;->environment:Lrockstarmobile/Environment;

    iget-object v1, v1, Lrockstarmobile/Environment;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lrockstarmobile/Rockstar;->environment:Lrockstarmobile/Environment;

    iget-object v1, v1, Lrockstarmobile/Environment;->id:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, " - "

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig$GeneralConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnvironment(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lrockstarmobile/Rockstar;->environment:Lrockstarmobile/Environment;

    iget-wide v0, v0, Lrockstarmobile/Environment;->sentrySampleRate:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSampleRate(Ljava/lang/Double;)V

    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/sentry/android/core/SentryAndroidOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    return-void
.end method

.method static synthetic lambda$setup$3(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lrockstarmobile/Rockstar;->invalidateUser()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setup$4()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$showDebugAppReviewAlert$41(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$showDialog$12(Lrockstarmobile/Rockstar$TCallback;)V
    .locals 1

    .line 1
    const-string v0, "dismissed"

    invoke-interface {p0, v0}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$showDialog$13(Lrockstarmobile/Rockstar$TCallback;)V
    .locals 1

    .line 1
    const-string v0, "dismissed"

    invoke-interface {p0, v0}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$showGate$32(Lrockstarmobile/Rockstar$GateCompletionCallback;Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lrockstarmobile/Rockstar;->hasPassedGate:Z

    .line 2
    invoke-interface {p0, p1}, Lrockstarmobile/Rockstar$GateCompletionCallback;->onCompleted(Z)V

    return-void
.end method

.method static synthetic lambda$showGate$33(Lrockstarmobile/Rockstar$GateCompletionCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->ownsOrSubsOrTrialOrLegacy()Z

    move-result v0

    invoke-interface {p0, v0}, Lrockstarmobile/Rockstar$GateCompletionCallback;->onCompleted(Z)V

    return-void
.end method

.method static synthetic lambda$showGate$34(Lrockstarmobile/Rockstar$GateCompletionCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda6;-><init>(Lrockstarmobile/Rockstar$GateCompletionCallback;)V

    invoke-static {v0}, Lrockstarmobile/Rockstar;->requireSubscription(Lrockstarmobile/Rockstar$Callback;)V

    return-void
.end method

.method static synthetic lambda$showGate$35(Lrockstarmobile/Rockstar$GateCompletionCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->ownsOrSubsOrTrialOrLegacy()Z

    move-result v0

    invoke-interface {p0, v0}, Lrockstarmobile/Rockstar$GateCompletionCallback;->onCompleted(Z)V

    return-void
.end method

.method static synthetic lambda$showGate$36(Lrockstarmobile/Rockstar$GateCompletionCallback;Lrockstarmobile/Rockstar$c;)V
    .locals 3

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->ownsOrSubsOrTrialOrLegacy()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0, v1}, Lrockstarmobile/Rockstar$GateCompletionCallback;->onCompleted(Z)V

    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    new-instance p1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda41;

    invoke-direct {p1, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda41;-><init>(Lrockstarmobile/Rockstar$GateCompletionCallback;)V

    invoke-static {p1}, Lrockstarmobile/Rockstar;->requireTermsAccepted(Lrockstarmobile/Rockstar$Callback;)V

    return-void

    .line 18
    :cond_1
    iget-object v0, p1, Lrockstarmobile/Rockstar$c;->b:Ljava/lang/String;

    const-string v2, "play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lrockstarmobile/ui/FlutterGateScreen;

    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda42;-><init>(Lrockstarmobile/Rockstar$GateCompletionCallback;)V

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterGateScreen;-><init>(ZLrockstarmobile/Rockstar$Callback;)V

    sget-object p0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {p1, v0, p0}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    return-void

    .line 23
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid tag, only gate.play is allowed here. Tag: {rockstar:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lrockstarmobile/Rockstar$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lrockstarmobile/Rockstar$c;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$showGate$37(Lrockstarmobile/Rockstar$Callback;Lrockstarmobile/Rockstar$GateCompletionCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p3, :cond_2

    const/4 p0, 0x1

    if-eq p3, p0, :cond_1

    const/4 p0, 0x2

    if-eq p3, p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1
    invoke-interface {p1, p0}, Lrockstarmobile/Rockstar$GateCompletionCallback;->onCompleted(Z)V

    return-void

    .line 2
    :cond_1
    invoke-interface {p1, p0}, Lrockstarmobile/Rockstar$GateCompletionCallback;->onCompleted(Z)V

    return-void

    .line 3
    :cond_2
    invoke-interface {p0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method

.method static synthetic lambda$showMultipleChoices$23(Landroid/app/Activity;IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    sget v2, Lrockstarmobile/sdk/R$style;->GameClubAlertDialog:I

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic lambda$startAccountDeletion$5(Lrockstarmobile/Rockstar$Callback;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method

.method static synthetic lambda$startUserAuthentication$22(Lrockstarmobile/Rockstar$ABCallback;Lrockstarmobile/ui/FlutterScreenHost;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lrockstarmobile/ui/FlutterScreenHost;->close(Z)V

    .line 3
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lrockstarmobile/Rockstar$ABCallback;->callback(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lrockstarmobile/Rockstar$ABCallback;->callback(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$static$1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$timerOneSecond$20()V
    .locals 0

    return-void
.end method

.method public static logBreadcrumb(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 2
    const-string v1, "game"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 4
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 5
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 8
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0}, Lio/sentry/Sentry;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->gameLog:Lrockstarmobile/utilities/Log;

    invoke-virtual {v0, p0}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lio/sentry/Sentry;->captureException(Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->gameLog:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->gameLog:Lrockstarmobile/utilities/Log;

    invoke-virtual {v0, p0}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    return-void
.end method

.method public static login(Ljava/lang/String;Lrockstarmobile/Rockstar$Callback;)V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/Rockstar$c;

    const-string v1, "socialclub"

    invoke-direct {v0, p0, v1}, Lrockstarmobile/Rockstar$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, v0, Lrockstarmobile/Rockstar$c;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "signup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "signin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "gameload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 27
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only {rockstar:socialclub.gameload}, {rockstar:socialclub.signin}, {rockstar:socialclub.signup} are valid tags in RockstarMobile"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :pswitch_0
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;

    sget-object v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->ScAuthDirectSignup:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda24;

    invoke-direct {v2, p1}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda24;-><init>(Lrockstarmobile/Rockstar$Callback;)V

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;Lrockstarmobile/Rockstar$TCallback;)V

    sget-object p1, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {p0, v0, p1}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    return-void

    .line 29
    :pswitch_1
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;

    sget-object v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->ScAuthDirectSignin:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda25;

    invoke-direct {v2, p1}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda25;-><init>(Lrockstarmobile/Rockstar$Callback;)V

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;Lrockstarmobile/Rockstar$TCallback;)V

    sget-object p1, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {p0, v0, p1}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    return-void

    .line 30
    :pswitch_2
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object p0

    if-nez p0, :cond_3

    .line 31
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;

    sget-object v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->LaunchOptions:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda26;

    invoke-direct {v2, p1}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda26;-><init>(Lrockstarmobile/Rockstar$Callback;)V

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;Lrockstarmobile/Rockstar$TCallback;)V

    sget-object p1, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {p0, v0, p1}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    return-void

    .line 36
    :cond_3
    invoke-interface {p1}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69683828 -> :sswitch_2
        -0x35ca905e -> :sswitch_1
        -0x35ca8ee8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static logout()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lrockstarmobile/Rockstar;->logout(Lrockstarmobile/Rockstar$TCallback;)V

    return-void
.end method

.method public static logout(Lrockstarmobile/Rockstar$TCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrockstarmobile/Rockstar$TCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda9;-><init>(Lrockstarmobile/Rockstar$TCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static openGooglePlayPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "https://play.google.com/store/apps/details?id="

    .line 1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 3
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x200000

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    const-string v3, "com.android.vending"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 9
    :catch_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 12
    :catch_1
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :goto_0
    return-void
.end method

.method private static ownsOrSubsOrTrialOrLegacy()Z
    .locals 4

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->isGameOwner()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-static {}, Lrockstarmobile/GCState;->isTrialActive()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean v0, Lrockstarmobile/Include;->GTAPlus:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lrockstarmobile/GCState;->isLegacyUpgrade()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 10
    :cond_1
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, v0, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    sget-object v3, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public static pauseGameplay()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrockstarmobile/Rockstar;->uiVisible:Z

    return v0
.end method

.method public static qq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static refreshSessionIfNeeded()V
    .locals 7

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v0, v0, Lrockstarmobile/RockstarUser;->scAuthTokenRefreshed:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 7
    sget-object v0, Lrockstarmobile/Rockstar;->lastRefresh:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v0, Lrockstarmobile/Rockstar;->lastRefresh:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 8
    :cond_0
    sput-object v1, Lrockstarmobile/Rockstar;->lastRefresh:Ljava/util/Date;

    .line 9
    new-instance v0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda30;-><init>()V

    invoke-static {v0}, Lrockstarmobile/SocialClubAPI;->refreshUser(Lrockstarmobile/SocialClubAPI$RefreshedUserCallback;)V

    :cond_1
    return-void
.end method

.method private static refreshUserGameTicket(Lrockstarmobile/RockstarUser;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    sget-object v1, Lrockstarmobile/Rockstar;->lastRefreshGameTicket:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sget-object v3, Lrockstarmobile/Rockstar;->lastRefreshGameTicket:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    return-void

    .line 8
    :cond_0
    sput-object v0, Lrockstarmobile/Rockstar;->lastRefreshGameTicket:Ljava/util/Date;

    .line 10
    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object v0

    iget-object v0, v0, Lrockstarmobile/Environment;->rockstarTitleGameServicesBase:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    .line 11
    sput-object p0, Lrockstarmobile/Rockstar;->lastRefreshGameTicket:Ljava/util/Date;

    return-void

    .line 15
    :cond_1
    new-instance v0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda10;-><init>(Lrockstarmobile/RockstarUser;)V

    new-instance v1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {p0, v0, v1}, Lrockstarmobile/SocialClubAPI;->exchangeMobileLauncherTicketForTitleTicket(Lrockstarmobile/RockstarUser;Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void
.end method

.method public static requestReviewPotentially()V
    .locals 6

    .line 1
    sget-boolean v0, Lrockstarmobile/Include;->GTAPlus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    sget-object v2, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 6
    :cond_0
    invoke-static {}, Lrockstarmobile/GCState;->isTrialActive()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-static {}, Lrockstarmobile/GCState;->isLegacyUpgrade()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Lrockstarmobile/GCState;->isGameOwner()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    .line 15
    :cond_1
    const-string v0, "next_review"

    const-string v1, ""

    invoke-static {v0, v1}, Lrockstarmobile/GCState;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 19
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v1, v3, v1

    if-gez v1, :cond_2

    goto :goto_0

    .line 23
    :catch_0
    sget-object v1, Lrockstarmobile/Rockstar;->log:Lrockstarmobile/utilities/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "could not parse next_review: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 28
    :cond_2
    new-instance v1, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 29
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lrockstarmobile/GCState;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lrockstarmobile/Rockstar;->isDevelopmentMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 38
    :cond_3
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static requireSubscription(Lrockstarmobile/Rockstar$Callback;)V
    .locals 3

    .line 1
    sget-boolean v0, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    sget-object v1, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-interface {p0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lrockstarmobile/ui/FlutterGateScreen;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lrockstarmobile/ui/FlutterGateScreen;-><init>(ZLrockstarmobile/Rockstar$Callback;)V

    sget-object p0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    .line 8
    invoke-static {v0, v1, p0}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    :cond_1
    return-void
.end method

.method private static requireTermsAccepted(Lrockstarmobile/Rockstar$Callback;)V
    .locals 4

    .line 1
    new-instance v0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda35;-><init>(Lrockstarmobile/Rockstar$Callback;)V

    .line 24
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 27
    iget-object v2, v1, Lrockstarmobile/RockstarUser;->acceptedAllPolicies:Lrockstarmobile/RockstarUser$POLICY_STATE;

    sget-object v3, Lrockstarmobile/RockstarUser$POLICY_STATE;->YES:Lrockstarmobile/RockstarUser$POLICY_STATE;

    if-ne v2, v3, :cond_0

    .line 28
    invoke-interface {p0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void

    .line 30
    :cond_0
    new-instance p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda36;

    invoke-direct {p0, v0, v1}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda36;-><init>(Lrockstarmobile/Rockstar$TCallback;Lrockstarmobile/RockstarUser;)V

    invoke-static {p0}, Lrockstarmobile/Rockstar;->checkAuthTokenValidity(Lrockstarmobile/Rockstar$TCallback;)V

    :cond_1
    return-void
.end method

.method public static rockstarUserID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lrockstarmobile/RockstarUser;->rockstarId:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static setAnalyticsScreen(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->currentScreenName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v1, "screen_view"

    invoke-static {v1, v0}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5
    sput-object p0, Lrockstarmobile/Rockstar;->currentScreenName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setLocalePriority(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "com.rockstargames.gtactw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.rockstargames.gtalcs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Lrockstarmobile/Lang;->setLocalePriority(Landroid/content/Context;[Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static setMusicVolume(F)V
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->audioLogic:Lrockstarmobile/GCAudioLogic;

    invoke-virtual {v0, p0}, Lrockstarmobile/GCAudioLogic;->setMusicVolume(F)V

    return-void
.end method

.method public static setSoundFxVolume(F)V
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->audioLogic:Lrockstarmobile/GCAudioLogic;

    invoke-virtual {v0, p0}, Lrockstarmobile/GCAudioLogic;->setSoundFxVolume(F)V

    return-void
.end method

.method public static setVolumeCallback(Lrockstarmobile/Rockstar$StateCallback;)V
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->audioLogic:Lrockstarmobile/GCAudioLogic;

    invoke-virtual {v0, p0}, Lrockstarmobile/GCAudioLogic;->setStateCallback(Lrockstarmobile/Rockstar$StateCallback;)V

    return-void
.end method

.method public static setup(Landroid/app/Activity;Lrockstarmobile/Rockstar$StateCallback;Lrockstarmobile/Rockstar$GameTicketCallback;)V
    .locals 10

    .line 1
    sget-boolean v0, Lrockstarmobile/Rockstar;->configured:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lrockstarmobile/Rockstar;->log:Lrockstarmobile/utilities/Log;

    const-string p1, "You can only call Rockstar.setup() once in the lifetime of the game"

    invoke-virtual {p0, p1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lrockstarmobile/Rockstar;->configured:Z

    .line 7
    sput-object p0, Lrockstarmobile/Rockstar;->currentActivity:Landroid/app/Activity;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lrockstarmobile/utilities/Log;->init(Landroid/content/Context;)V

    .line 11
    invoke-static {p0}, Lrockstarmobile/utilities/ApkInfoUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 12
    sget-object v2, Lrockstarmobile/Rockstar;->log:Lrockstarmobile/utilities/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rockstar.setup(SDKVersion:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lrockstarmobile/Rockstar;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", app version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", app code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lrockstarmobile/utilities/ApkInfoUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 18
    const-string v4, "GCState"

    invoke-virtual {v2, v4}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 19
    invoke-static {v3}, Lrockstarmobile/GCState;->setup(Landroid/content/Context;)V

    .line 22
    const-string v4, "GCConfig"

    invoke-virtual {v2, v4}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 23
    invoke-static {v3}, Lrockstarmobile/GCConfig;->setup(Landroid/content/Context;)V

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Mozilla/5.0 (Linux; Android) "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v5, v5, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v5, v5, Lrockstarmobile/GCConfig$GeneralConfig;->urlScheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrockstarmobile/utilities/HttpAPI;->UserAgent:Ljava/lang/String;

    .line 29
    sget-object v0, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v0, v0, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v0, v0, Lrockstarmobile/GCConfig$GeneralConfig;->apiKey:Ljava/lang/String;

    .line 30
    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 31
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    aget-object v4, v4, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lrockstarmobile/GCState;->getEnvironment()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v4, v0}, Lrockstarmobile/Environment;->getEnv(Ljava/lang/String;Ljava/lang/String;)Lrockstarmobile/Environment;

    move-result-object v0

    sput-object v0, Lrockstarmobile/Rockstar;->environment:Lrockstarmobile/Environment;

    .line 32
    iget-object v0, v0, Lrockstarmobile/Environment;->id:Ljava/lang/String;

    sput-object v0, Lrockstarmobile/GCState;->keyPrefix:Ljava/lang/String;

    .line 36
    invoke-static {}, Lrockstarmobile/GCState;->isForceDevMode()Z

    move-result v0

    sput-boolean v0, Lrockstarmobile/Rockstar;->developmentMode:Z

    .line 40
    sget-object v0, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v0, v0, Lrockstarmobile/GCConfig;->gatesconfig:Lrockstarmobile/GCConfig$GatesConfig;

    iget-object v0, v0, Lrockstarmobile/GCConfig$GatesConfig;->type:Lrockstarmobile/GCConfig$GatesConfig$Type;

    sget-object v4, Lrockstarmobile/GCConfig$GatesConfig$Type;->disabled:Lrockstarmobile/GCConfig$GatesConfig$Type;

    if-ne v0, v4, :cond_2

    .line 41
    invoke-static {v1}, Lrockstarmobile/GCState;->setIsGameOwner(Z)V

    .line 45
    :cond_2
    new-instance v0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {p0, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V

    .line 59
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sput-object v0, Lrockstarmobile/Rockstar;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 60
    invoke-static {}, Lrockstarmobile/Rockstar;->updateAnalyticsProperties()V

    .line 63
    invoke-static {p0}, Lrockstarmobile/ui/TrialBanner;->setHostActivity(Landroid/app/Activity;)V

    .line 66
    const-string v4, "Firebase"

    invoke-virtual {v2, v4}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 68
    :try_start_0
    invoke-static {v3}, Lrockstarmobile/integrations/GCFirebaseMessagingService;->setup(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 70
    sget-object v5, Lrockstarmobile/Rockstar;->log:Lrockstarmobile/utilities/Log;

    const-string v6, "Could not initialize firebase"

    invoke-virtual {v5, v6, v0, v2}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 74
    :goto_1
    sput-object p1, Lrockstarmobile/Rockstar;->stateUpdated:Lrockstarmobile/Rockstar$StateCallback;

    .line 77
    sput-object p2, Lrockstarmobile/Rockstar;->gameTicketUpdated:Lrockstarmobile/Rockstar$GameTicketCallback;

    .line 80
    sget-object p2, Lrockstarmobile/Rockstar;->log:Lrockstarmobile/utilities/Log;

    const-string v0, "GCEventLog"

    invoke-virtual {p2, v0}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lrockstarmobile/eventlog/GCEventLog;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Lrockstarmobile/eventlog/GCEventLog;-><init>(Landroid/app/Application;Z)V

    sput-object v0, Lrockstarmobile/Rockstar;->events:Lrockstarmobile/eventlog/GCEventLog;

    .line 83
    sget-boolean v0, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v0, :cond_3

    .line 84
    const-string v0, "Legacy Check!"

    invoke-virtual {p2, v0}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 85
    invoke-static {v3}, Lrockstarmobile/Rockstar;->checkForLegacyInstall(Landroid/content/Context;)V

    .line 89
    :cond_3
    new-instance v0, Lrockstarmobile/Rockstar$LifecycleListener;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lrockstarmobile/Rockstar$LifecycleListener;-><init>(Lrockstarmobile/Rockstar$a;)V

    sput-object v0, Lrockstarmobile/Rockstar;->lifecycleListener:Lrockstarmobile/Rockstar$LifecycleListener;

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v5, Lrockstarmobile/Rockstar;->lifecycleListener:Lrockstarmobile/Rockstar$LifecycleListener;

    invoke-virtual {v0, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 101
    const-string v0, "Update Security Provider"

    invoke-virtual {p2, v0}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lrockstarmobile/Rockstar$a;

    invoke-direct {v0}, Lrockstarmobile/Rockstar$a;-><init>()V

    invoke-static {v3, v0}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeededAsync(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V

    .line 131
    invoke-virtual {p2, v4}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 132
    invoke-static {v3}, Lrockstarmobile/integrations/GCFirebaseMessagingService;->registerTokenListener(Landroid/content/Context;)V

    .line 135
    const-string v0, "Audio"

    invoke-virtual {p2, v0}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 136
    new-instance v0, Lrockstarmobile/GCAudioLogic;

    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    invoke-direct {v0, v4}, Lrockstarmobile/GCAudioLogic;-><init>(Landroid/media/AudioManager;)V

    sput-object v0, Lrockstarmobile/Rockstar;->audioLogic:Lrockstarmobile/GCAudioLogic;

    .line 137
    invoke-virtual {v0, p1}, Lrockstarmobile/GCAudioLogic;->setStateCallback(Lrockstarmobile/Rockstar$StateCallback;)V

    .line 140
    const-string p1, "Subscriptions"

    invoke-virtual {p2, p1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 141
    new-instance p1, Lrockstarmobile/GCSubscriptions;

    invoke-direct {p1, v3}, Lrockstarmobile/GCSubscriptions;-><init>(Landroid/content/Context;)V

    sput-object p1, Lrockstarmobile/Rockstar;->subscriptions:Lrockstarmobile/GCSubscriptions;

    .line 144
    new-array p1, v2, [Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lrockstarmobile/Lang;->setLocalePriority(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 147
    const-string p1, "Initialized"

    invoke-virtual {p2, p1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 150
    const-string p1, "Launch Event"

    invoke-virtual {p2, p1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 151
    invoke-static {v3}, Lrockstarmobile/Rockstar;->getLaunchEventArguments(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    .line 152
    sget-object v0, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v0, v0, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v0, v0, Lrockstarmobile/GCConfig$GeneralConfig;->name:Ljava/lang/String;

    const-string v3, "Game"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {}, Lrockstarmobile/GCState;->getIsFirstLaunchedTracked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 154
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "First Launched"

    invoke-virtual {v0, v5, v4}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    .line 155
    invoke-static {v1}, Lrockstarmobile/GCState;->setIsFirstLaunchedTracked(Z)V

    .line 157
    :cond_4
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object v0

    sget-object v1, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig;->general:Lrockstarmobile/GCConfig$GeneralConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig$GeneralConfig;->name:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Game %s Launched"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    .line 158
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Game Launched"

    invoke-virtual {v0, v1, p1}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lrockstarmobile/GCState;->setLastOpenedGame(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 164
    new-instance p1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda19;

    invoke-direct {p1}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {p1}, Lrockstarmobile/Rockstar;->checkAuthTokenValidity(Lrockstarmobile/Rockstar$TCallback;)V

    .line 172
    :cond_5
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    sput-object v4, Lrockstarmobile/Rockstar;->secondsTimer:Ljava/util/Timer;

    .line 173
    new-instance v5, Lrockstarmobile/Rockstar$b;

    invoke-direct {v5, p0}, Lrockstarmobile/Rockstar$b;-><init>(Landroid/app/Activity;)V

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x3e8

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 182
    sget-object p0, Lrockstarmobile/Rockstar;->subscriptions:Lrockstarmobile/GCSubscriptions;

    new-instance p1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda20;

    invoke-direct {p1}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {p0, v2, p1}, Lrockstarmobile/GCSubscriptions;->checkForNewPurchases(ZLrockstarmobile/Rockstar$Callback;)V

    .line 185
    invoke-static {v3}, Lrockstarmobile/Rockstar;->setAnalyticsScreen(Ljava/lang/String;)V

    .line 187
    const-string p0, "Setup Complete"

    invoke-virtual {p2, p0}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    return-void
.end method

.method private static showDebugAppReviewAlert()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v1, "User Review"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3
    const-string v2, "This is where a user review would show given the device allows it"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5
    new-instance v1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda11;-><init>()V

    const-string v2, "Dismiss"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showDialog(Ljava/lang/String;Ljava/util/HashMap;Lrockstarmobile/Rockstar$TCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lrockstarmobile/Rockstar$TCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "notice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "background"

    const-string v2, "logo"

    if-nez v0, :cond_1

    const-string p1, "cloudsavesdisabledfortrial"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxLogo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxBackground()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    new-array v0, p1, [Ljava/lang/String;

    const-string v1, "CLOUDSAVESFORPAID_HEADING"

    const-string v2, "Cloud saves unavailable during trial"

    invoke-static {v1, v2, v0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "heading"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "CLOUDSAVESFORPAID_SUBHEADING"

    const-string v1, "Cloud saves will become available as soon as you unlock the full game"

    invoke-static {v0, v1, p1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "subheading"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "dismissable"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lrockstarmobile/ui/FlutterNoticeScreen;

    new-instance v1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda21;

    invoke-direct {v1, p2}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda21;-><init>(Lrockstarmobile/Rockstar$TCallback;)V

    const-string p2, "Cloud Saves Disabled During Trial"

    invoke-direct {v0, p0, v1, p2}, Lrockstarmobile/ui/FlutterNoticeScreen;-><init>(Ljava/util/HashMap;Lrockstarmobile/Rockstar$Callback;Ljava/lang/String;)V

    sget-object p0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {p1, v0, p0}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    return-void

    .line 14
    :cond_1
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxLogo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxBackground()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance v0, Lrockstarmobile/ui/FlutterNoticeScreen;

    new-instance v1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda23;

    invoke-direct {v1, p2}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda23;-><init>(Lrockstarmobile/Rockstar$TCallback;)V

    const-string p2, "Notice"

    invoke-direct {v0, p1, v1, p2}, Lrockstarmobile/ui/FlutterNoticeScreen;-><init>(Ljava/util/HashMap;Lrockstarmobile/Rockstar$Callback;Ljava/lang/String;)V

    sget-object p1, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {p0, v0, p1}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    return-void
.end method

.method public static showGate(Ljava/lang/String;Lrockstarmobile/Rockstar$GateCompletionCallback;)V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/Rockstar$c;

    const-string v1, "gate"

    invoke-direct {v0, p0, v1}, Lrockstarmobile/Rockstar$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda27;

    invoke-direct {p0, p1}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda27;-><init>(Lrockstarmobile/Rockstar$GateCompletionCallback;)V

    .line 8
    new-instance p1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0, v0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda28;-><init>(Lrockstarmobile/Rockstar$GateCompletionCallback;Lrockstarmobile/Rockstar$c;)V

    .line 35
    sget-boolean v0, Lrockstarmobile/Rockstar;->developmentMode:Z

    if-eqz v0, :cond_0

    .line 36
    sget v0, Lrockstarmobile/sdk/R$string;->developer_mode_gate_header:I

    sget v1, Lrockstarmobile/sdk/R$array;->developer_mode_gate_options:I

    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda29;

    invoke-direct {v2, p1, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda29;-><init>(Lrockstarmobile/Rockstar$Callback;Lrockstarmobile/Rockstar$GateCompletionCallback;)V

    invoke-static {v0, v1, v2}, Lrockstarmobile/Rockstar;->showMultipleChoices(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 50
    :cond_0
    invoke-interface {p1}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method

.method public static showMultipleChoices(IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    new-instance v1, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0, p1, p2}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;IILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showOtherGames(Lrockstarmobile/Rockstar$Callback;)V
    .locals 3

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Opened More Games"

    invoke-virtual {v0, v2, v1}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    .line 2
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lrockstarmobile/ui/FlutterOtherGamesScreen;

    invoke-direct {v1, p0}, Lrockstarmobile/ui/FlutterOtherGamesScreen;-><init>(Lrockstarmobile/Rockstar$Callback;)V

    sget-object p0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {v0, v1, p0}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    return-void
.end method

.method public static socialClubEnvironment()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->environment:Lrockstarmobile/Environment;

    iget-object v0, v0, Lrockstarmobile/Environment;->id:Ljava/lang/String;

    .line 2
    const-string v1, ""

    if-ne v0, v1, :cond_0

    const-string v0, "prod"

    :cond_0
    return-object v0
.end method

.method public static startAccountDeletion(Lrockstarmobile/Rockstar$Callback;)V
    .locals 3

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;

    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda31;-><init>(Lrockstarmobile/Rockstar$Callback;)V

    invoke-direct {v1, v2}, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;-><init>(Lrockstarmobile/Rockstar$Callback;)V

    sget-object p0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {v0, v1, p0}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    return-void

    .line 7
    :cond_0
    invoke-interface {p0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method

.method public static startUserAuthentication(Lrockstarmobile/Rockstar$ABCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrockstarmobile/Rockstar$ABCallback<",
            "Ljava/lang/Boolean;",
            "Lrockstarmobile/RockstarUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->invalidateUser()V

    .line 3
    new-instance v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;

    sget-object v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->LaunchOptions:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    new-instance v2, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda15;-><init>(Lrockstarmobile/Rockstar$ABCallback;)V

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;-><init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;Lrockstarmobile/Rockstar$TCallback;)V

    .line 17
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object p0

    sget-object v1, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {p0, v0, v1}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    return-void
.end method

.method public static testBackendAPI()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lrockstarmobile/GCState;->setUser(Lrockstarmobile/RockstarUser;)V

    return-void
.end method

.method private static timerOneSecond()V
    .locals 11

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->checkPlayerTicketChange()V

    .line 4
    invoke-static {}, Lrockstarmobile/Rockstar;->configCheck()V

    .line 7
    invoke-static {}, Lrockstarmobile/Rockstar;->refreshSessionIfNeeded()V

    .line 10
    sget-boolean v0, Lrockstarmobile/Rockstar;->uiVisible:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lrockstarmobile/Rockstar;->appInBackground:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 15
    :cond_0
    sget v0, Lrockstarmobile/Rockstar;->milestoneSeconds:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lrockstarmobile/Rockstar;->milestoneSeconds:I

    const/16 v2, 0x3c

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_3

    add-int/lit8 v0, v0, -0x3b

    .line 17
    sput v0, Lrockstarmobile/Rockstar;->milestoneSeconds:I

    .line 18
    invoke-static {}, Lrockstarmobile/GCState;->getMinutesSpentTotal()I

    move-result v0

    add-int/2addr v0, v3

    .line 19
    invoke-static {v0}, Lrockstarmobile/GCState;->setMinutesSpentTotal(I)V

    const/4 v1, 0x7

    .line 21
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v5, -0x1

    move v6, v4

    move v7, v5

    :goto_0
    if-eq v6, v1, :cond_2

    .line 25
    aget v8, v2, v6

    if-gt v8, v0, :cond_1

    move v7, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-eq v7, v5, :cond_3

    .line 30
    aget v0, v2, v7

    invoke-static {}, Lrockstarmobile/GCState;->getMinutesSpentLastMilestone()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 31
    aget v0, v2, v7

    invoke-static {v0}, Lrockstarmobile/GCState;->setMinutesSpentLastMilestone(I)V

    .line 32
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mins"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Milestone"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Play Time Milestone"

    invoke-virtual {v0, v2, v1}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    .line 37
    :cond_3
    invoke-static {}, Lrockstarmobile/GCState;->conf()Lrockstarmobile/GCState$Config;

    move-result-object v0

    .line 38
    invoke-static {}, Lrockstarmobile/Rockstar;->inTrial()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v1, Lrockstarmobile/Rockstar;->hasPassedGate:Z

    if-eqz v1, :cond_7

    .line 39
    invoke-static {}, Lrockstarmobile/GCState;->trialSecondsSpent()I

    move-result v1

    add-int/2addr v1, v3

    .line 40
    iget-object v2, v0, Lrockstarmobile/GCState$Config;->gates:Lrockstarmobile/GCState$ConfigGates;

    iget-object v2, v2, Lrockstarmobile/GCState$ConfigGates;->config:Lrockstarmobile/GCConfig$GatesConfig;

    iget v2, v2, Lrockstarmobile/GCConfig$GatesConfig;->timedGateSeconds:I

    sub-int/2addr v2, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 41
    invoke-static {v1}, Lrockstarmobile/GCState;->setTrialSecondsSpent(I)V

    .line 42
    iget-object v0, v0, Lrockstarmobile/GCState$Config;->gates:Lrockstarmobile/GCState$ConfigGates;

    iget-object v0, v0, Lrockstarmobile/GCState$ConfigGates;->config:Lrockstarmobile/GCConfig$GatesConfig;

    iget v0, v0, Lrockstarmobile/GCConfig$GatesConfig;->timedGateSeconds:I

    invoke-static {v2, v0}, Lrockstarmobile/ui/TrialBanner;->setTimeleft(II)V

    if-nez v2, :cond_8

    .line 46
    invoke-static {}, Lrockstarmobile/Rockstar;->getSubscriptions()Lrockstarmobile/GCSubscriptions;

    move-result-object v0

    invoke-virtual {v0}, Lrockstarmobile/GCSubscriptions;->getFullGameProduct()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "[price]"

    const/4 v5, 0x4

    const-string v6, "[minutes]"

    const/4 v7, 0x2

    if-eqz v0, :cond_4

    .line 50
    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->totalTrialTimeInMinutes()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/String;

    aput-object v6, v10, v4

    aput-object v8, v10, v3

    aput-object v2, v10, v7

    aput-object v9, v10, v1

    const-string v8, "FREE_TRIAL_OVER_SUBHEADING_WITH_PRICE_DEFAULT"

    const-string v9, "Your [minutes] minutes have expired. Buy the full game now for [price]."

    invoke-static {v8, v9, v10}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 52
    :cond_4
    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->totalTrialTimeInMinutes()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/String;

    aput-object v6, v9, v4

    aput-object v8, v9, v3

    const-string v8, "FREE_TRIAL_OVER_SUBHEADING_DEFAULT"

    const-string v10, "Your [minutes] minutes have expired. Buy the full game now."

    invoke-static {v8, v10, v9}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    :goto_1
    sget-boolean v9, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v9, :cond_6

    if-eqz v0, :cond_5

    .line 56
    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->totalTrialTimeInMinutes()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v0

    new-array v5, v5, [Ljava/lang/String;

    aput-object v6, v5, v4

    aput-object v8, v5, v3

    aput-object v2, v5, v7

    aput-object v0, v5, v1

    const-string v0, "FREE_TRIAL_OVER_SUBHEADING_WITH_PRICE"

    const-string v1, "Your [minutes] minutes have expired. Buy the full game for [price] or unlock it with your GTA+ Membership to access the full game for as long as it is included in GTA+ and you remain subscribed."

    invoke-static {v0, v1, v5}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 58
    :cond_5
    invoke-static {}, Lrockstarmobile/ui/FlutterGateScreen;->totalTrialTimeInMinutes()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    aput-object v6, v1, v4

    aput-object v0, v1, v3

    const-string v0, "FREE_TRIAL_OVER_SUBHEADING"

    const-string v2, "Your [minutes] minutes have expired. Buy the full game now or unlock it with your GTA+ Membership to access the full game for as long as it is included in GTA+ and you remain subscribed."

    invoke-static {v0, v2, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 61
    :cond_6
    :goto_2
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lrockstarmobile/ui/FlutterGateScreen;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "FREE_TRIAL_OVER_HEADING"

    const-string v5, "Unlock the Full Game to Continue."

    invoke-static {v3, v5, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda33;

    invoke-direct {v3}, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda33;-><init>()V

    invoke-direct {v1, v2, v8, v4, v3}, Lrockstarmobile/ui/FlutterGateScreen;-><init>(Ljava/lang/String;Ljava/lang/String;ZLrockstarmobile/Rockstar$Callback;)V

    sget-object v2, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {v0, v1, v2}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    return-void

    .line 64
    :cond_7
    iget-object v0, v0, Lrockstarmobile/GCState$Config;->gates:Lrockstarmobile/GCState$ConfigGates;

    iget-object v0, v0, Lrockstarmobile/GCState$ConfigGates;->config:Lrockstarmobile/GCConfig$GatesConfig;

    iget v0, v0, Lrockstarmobile/GCConfig$GatesConfig;->timedGateSeconds:I

    invoke-static {v4, v0}, Lrockstarmobile/ui/TrialBanner;->setTimeleft(II)V

    :cond_8
    :goto_3
    return-void

    :array_0
    .array-data 4
        0x5
        0xa
        0x1e
        0x3c
        0x78
        0xb4
        0xf0
    .end array-data
.end method

.method public static updateAnalyticsProperties()V
    .locals 4

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v0

    .line 3
    sget-object v1, Lrockstarmobile/Rockstar;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lrockstarmobile/RockstarUser;->rockstarId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 4
    sget-boolean v1, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Lrockstarmobile/Rockstar;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    sget-object v3, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    if-ne v0, v3, :cond_1

    const-string v0, "true"

    goto :goto_1

    :cond_1
    const-string v0, "false"

    :goto_1
    const-string v3, "gta_plus_active"

    invoke-virtual {v1, v3, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    sget-object v0, Lrockstarmobile/Rockstar;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    sget-object v1, Lrockstarmobile/Rockstar;->environment:Lrockstarmobile/Environment;

    iget-object v1, v1, Lrockstarmobile/Environment;->id:Ljava/lang/String;

    if-ne v1, v2, :cond_3

    const-string v1, "prod"

    :cond_3
    const-string v2, "environment"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    sget-object v1, Lrockstarmobile/Rockstar;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {v0}, Lrockstarmobile/utilities/ApkInfoUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_build"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
