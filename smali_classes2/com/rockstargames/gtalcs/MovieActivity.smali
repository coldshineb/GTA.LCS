.class public final Lcom/rockstargames/gtalcs/MovieActivity;
.super Landroid/app/Activity;
.source "MovieActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/gtalcs/MovieActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0017J\u0008\u0010\u0010\u001a\u00020\rH\u0003J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\rH\u0014J\u0008\u0010\u0015\u001a\u00020\rH\u0014J\u0008\u0010\u0016\u001a\u00020\rH\u0014J\u0008\u0010\u0017\u001a\u00020\rH\u0002R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/rockstargames/gtalcs/MovieActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "mVideoView",
        "Landroid/widget/VideoView;",
        "getMVideoView",
        "()Landroid/widget/VideoView;",
        "setMVideoView",
        "(Landroid/widget/VideoView;)V",
        "length",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setDeviceOrientation",
        "onWindowFocusChanged",
        "hasFocus",
        "",
        "onPause",
        "onDestroy",
        "onResume",
        "hideSystemUI",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/rockstargames/gtalcs/MovieActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "MovieActivity"


# instance fields
.field private length:I

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public static synthetic $r8$lambda$QoN68eKpmrI7oZysE2mNFDFpJU4(Lcom/rockstargames/gtalcs/MovieActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/MovieActivity;->onCreate$lambda$2(Lcom/rockstargames/gtalcs/MovieActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YILEuz6y4Ts7StCjFqSe_51f7W8(Lcom/rockstargames/gtalcs/MovieActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/rockstargames/gtalcs/MovieActivity;->onCreate$lambda$3(Lcom/rockstargames/gtalcs/MovieActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZTWTVRcC1-vcQKGEYuEIfYrjiUA(Lcom/rockstargames/gtalcs/MovieActivity;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rockstargames/gtalcs/MovieActivity;->onCreate$lambda$1(Lcom/rockstargames/gtalcs/MovieActivity;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xNhnKzp27EIe1QD71NQ0kIXPfEo(Lcom/rockstargames/gtalcs/MovieActivity;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/rockstargames/gtalcs/MovieActivity;->onCreate$lambda$0(Lcom/rockstargames/gtalcs/MovieActivity;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rockstargames/gtalcs/MovieActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rockstargames/gtalcs/MovieActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rockstargames/gtalcs/MovieActivity;->Companion:Lcom/rockstargames/gtalcs/MovieActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final hideSystemUI()V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/rockstargames/gtalcs/MovieActivity;Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/16 p1, -0x3f2

    if-eq p2, p1, :cond_6

    const/16 p1, -0x3ef

    if-eq p2, p1, :cond_5

    const/16 p1, -0x3ec

    if-eq p2, p1, :cond_4

    const/16 p1, -0x6e

    if-eq p2, p1, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/16 p1, 0x64

    if-eq p2, p1, :cond_1

    const/16 p1, 0xc8

    if-eq p2, p1, :cond_0

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "<unknown ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 70
    :cond_0
    const-string p1, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    goto :goto_0

    .line 69
    :cond_1
    const-string p1, "MEDIA_ERROR_SERVER_DIED"

    goto :goto_0

    .line 75
    :cond_2
    const-string p1, "MEDIA_ERROR_UNKNOWN"

    goto :goto_0

    .line 74
    :cond_3
    const-string p1, "MEDIA_ERROR_TIMED_OUT"

    goto :goto_0

    .line 71
    :cond_4
    const-string p1, "MEDIA_ERROR_IO"

    goto :goto_0

    .line 72
    :cond_5
    const-string p1, "MEDIA_ERROR_MALFORMED"

    goto :goto_0

    .line 73
    :cond_6
    const-string p1, "MEDIA_ERROR_UNSUPPORTED"

    .line 79
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[!!] Error Playing Movie: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MovieActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->finish()V

    const/4 p0, 0x0

    return p0
.end method

.method private static final onCreate$lambda$1(Lcom/rockstargames/gtalcs/MovieActivity;Landroid/media/MediaPlayer;)V
    .locals 1

    .line 85
    const-string p1, "MovieActivity"

    const-string v0, "[!!] Movie finished succesfully "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->finish()V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/rockstargames/gtalcs/MovieActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 90
    const-string p1, "MovieActivity"

    const-string p2, "[!!] Movie touched "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 92
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method private static final onCreate$lambda$3(Lcom/rockstargames/gtalcs/MovieActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x19

    if-eq p1, p2, :cond_1

    const/16 p1, 0x18

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 99
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->hideSystemUI()V

    const/4 p0, 0x0

    return p0
.end method

.method private final setDeviceOrientation()V
    .locals 2

    .line 110
    const-string v0, "MovieActivity"

    const-string v1, "Setting orientation to SCREEN_ORIENTATION_USER_LANDSCAPE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    .line 111
    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/MovieActivity;->setRequestedOrientation(I)V

    return-void
.end method


# virtual methods
.method public final getMVideoView()Landroid/widget/VideoView;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "MovieActivity"

    const-string v1, "[!!] Playing: "

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->setDeviceOrientation()V

    .line 36
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->hideSystemUI()V

    .line 39
    new-instance p1, Landroid/widget/VideoView;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "android.resource://"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v3, Lcom/rockstargames/gtalcs/R$raw;->intro:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 43
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 45
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 46
    iget-object v4, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v2, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 48
    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/rockstargames/gtalcs/MovieActivity;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 57
    iget-object p1, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[!!] Error Playing Movie : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->finish()V

    .line 66
    :goto_0
    iget-object p1, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/rockstargames/gtalcs/MovieActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/rockstargames/gtalcs/MovieActivity$$ExternalSyntheticLambda0;-><init>(Lcom/rockstargames/gtalcs/MovieActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 84
    iget-object p1, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/rockstargames/gtalcs/MovieActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/rockstargames/gtalcs/MovieActivity$$ExternalSyntheticLambda1;-><init>(Lcom/rockstargames/gtalcs/MovieActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 89
    iget-object p1, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/rockstargames/gtalcs/MovieActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/rockstargames/gtalcs/MovieActivity$$ExternalSyntheticLambda2;-><init>(Lcom/rockstargames/gtalcs/MovieActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    iget-object p1, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/rockstargames/gtalcs/MovieActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/rockstargames/gtalcs/MovieActivity$$ExternalSyntheticLambda3;-><init>(Lcom/rockstargames/gtalcs/MovieActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 139
    const-string v0, "MovieActivity"

    const-string v1, "[!!] onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 131
    const-string v0, "MovieActivity"

    const-string v1, "[!!] onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->length:I

    .line 134
    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 145
    const-string v0, "MovieActivity"

    const-string v1, "[!!] onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/rockstargames/gtalcs/MovieActivity;->length:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 148
    iget-object v0, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 117
    const-string v0, "MovieActivity"

    if-eqz p1, :cond_0

    .line 119
    const-string p1, "onWindowFocusChanged true"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->onResume()V

    return-void

    .line 124
    :cond_0
    const-string p1, "onWindowFocusChanged false"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/MovieActivity;->onPause()V

    return-void
.end method

.method public final setMVideoView(Landroid/widget/VideoView;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/rockstargames/gtalcs/MovieActivity;->mVideoView:Landroid/widget/VideoView;

    return-void
.end method
