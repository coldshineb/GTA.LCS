.class public Lcom/rockstargames/socialclub/SocialClubActivity;
.super Landroid/app/Activity;


# static fields
.field private static debugStaticCheck:I


# instance fields
.field activityPaused:Z

.field private startupTimerFinished:Z

.field windowHasFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/rockstargames/socialclub/SocialClubActivity;->startupTimerFinished:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/socialclub/SocialClubActivity;->windowHasFocus:Z

    iput-boolean v1, p0, Lcom/rockstargames/socialclub/SocialClubActivity;->activityPaused:Z

    return-void
.end method

.method static synthetic access$002(Lcom/rockstargames/socialclub/SocialClubActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockstargames/socialclub/SocialClubActivity;->startupTimerFinished:Z

    return p1
.end method


# virtual methods
.method public launchMainGame()V
    .locals 1

    new-instance v0, Lcom/rockstargames/socialclub/b;

    invoke-direct {v0, p0, p0}, Lcom/rockstargames/socialclub/b;-><init>(Lcom/rockstargames/socialclub/SocialClubActivity;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/socialclub/SocialClubActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/ActivityWrapper;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** MainActivity onConfigurationChanged() ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/rockstargames/socialclub/SocialClubActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/rockstargames/hal/ActivityWrapper;->setCurrentScreenSize(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/rockstargames/socialclub/SocialClubActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/rockstargames/socialclub/SocialClubActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-static {p0}, Lcom/rockstargames/hal/ActivityWrapper;->setActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTransitioning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** MainActivity onCreate() transitioning ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->setTransitioning(Z)V

    :goto_0
    sget v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/rockstargames/socialclub/SocialClubActivity;->setRequestedOrientation(I)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/rockstargames/socialclub/SocialClubActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Lcom/rockstargames/hal/ActivityWrapper;->runMain(II)V

    new-instance v0, Lcom/rockstargames/socialclub/a;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/rockstargames/socialclub/a;-><init>(Lcom/rockstargames/socialclub/SocialClubActivity;JJ)V

    invoke-virtual {v0}, Lcom/rockstargames/socialclub/a;->start()Landroid/os/CountDownTimer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/rockstargames/socialclub/SocialClubActivity;->setDeviceOrientation()V

    return-void

    :cond_0
    :try_start_1
    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** MainActivity onCreate() not transitioning ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Exception"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** MainActivity onDestroy() ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->onDestroyCallback()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/rockstargames/socialclub/SocialClubActivity;->startupTimerFinished:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/16 v2, 0x61

    if-ne p1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/rockstargames/socialclub/SocialClubActivity;->onBackPressed()V

    goto :goto_0

    :cond_2
    const/16 v2, 0x16

    if-ne p1, v2, :cond_3

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v1, v1}, Lcom/rockstargames/hal/ActivityWrapper;->SelectNextItem(ZZZZ)V

    :cond_3
    const/16 v2, 0x15

    if-ne p1, v2, :cond_4

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v1, v1}, Lcom/rockstargames/hal/ActivityWrapper;->SelectNextItem(ZZZZ)V

    :cond_4
    const/16 v2, 0x13

    if-ne p1, v2, :cond_5

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v0, v1}, Lcom/rockstargames/hal/ActivityWrapper;->SelectNextItem(ZZZZ)V

    :cond_5
    const/16 v2, 0x14

    if-ne p1, v2, :cond_6

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v1, v0}, Lcom/rockstargames/hal/ActivityWrapper;->SelectNextItem(ZZZZ)V

    :cond_6
    const/16 v0, 0x60

    if-ne p1, v0, :cond_7

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/ActivityWrapper;->PressSelectedItem()V

    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** MainActivity onPause() ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/socialclub/SocialClubActivity;->activityPaused:Z

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->onPauseCallback()V

    return-void
.end method

.method protected onRestart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** MainActivity onRestart() ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->onRestartCallback()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** MainActivity onResume() ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    iget-boolean v0, p0, Lcom/rockstargames/socialclub/SocialClubActivity;->windowHasFocus:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/socialclub/SocialClubActivity;->activityPaused:Z

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->onResumeCallback()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "StartupActivity"

    const-string v1, "*** MainActivity onResume() - window no focus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** MainActivity onStart() ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->onStartCallback()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** MainActivity onStop() ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ***)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/socialclub/SocialClubActivity;->debugStaticCheck:I

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->onStopCallback()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "StartupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** onWindowFocusChanged - focus ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), paused ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/rockstargames/socialclub/SocialClubActivity;->activityPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/rockstargames/socialclub/SocialClubActivity;->activityPaused:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/socialclub/SocialClubActivity;->activityPaused:Z

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->onResumeCallback()V

    :cond_0
    iput-boolean p1, p0, Lcom/rockstargames/socialclub/SocialClubActivity;->windowHasFocus:Z

    return-void
.end method

.method protected setDeviceOrientation()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/rockstargames/socialclub/SocialClubActivity;->setRequestedOrientation(I)V

    const-string v0, "SocialClub"

    const-string v1, "Setting orientation to SCREEN_ORIENTATION_USER_LANDSCAPE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/rockstargames/socialclub/SocialClubActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
