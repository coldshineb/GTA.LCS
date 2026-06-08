.class public Lcom/rockstargames/gtalcs/MovieActivity;
.super Lcom/fastman92/main_activity_launcher/AlteredType/android/app/Activity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private length:I

.field mVideoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MovieActivity"

    sput-object v0, Lcom/rockstargames/gtalcs/MovieActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockstargames/gtalcs/MovieActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected hideSystemUI()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "ORI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/MovieActivity;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->setDeviceOrientation()V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->hideSystemUI()V

    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/2131034117"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/rockstargames/gtalcs/MovieActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :try_start_0
    iget-object v1, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/rockstargames/gtalcs/D;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/D;-><init>(Lcom/rockstargames/gtalcs/MovieActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/rockstargames/gtalcs/E;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/E;-><init>(Lcom/rockstargames/gtalcs/MovieActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/rockstargames/gtalcs/F;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/F;-><init>(Lcom/rockstargames/gtalcs/MovieActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/rockstargames/gtalcs/G;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/G;-><init>(Lcom/rockstargames/gtalcs/MovieActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :cond_1
    if-ne v0, v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/rockstargames/gtalcs/MovieActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockstargames/gtalcs/MovieActivity;->TAG:Ljava/lang/String;

    const-string v2, "Error Playing Movie : %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MediaVideo"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "MediaVideo"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->length:I

    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "MediaVideo"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/rockstargames/gtalcs/MovieActivity;->length:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/rockstargames/gtalcs/MovieActivity;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->onResume()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/rockstargames/gtalcs/MovieActivity;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged false"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->onPause()V

    goto :goto_0
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

    sget-object v0, Lcom/rockstargames/gtalcs/MovieActivity;->TAG:Ljava/lang/String;

    const-string v1, "Setting orientation to SCREEN_ORIENTATION_USER_LANDSCAPE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/MovieActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/MovieActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
