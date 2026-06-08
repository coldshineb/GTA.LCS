.class public Lcom/rockstargames/hal/andVideo;
.super Landroid/app/Activity;
.source "andVideo.java"

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
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    .line 16
    iput-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    .line 71
    iput-object p1, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    .line 76
    :try_start_0
    new-instance v1, Landroid/widget/VideoView;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    .line 80
    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    const-string v2, "chop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    const-string v2, "customs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 90
    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 91
    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 92
    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 93
    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    const/high16 v4, -0x1000000

    .line 98
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 99
    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0xe

    .line 101
    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xf

    .line 102
    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 103
    iget-object v2, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v2, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get video file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "andVideo"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    iget-object p1, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_1

    .line 114
    iput-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    :cond_1
    return-void
.end method

.method public static IsVideoPlaying()Z
    .locals 1

    .line 31
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->IsPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static PlayVideoFile(Ljava/lang/String;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/rockstargames/hal/andVideo;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andVideo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    .line 25
    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->Play()V

    return-void
.end method

.method public static Resume()V
    .locals 2

    .line 52
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    if-eqz v0, :cond_0

    .line 54
    sget v1, Lcom/rockstargames/hal/andVideo;->m_videoPosition:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andVideo;->SetPosition(I)V

    .line 55
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->Play()V

    :cond_0
    return-void
.end method

.method public static StopVideo()V
    .locals 1

    .line 62
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->Stop()V

    :cond_0
    return-void
.end method

.method public static Suspend()V
    .locals 1

    .line 42
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->Pause()V

    .line 45
    sget-object v0, Lcom/rockstargames/hal/andVideo;->m_video:Lcom/rockstargames/hal/andVideo;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andVideo;->GetPosition()I

    move-result v0

    sput v0, Lcom/rockstargames/hal/andVideo;->m_videoPosition:I

    :cond_0
    return-void
.end method

.method private VideoComplete()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/rockstargames/hal/andVideo;->Stop()V

    .line 214
    invoke-virtual {p0}, Lcom/rockstargames/hal/andVideo;->VideoFinishedCB()V

    :cond_0
    return-void
.end method


# virtual methods
.method public GetPosition()I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsPlaying()Z
    .locals 3

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to query playing state for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "andVideo"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Pause()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method public Play()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method

.method public SetPosition(I)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public Stop()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_videoView:Landroid/widget/VideoView;

    .line 167
    iput-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_relativeLayoutView:Landroid/widget/RelativeLayout;

    :cond_0
    return-void
.end method

.method public native VideoFinishedCB()V
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/rockstargames/hal/andVideo;->VideoComplete()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ERROR: Video \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andVideo;->m_file:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\': "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Server Died, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 229
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Unknown error, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/16 p2, -0x3f2

    if-eq p3, p2, :cond_4

    const/16 p2, -0x3ef

    if-eq p3, p2, :cond_3

    const/16 p2, -0x3ec

    if-eq p3, p2, :cond_2

    const/16 p2, -0x6e

    if-eq p3, p2, :cond_1

    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Unknown error!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 251
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Timed out!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 236
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "IO Error!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 241
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Malformed video!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 246
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Unsupported format!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    :goto_1
    const-string p2, "andVideo"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/rockstargames/hal/andVideo;->VideoComplete()V

    const/4 p1, 0x1

    return p1
.end method
