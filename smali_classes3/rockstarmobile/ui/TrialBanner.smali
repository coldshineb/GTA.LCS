.class public Lrockstarmobile/ui/TrialBanner;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/ui/TrialBanner$a;
    }
.end annotation


# static fields
.field private static banner:Lrockstarmobile/ui/TrialBanner;

.field private static forceHidden:Z

.field private static hostActivity:Landroid/app/Activity;

.field private static final log:Lrockstarmobile/utilities/Log;

.field private static secondsLeft:I

.field private static secondsTotal:I

.field private static state:Lrockstarmobile/ui/TrialBanner$a;


# instance fields
.field currentAnimation:Landroid/view/ViewPropertyAnimator;

.field label:Landroid/widget/TextView;

.field progressView:Landroid/view/View;

.field view:Landroid/view/View;

.field private wasFull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const/4 v1, 0x1

    const-string v2, "TrialBanner"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v1}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lrockstarmobile/ui/TrialBanner;->log:Lrockstarmobile/utilities/Log;

    .line 11
    sget-object v0, Lrockstarmobile/ui/TrialBanner$a;->a:Lrockstarmobile/ui/TrialBanner$a;

    sput-object v0, Lrockstarmobile/ui/TrialBanner;->state:Lrockstarmobile/ui/TrialBanner$a;

    .line 12
    sput v3, Lrockstarmobile/ui/TrialBanner;->secondsLeft:I

    .line 13
    sput v3, Lrockstarmobile/ui/TrialBanner;->secondsTotal:I

    .line 14
    sput-boolean v3, Lrockstarmobile/ui/TrialBanner;->forceHidden:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lrockstarmobile/ui/TrialBanner;->currentAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lrockstarmobile/ui/TrialBanner;->wasFull:Z

    return-void
.end method

.method public static durationString(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 2
    div-int/lit8 v0, p0, 0x3c

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0x3c

    sub-int/2addr p0, v1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    const-string v2, "0"

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private durationleft()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lrockstarmobile/ui/TrialBanner;->secondsTotal:I

    .line 2
    sget v1, Lrockstarmobile/ui/TrialBanner;->secondsLeft:I

    sub-int v1, v0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    invoke-static {v0}, Lrockstarmobile/ui/TrialBanner;->durationString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$refresh$0()V
    .locals 2

    .line 1
    sget-object v0, Lrockstarmobile/ui/TrialBanner;->banner:Lrockstarmobile/ui/TrialBanner;

    sget-object v1, Lrockstarmobile/ui/TrialBanner$a;->a:Lrockstarmobile/ui/TrialBanner$a;

    invoke-virtual {v0, v1}, Lrockstarmobile/ui/TrialBanner;->position(Lrockstarmobile/ui/TrialBanner$a;)V

    .line 2
    sget-object v0, Lrockstarmobile/ui/TrialBanner;->banner:Lrockstarmobile/ui/TrialBanner;

    invoke-virtual {v0}, Lrockstarmobile/ui/TrialBanner;->updateProgress()V

    .line 3
    sget-object v0, Lrockstarmobile/ui/TrialBanner;->banner:Lrockstarmobile/ui/TrialBanner;

    sget-object v1, Lrockstarmobile/ui/TrialBanner;->state:Lrockstarmobile/ui/TrialBanner$a;

    invoke-virtual {v0, v1}, Lrockstarmobile/ui/TrialBanner;->animate(Lrockstarmobile/ui/TrialBanner$a;)V

    return-void
.end method

.method static synthetic lambda$showUnlock$6()V
    .locals 0

    return-void
.end method

.method public static refresh()V
    .locals 2

    .line 1
    sget-boolean v0, Lrockstarmobile/ui/TrialBanner;->forceHidden:Z

    if-nez v0, :cond_2

    sget-object v0, Lrockstarmobile/ui/TrialBanner;->state:Lrockstarmobile/ui/TrialBanner$a;

    sget-object v1, Lrockstarmobile/ui/TrialBanner$a;->a:Lrockstarmobile/ui/TrialBanner$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lrockstarmobile/ui/TrialBanner;->banner:Lrockstarmobile/ui/TrialBanner;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lrockstarmobile/ui/TrialBanner;

    invoke-direct {v0}, Lrockstarmobile/ui/TrialBanner;-><init>()V

    sput-object v0, Lrockstarmobile/ui/TrialBanner;->banner:Lrockstarmobile/ui/TrialBanner;

    .line 11
    new-instance v1, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Lrockstarmobile/ui/TrialBanner;->build(Lrockstarmobile/Rockstar$Callback;)V

    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Lrockstarmobile/ui/TrialBanner;->updateProgress()V

    .line 19
    sget-object v0, Lrockstarmobile/ui/TrialBanner;->banner:Lrockstarmobile/ui/TrialBanner;

    sget-object v1, Lrockstarmobile/ui/TrialBanner;->state:Lrockstarmobile/ui/TrialBanner$a;

    invoke-virtual {v0, v1}, Lrockstarmobile/ui/TrialBanner;->position(Lrockstarmobile/ui/TrialBanner$a;)V

    return-void

    .line 20
    :cond_2
    :goto_0
    sget-object v0, Lrockstarmobile/ui/TrialBanner;->banner:Lrockstarmobile/ui/TrialBanner;

    const/4 v1, 0x0

    .line 21
    sput-object v1, Lrockstarmobile/ui/TrialBanner;->banner:Lrockstarmobile/ui/TrialBanner;

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v0}, Lrockstarmobile/ui/TrialBanner;->remove()V

    :cond_3
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/ui/TrialBanner;->log:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trialbanner: setting activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lrockstarmobile/ui/TrialBanner;->state:Lrockstarmobile/ui/TrialBanner$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rockstarmobile."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sput-object p0, Lrockstarmobile/ui/TrialBanner;->hostActivity:Landroid/app/Activity;

    .line 10
    sget-object p0, Lrockstarmobile/ui/TrialBanner;->banner:Lrockstarmobile/ui/TrialBanner;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 12
    sput-object v0, Lrockstarmobile/ui/TrialBanner;->banner:Lrockstarmobile/ui/TrialBanner;

    .line 13
    invoke-virtual {p0}, Lrockstarmobile/ui/TrialBanner;->remove()V

    .line 14
    invoke-static {}, Lrockstarmobile/ui/TrialBanner;->refresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTimeleft(II)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/ui/TrialBanner;->log:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trialbanner: timeleft : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lrockstarmobile/ui/TrialBanner;->state:Lrockstarmobile/ui/TrialBanner$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 2
    sput p0, Lrockstarmobile/ui/TrialBanner;->secondsLeft:I

    .line 3
    sput p1, Lrockstarmobile/ui/TrialBanner;->secondsTotal:I

    .line 4
    sget-object p1, Lrockstarmobile/ui/TrialBanner;->state:Lrockstarmobile/ui/TrialBanner$a;

    sget-object v0, Lrockstarmobile/ui/TrialBanner$a;->a:Lrockstarmobile/ui/TrialBanner$a;

    if-ne p1, v0, :cond_0

    sget p1, Lrockstarmobile/ui/TrialBanner;->secondsLeft:I

    if-lez p1, :cond_0

    .line 5
    sget-object p1, Lrockstarmobile/ui/TrialBanner$a;->c:Lrockstarmobile/ui/TrialBanner$a;

    sput-object p1, Lrockstarmobile/ui/TrialBanner;->state:Lrockstarmobile/ui/TrialBanner$a;

    :cond_0
    if-nez p0, :cond_1

    .line 8
    sput-object v0, Lrockstarmobile/ui/TrialBanner;->state:Lrockstarmobile/ui/TrialBanner$a;

    .line 10
    :cond_1
    invoke-static {}, Lrockstarmobile/ui/TrialBanner;->refresh()V

    return-void
.end method


# virtual methods
.method public animate(Lrockstarmobile/ui/TrialBanner$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/TrialBanner;->currentAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5
    :cond_0
    iget-object v0, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/ui/TrialBanner;->currentAnimation:Landroid/view/ViewPropertyAnimator;

    .line 9
    invoke-virtual {p0, p1}, Lrockstarmobile/ui/TrialBanner;->positionY(Lrockstarmobile/ui/TrialBanner$a;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/ui/TrialBanner;->currentAnimation:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x12c

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/ui/TrialBanner;->currentAnimation:Landroid/view/ViewPropertyAnimator;

    .line 11
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/ui/TrialBanner;->currentAnimation:Landroid/view/ViewPropertyAnimator;

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method public build(Lrockstarmobile/Rockstar$Callback;)V
    .locals 2

    .line 1
    sget-object v0, Lrockstarmobile/ui/TrialBanner;->hostActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lrockstarmobile/ui/TrialBanner;->hostActivity:Landroid/app/Activity;

    .line 4
    :cond_0
    sget-object v0, Lrockstarmobile/ui/TrialBanner;->hostActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    new-instance v1, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1}, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda2;-><init>(Lrockstarmobile/ui/TrialBanner;Landroid/view/ViewGroup;Lrockstarmobile/Rockstar$Callback;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$build$1$rockstarmobile-ui-TrialBanner(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrockstarmobile/ui/TrialBanner;->onlyProgress()V

    return-void
.end method

.method synthetic lambda$build$2$rockstarmobile-ui-TrialBanner(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrockstarmobile/ui/TrialBanner;->showUnlock()V

    return-void
.end method

.method synthetic lambda$build$3$rockstarmobile-ui-TrialBanner(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrockstarmobile/ui/TrialBanner;->showFull()V

    return-void
.end method

.method synthetic lambda$build$4$rockstarmobile-ui-TrialBanner(Landroid/view/ViewGroup;Lrockstarmobile/Rockstar$Callback;)V
    .locals 4

    .line 1
    sget-object v0, Lrockstarmobile/ui/TrialBanner;->hostActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3
    sget v1, Lrockstarmobile/sdk/R$layout;->trialbanner:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    .line 5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    sget-object v1, Lrockstarmobile/ui/TrialBanner;->hostActivity:Landroid/app/Activity;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42bc0000    # 94.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 9
    iget-object v1, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    sget v0, Lrockstarmobile/sdk/R$id;->caption:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lrockstarmobile/ui/TrialBanner;->label:Landroid/widget/TextView;

    .line 12
    iget-object p1, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    sget v0, Lrockstarmobile/sdk/R$id;->progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/ui/TrialBanner;->progressView:Landroid/view/View;

    .line 14
    iget-object p1, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    sget v0, Lrockstarmobile/sdk/R$id;->buttonX:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda3;-><init>(Lrockstarmobile/ui/TrialBanner;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    sget v0, Lrockstarmobile/sdk/R$id;->buttonUnlock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TIMERBAR_UNLOCK"

    const-string v2, "Unlock"

    invoke-static {v1, v2, v0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    sget v0, Lrockstarmobile/sdk/R$id;->buttonUnlock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda4;-><init>(Lrockstarmobile/ui/TrialBanner;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    new-instance v0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda5;-><init>(Lrockstarmobile/ui/TrialBanner;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-interface {p2}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method

.method synthetic lambda$remove$5$rockstarmobile-ui-TrialBanner(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onlyProgress()V
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/ui/TrialBanner$a;->b:Lrockstarmobile/ui/TrialBanner$a;

    sput-object v0, Lrockstarmobile/ui/TrialBanner;->state:Lrockstarmobile/ui/TrialBanner$a;

    .line 2
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/TrialBanner;->animate(Lrockstarmobile/ui/TrialBanner$a;)V

    return-void
.end method

.method public position(Lrockstarmobile/ui/TrialBanner$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lrockstarmobile/ui/TrialBanner;->positionY(Lrockstarmobile/ui/TrialBanner$a;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    :cond_0
    return-void
.end method

.method public positionY(Lrockstarmobile/ui/TrialBanner$a;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    move v0, v2

    goto :goto_1

    .line 6
    :cond_1
    iget-boolean v0, p0, Lrockstarmobile/ui/TrialBanner;->wasFull:Z

    if-nez v0, :cond_0

    .line 7
    const-string v0, "Timer Bar"

    invoke-static {v0}, Lrockstarmobile/Rockstar;->setAnalyticsScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v3, -0x3d660000    # -77.0f

    invoke-static {v0, v3}, Lrockstarmobile/utilities/Dimensions;->convertDpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v0, v3}, Lrockstarmobile/utilities/Dimensions;->convertDpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    .line 25
    :goto_1
    sget-object v3, Lrockstarmobile/ui/TrialBanner$a;->c:Lrockstarmobile/ui/TrialBanner$a;

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lrockstarmobile/ui/TrialBanner;->wasFull:Z

    return v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/TrialBanner;->currentAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lrockstarmobile/ui/TrialBanner;->currentAnimation:Landroid/view/ViewPropertyAnimator;

    .line 7
    :cond_0
    iget-object v0, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 9
    new-instance v1, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda0;-><init>(Lrockstarmobile/ui/TrialBanner;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public showFull()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v1, "element_label"

    const-string v2, "timerbar"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lrockstarmobile/ui/TrialBanner;->durationleft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v1, "trial_timer_tap"

    invoke-static {v1, v0}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    sget-object v0, Lrockstarmobile/ui/TrialBanner$a;->c:Lrockstarmobile/ui/TrialBanner$a;

    sput-object v0, Lrockstarmobile/ui/TrialBanner;->state:Lrockstarmobile/ui/TrialBanner$a;

    .line 7
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/TrialBanner;->animate(Lrockstarmobile/ui/TrialBanner$a;)V

    return-void
.end method

.method public showUnlock()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v1, "element_label"

    const-string v2, "trialbar"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TIMERBAR_UNLOCK"

    const-string v3, "Unlock"

    invoke-static {v2, v3, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v1, "cta_unlock_game"

    invoke-static {v1, v0}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    invoke-static {}, Lrockstarmobile/Rockstar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lrockstarmobile/ui/FlutterGateScreen;

    new-instance v2, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda1;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lrockstarmobile/ui/FlutterGateScreen;-><init>(ZLrockstarmobile/Rockstar$Callback;)V

    sget-object v2, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {v0, v1, v2}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    return-void
.end method

.method public updateProgress()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<b>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lrockstarmobile/ui/TrialBanner;->durationleft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<b/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "[minutes]"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "TRIALBANNER_DURATIONLEFT"

    const-string v2, "This game is free to play for [minutes] minutes"

    invoke-static {v0, v2, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lrockstarmobile/ui/TrialBanner;->label:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lrockstarmobile/ui/TrialBanner;->progressView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 7
    sget v0, Lrockstarmobile/ui/TrialBanner;->secondsTotal:I

    .line 8
    sget v1, Lrockstarmobile/ui/TrialBanner;->secondsLeft:I

    sub-int v1, v0, v1

    sub-int v1, v0, v1

    .line 9
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 12
    iget-object v0, p0, Lrockstarmobile/ui/TrialBanner;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 13
    iget-object v0, p0, Lrockstarmobile/ui/TrialBanner;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 16
    :cond_1
    iget-object v0, p0, Lrockstarmobile/ui/TrialBanner;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method
