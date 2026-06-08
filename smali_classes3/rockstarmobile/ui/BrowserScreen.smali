.class public Lrockstarmobile/ui/BrowserScreen;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/ui/BrowserScreen$AcceptTermsCallback;,
        Lrockstarmobile/ui/BrowserScreen$b;,
        Lrockstarmobile/ui/BrowserScreen$OpenedCallback;,
        Lrockstarmobile/ui/BrowserScreen$PlatformLinkedCallback;,
        Lrockstarmobile/ui/BrowserScreen$LoginCallback;,
        Lrockstarmobile/ui/BrowserScreen$c;
    }
.end annotation


# static fields
.field private static final log:Lrockstarmobile/utilities/Log;

.field private static pendingLaunches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lrockstarmobile/ui/BrowserScreen$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backButton:Landroid/widget/ImageButton;

.field private closeButton:Landroid/widget/ImageButton;

.field private closed:Z

.field private errorRetryButton:Landroid/widget/Button;

.field private errorView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private errorViewVisible:Z

.field private forwardButton:Landroid/widget/ImageButton;

.field public hideNavigationBar:Z

.field public hideNotch:Z

.field private loaded:Z

.field private progress:Landroid/widget/ProgressBar;

.field private reloadButton:Landroid/widget/ImageButton;

.field private title:Landroid/widget/TextView;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "BrowserScreen"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lrockstarmobile/ui/BrowserScreen;->log:Lrockstarmobile/utilities/Log;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lrockstarmobile/ui/BrowserScreen;->pendingLaunches:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lrockstarmobile/ui/BrowserScreen;->hideNotch:Z

    .line 133
    iput-boolean v0, p0, Lrockstarmobile/ui/BrowserScreen;->hideNavigationBar:Z

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lrockstarmobile/ui/BrowserScreen;->loaded:Z

    .line 327
    iput-boolean v0, p0, Lrockstarmobile/ui/BrowserScreen;->closed:Z

    return-void
.end method

.method static synthetic access$100()Lrockstarmobile/utilities/Log;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/ui/BrowserScreen;->log:Lrockstarmobile/utilities/Log;

    return-object v0
.end method

.method static synthetic access$200(Lrockstarmobile/ui/BrowserScreen;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lrockstarmobile/ui/BrowserScreen;->loaded:Z

    return p0
.end method

.method static synthetic access$202(Lrockstarmobile/ui/BrowserScreen;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lrockstarmobile/ui/BrowserScreen;->loaded:Z

    return p1
.end method

.method static synthetic access$300(Lrockstarmobile/ui/BrowserScreen;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lrockstarmobile/ui/BrowserScreen;->errorView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic access$400(Lrockstarmobile/ui/BrowserScreen;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lrockstarmobile/ui/BrowserScreen;->errorViewVisible:Z

    return p0
.end method

.method static synthetic access$402(Lrockstarmobile/ui/BrowserScreen;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lrockstarmobile/ui/BrowserScreen;->errorViewVisible:Z

    return p1
.end method

.method static synthetic access$500(Lrockstarmobile/ui/BrowserScreen;ZZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lrockstarmobile/ui/BrowserScreen;->changeState(ZZZZZZZ)V

    return-void
.end method

.method static synthetic access$600(Lrockstarmobile/ui/BrowserScreen;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$700(Lrockstarmobile/ui/BrowserScreen;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lrockstarmobile/ui/BrowserScreen;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method private changeState(ZZZZZZZ)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen;->title:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p3, :cond_3

    move p2, v1

    goto :goto_2

    :cond_3
    move p2, v2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p4, :cond_4

    move p2, v1

    goto :goto_3

    :cond_4
    move p2, v2

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->forwardButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p5, :cond_5

    move p2, v1

    goto :goto_4

    :cond_5
    move p2, v2

    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 8
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->reloadButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p6, :cond_6

    move p2, v1

    goto :goto_5

    :cond_6
    move p2, v2

    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->errorView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p7, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 10
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->errorRetryButton:Landroid/widget/Button;

    if-eqz p7, :cond_8

    const/4 p2, 0x0

    goto :goto_7

    :cond_8
    const/16 p2, 0x8

    :goto_7
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$launch$3()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$launch$4(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$launchAcceptTermsFlow$0(Lrockstarmobile/ui/BrowserScreen$AcceptTermsCallback;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lrockstarmobile/ui/BrowserScreen$AcceptTermsCallback;->onResult(Z)V

    return-void
.end method

.method static synthetic lambda$launchLogin$2(Lrockstarmobile/ui/BrowserScreen$LoginCallback;Ljava/util/HashMap;)V
    .locals 5

    .line 1
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 5
    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lrockstarmobile/ui/BrowserScreen;->log:Lrockstarmobile/utilities/Log;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 9
    const-string v0, "scAuth.ScAuthToken"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    const-string v3, "scAuth.RememberedMachineToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    const-string v4, "scAuth.Fingerprint"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v0, v3, v2, p1}, Lrockstarmobile/ui/BrowserScreen$LoginCallback;->onResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    sget-object v0, Lrockstarmobile/ui/BrowserScreen;->log:Lrockstarmobile/utilities/Log;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 20
    sget-object v0, Lrockstarmobile/ui/BrowserScreen;->log:Lrockstarmobile/utilities/Log;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    .line 26
    :cond_0
    :goto_0
    const-string p1, ""

    invoke-interface {p0, p1, p1, p1, p1}, Lrockstarmobile/ui/BrowserScreen$LoginCallback;->onResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$launchPlatformLink$1(Lrockstarmobile/ui/BrowserScreen$PlatformLinkedCallback;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lrockstarmobile/ui/BrowserScreen$PlatformLinkedCallback;->onResult()V

    return-void
.end method

.method private static launch(Landroid/app/Activity;Ljava/lang/String;Lrockstarmobile/ui/BrowserScreen$OpenedCallback;ZLrockstarmobile/ui/BrowserScreen$b;)V
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
    sget-object v1, Lrockstarmobile/ui/BrowserScreen;->log:Lrockstarmobile/utilities/Log;

    const-string v2, "Rockstar not configured (??) - attempting to initialize"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    .line 6
    :try_start_0
    new-instance v1, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v1, v2}, Lrockstarmobile/Rockstar;->setup(Landroid/app/Activity;Lrockstarmobile/Rockstar$StateCallback;Lrockstarmobile/Rockstar$GameTicketCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    sget-object v2, Lrockstarmobile/ui/BrowserScreen;->log:Lrockstarmobile/utilities/Log;

    const-string v4, "Failed to initialize Rockstar API"

    invoke-virtual {v2, v4, v1, v3}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 13
    :cond_0
    :goto_0
    new-instance v1, Lrockstarmobile/ui/BrowserScreen$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrockstarmobile/ui/BrowserScreen$c;-><init>(Lrockstarmobile/ui/BrowserScreen$a;)V

    .line 14
    iput-object p1, v1, Lrockstarmobile/ui/BrowserScreen$c;->a:Ljava/lang/String;

    .line 15
    iput-object p4, v1, Lrockstarmobile/ui/BrowserScreen$c;->c:Lrockstarmobile/ui/BrowserScreen$b;

    .line 16
    iput-object p2, v1, Lrockstarmobile/ui/BrowserScreen$c;->e:Lrockstarmobile/ui/BrowserScreen$OpenedCallback;

    .line 17
    iput-boolean p3, v1, Lrockstarmobile/ui/BrowserScreen$c;->d:Z

    .line 18
    sget-object p1, Lrockstarmobile/ui/BrowserScreen;->pendingLaunches:Ljava/util/HashMap;

    monitor-enter p1

    .line 19
    :try_start_1
    sget-object p2, Lrockstarmobile/ui/BrowserScreen;->pendingLaunches:Ljava/util/HashMap;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lrockstarmobile/ui/BrowserScreen;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    const-string p2, "PENDINGID"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :catchall_0
    move-exception p0

    .line 27
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static launchAcceptTermsFlow(Landroid/app/Activity;Lrockstarmobile/RockstarUser;Lrockstarmobile/ui/BrowserScreen$OpenedCallback;Lrockstarmobile/ui/BrowserScreen$AcceptTermsCallback;)V
    .locals 4

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object p1, p1, Lrockstarmobile/RockstarUser;->scAuthToken:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    .line 8
    :goto_0
    invoke-static {}, Lrockstarmobile/Lang;->currentLocale()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10
    const-string v1, "en-US"

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lrockstarmobile/Environment;->socialClubAuthHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mobile?cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lrockstarmobile/Environment;->scAuthClientId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&lang="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&scAuthToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda9;

    invoke-direct {v0, p3}, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda9;-><init>(Lrockstarmobile/ui/BrowserScreen$AcceptTermsCallback;)V

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lrockstarmobile/ui/BrowserScreen;->launch(Landroid/app/Activity;Ljava/lang/String;Lrockstarmobile/ui/BrowserScreen$OpenedCallback;ZLrockstarmobile/ui/BrowserScreen$b;)V

    return-void
.end method

.method public static launchLogin(Landroid/app/Activity;Ljava/lang/String;Lrockstarmobile/ui/BrowserScreen$OpenedCallback;Lrockstarmobile/ui/BrowserScreen$LoginCallback;)V
    .locals 4

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object v0

    .line 2
    invoke-static {}, Lrockstarmobile/Lang;->currentLocale()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    const-string v1, "en-US"

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lrockstarmobile/Environment;->socialClubAuthHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "/?cid="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Lrockstarmobile/Environment;->scAuthClientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&lang="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3}, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda2;-><init>(Lrockstarmobile/ui/BrowserScreen$LoginCallback;)V

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lrockstarmobile/ui/BrowserScreen;->launch(Landroid/app/Activity;Ljava/lang/String;Lrockstarmobile/ui/BrowserScreen$OpenedCallback;ZLrockstarmobile/ui/BrowserScreen$b;)V

    return-void
.end method

.method public static launchPlatformLink(Landroid/app/Activity;Lrockstarmobile/RockstarUser;Ljava/lang/String;Lrockstarmobile/ui/BrowserScreen$OpenedCallback;Lrockstarmobile/ui/BrowserScreen$PlatformLinkedCallback;)V
    .locals 4

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->getEnvironment()Lrockstarmobile/Environment;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object p1, p1, Lrockstarmobile/RockstarUser;->scAuthToken:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    .line 8
    :goto_0
    invoke-static {}, Lrockstarmobile/Lang;->currentLocale()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10
    const-string v1, "en-US"

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lrockstarmobile/Environment;->socialClubAuthHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tpa/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "/mobile/link?cid="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v0, Lrockstarmobile/Environment;->scAuthClientId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "&lang="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "&scAuthToken="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda8;

    invoke-direct {p2, p4}, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda8;-><init>(Lrockstarmobile/ui/BrowserScreen$PlatformLinkedCallback;)V

    const/4 p4, 0x1

    invoke-static {p0, p1, p3, p4, p2}, Lrockstarmobile/ui/BrowserScreen;->launch(Landroid/app/Activity;Ljava/lang/String;Lrockstarmobile/ui/BrowserScreen$OpenedCallback;ZLrockstarmobile/ui/BrowserScreen$b;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lrockstarmobile/ui/BrowserScreen;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lrockstarmobile/ui/BrowserScreen;->closed:Z

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PENDINGID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    sget-object v1, Lrockstarmobile/ui/BrowserScreen;->pendingLaunches:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrockstarmobile/ui/BrowserScreen$c;

    if-eqz v1, :cond_1

    .line 13
    sget-object v2, Lrockstarmobile/ui/BrowserScreen;->pendingLaunches:Ljava/util/HashMap;

    monitor-enter v2

    .line 14
    :try_start_0
    sget-object v3, Lrockstarmobile/ui/BrowserScreen;->pendingLaunches:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, v1, Lrockstarmobile/ui/BrowserScreen$c;->c:Lrockstarmobile/ui/BrowserScreen$b;

    iget-object v1, v1, Lrockstarmobile/ui/BrowserScreen$c;->b:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lrockstarmobile/ui/BrowserScreen$b;->a(Ljava/util/HashMap;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$5$rockstarmobile-ui-BrowserScreen(Lrockstarmobile/ui/BrowserScreen$c;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lrockstarmobile/ui/BrowserScreen$c;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 2
    invoke-virtual {p0}, Lrockstarmobile/ui/BrowserScreen;->close()V

    return-void
.end method

.method synthetic lambda$onCreate$6$rockstarmobile-ui-BrowserScreen(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$7$rockstarmobile-ui-BrowserScreen(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$8$rockstarmobile-ui-BrowserScreen(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method synthetic lambda$onCreate$9$rockstarmobile-ui-BrowserScreen(Lrockstarmobile/ui/BrowserScreen$c;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p2, 0x0

    .line 1
    iput-boolean p2, p0, Lrockstarmobile/ui/BrowserScreen;->loaded:Z

    .line 2
    iput-boolean p2, p0, Lrockstarmobile/ui/BrowserScreen;->errorViewVisible:Z

    .line 3
    iget-object p2, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    iget-object p1, p1, Lrockstarmobile/ui/BrowserScreen$c;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 4
    :cond_0
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lrockstarmobile/ui/BrowserScreen;->close()V

    :cond_1
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
    sget-object p1, Lrockstarmobile/ui/BrowserScreen;->log:Lrockstarmobile/utilities/Log;

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
    sget-object p1, Lrockstarmobile/ui/BrowserScreen;->pendingLaunches:Ljava/util/HashMap;

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
    sget-object v3, Lrockstarmobile/ui/BrowserScreen;->pendingLaunches:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrockstarmobile/ui/BrowserScreen$c;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 22
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    sget p1, Lrockstarmobile/sdk/R$layout;->browser:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 36
    sget p1, Lrockstarmobile/sdk/R$id;->webview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    .line 37
    invoke-static {}, Lrockstarmobile/Rockstar;->isDevelopmentMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 38
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 40
    :cond_3
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setAlpha(F)V

    .line 41
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "; GreenStarSDK.Android sdkversion"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lrockstarmobile/Rockstar;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 43
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 44
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 45
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 46
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 47
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 48
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 52
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 53
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lrockstarmobile/sdk/R$color;->colorPrimary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 54
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    new-instance v1, Lrockstarmobile/ui/BrowserScreen$a;

    invoke-direct {v1, p0, v3}, Lrockstarmobile/ui/BrowserScreen$a;-><init>(Lrockstarmobile/ui/BrowserScreen;Lrockstarmobile/ui/BrowserScreen$c;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 121
    sget p1, Lrockstarmobile/sdk/R$id;->textViewTitle:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->title:Landroid/widget/TextView;

    .line 124
    sget p1, Lrockstarmobile/sdk/R$id;->buttonClose:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->closeButton:Landroid/widget/ImageButton;

    .line 125
    new-instance v1, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v3}, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda3;-><init>(Lrockstarmobile/ui/BrowserScreen;Lrockstarmobile/ui/BrowserScreen$c;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget p1, Lrockstarmobile/sdk/R$id;->buttonBack:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->backButton:Landroid/widget/ImageButton;

    .line 130
    new-instance v1, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda4;-><init>(Lrockstarmobile/ui/BrowserScreen;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    sget p1, Lrockstarmobile/sdk/R$id;->buttonForward:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->forwardButton:Landroid/widget/ImageButton;

    .line 136
    new-instance v1, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda5;-><init>(Lrockstarmobile/ui/BrowserScreen;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget p1, Lrockstarmobile/sdk/R$id;->buttonReload:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->reloadButton:Landroid/widget/ImageButton;

    .line 142
    new-instance v1, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda6;-><init>(Lrockstarmobile/ui/BrowserScreen;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget p1, Lrockstarmobile/sdk/R$id;->loadingIndicator:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->progress:Landroid/widget/ProgressBar;

    .line 148
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lrockstarmobile/sdk/R$color;->gameclubpurple:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 151
    sget p1, Lrockstarmobile/sdk/R$id;->error:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->errorView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 152
    sget v1, Lrockstarmobile/sdk/R$id;->errorRetryButton:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->errorRetryButton:Landroid/widget/Button;

    .line 153
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->errorView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    .line 154
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->errorRetryButton:Landroid/widget/Button;

    new-instance v0, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v3}, Lrockstarmobile/ui/BrowserScreen$$ExternalSyntheticLambda7;-><init>(Lrockstarmobile/ui/BrowserScreen;Lrockstarmobile/ui/BrowserScreen$c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->errorRetryButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen;->webview:Landroid/webkit/WebView;

    iget-object v0, v3, Lrockstarmobile/ui/BrowserScreen$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 163
    iget-object p1, v3, Lrockstarmobile/ui/BrowserScreen$c;->e:Lrockstarmobile/ui/BrowserScreen$OpenedCallback;

    invoke-interface {p1}, Lrockstarmobile/ui/BrowserScreen$OpenedCallback;->onOpened()V

    return-void

    .line 164
    :cond_4
    :goto_1
    :try_start_1
    sget-object v1, Lrockstarmobile/ui/BrowserScreen;->log:Lrockstarmobile/utilities/Log;

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

    invoke-virtual {v1, v0, v4}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 166
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    .line 168
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrockstarmobile/ui/BrowserScreen;->hideNotch:Z

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
    iget-boolean v0, p0, Lrockstarmobile/ui/BrowserScreen;->hideNavigationBar:Z

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 20
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
