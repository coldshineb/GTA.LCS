.class public Lcom/rockstargames/hal/andVideo;
.super Lcom/fastman92/main_activity_launcher/AlteredType/android/app/Activity;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static m_video:Lcom/rockstargames/hal/andVideo;

.field private static m_videoPosition:I


# instance fields
.field private m_file:Ljava/lang/String;

.field private m_relativeLayoutView:Landroid/widget/RelativeLayout;

.field private m_videoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andVideo;->m_videoPosition:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v4, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    iput-object v4, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    :try_start_0
    new-instance v0, Landroid/widget/VideoView;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    const-string v1, "chop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    const-string v1, "customs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xe

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "andVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get video file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iput-object v4, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    goto :goto_0
.end method

.method public static IsVideoPlaying()Z
    .locals 1

    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->IsPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static PlayVideoFile(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/andVideo;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andVideo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->Play()V

    return-void
.end method

.method public static Resume()V
    .locals 2

    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    sget v1, Lcom/rockstargames/hal/andVideo;->m_videoPosition:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andVideo;->SetPosition(I)V

    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->Play()V

    :cond_0
    return-void
.end method

.method public static StopVideo()V
    .locals 1

    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->Stop()V

    :cond_0
    return-void
.end method

.method public static Suspend()V
    .locals 1

    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->Pause()V

    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->GetPosition()I

    move-result v0

    sput v0, Lcom/rockstargames/hal/andVideo;->m_videoPosition:I

    :cond_0
    return-void
.end method

.method private VideoComplete()V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andVideo;->Stop()V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andVideo;->VideoFinishedCB()V

    :cond_0
    return-void
.end method


# virtual methods
.method public GetPosition()I
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsPlaying()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "andVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to query playing state for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Pause()V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method public Play()V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method

.method public SetPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public Stop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iput-object v2, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    :cond_0
    return-void
.end method

.method public native VideoFinishedCB()V
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockstargames/hal/andVideo;->VideoComplete()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR: Video \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Server Died, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sparse-switch p3, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Unknown error!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "andVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Unknown error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IO Error!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Malformed video!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Unsupported format!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Timed out!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_2
        -0x3ef -> :sswitch_1
        -0x3ec -> :sswitch_0
        -0x6e -> :sswitch_3
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/rockstargames/hal/andVideo;->VideoComplete()V

    const/4 v0, 0x1

    return v0
.end method
