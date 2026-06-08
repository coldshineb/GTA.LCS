.class public Lcom/rockstargames/hal/andAudioSample;
.super Landroid/app/Activity;
.source "andAudioSample.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field private static idGen:I


# instance fields
.field private id:I

.field private m_autoRemove:Z

.field private m_category:Ljava/lang/String;

.field private m_file:Ljava/lang/String;

.field private m_loopCount:I

.field private m_mediaPlayer:Landroid/media/MediaPlayer;

.field private m_volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;ZIZ)V
    .locals 7

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 50
    iput-object p3, p0, Lcom/rockstargames/hal/andAudioSample;->m_category:Ljava/lang/String;

    .line 51
    iput-boolean p4, p0, Lcom/rockstargames/hal/andAudioSample;->m_autoRemove:Z

    .line 52
    iput-object p1, p0, Lcom/rockstargames/hal/andAudioSample;->m_file:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    .line 54
    iput p5, p0, Lcom/rockstargames/hal/andAudioSample;->m_loopCount:I

    .line 55
    sget p2, Lcom/rockstargames/hal/andAudioSample;->idGen:I

    iput p2, p0, Lcom/rockstargames/hal/andAudioSample;->id:I

    add-int/lit8 p2, p2, 0x1

    .line 56
    sput p2, Lcom/rockstargames/hal/andAudioSample;->idGen:I

    .line 61
    :try_start_0
    invoke-direct {p0, p1, p6}, Lcom/rockstargames/hal/andAudioSample;->getAssetFileDescriptorForFile(Ljava/lang/String;Z)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 66
    :try_start_1
    new-instance p2, Landroid/media/MediaPlayer;

    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p2, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    const/4 p3, 0x3

    .line 67
    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 68
    iget-object p2, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 69
    iget-object p2, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 70
    iget-object p2, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 72
    iget-object v1, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 73
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 72
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 76
    iget-object p2, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object p1, v0

    .line 82
    :catch_1
    iget-object p2, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->release()V

    .line 86
    iput-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 95
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    return-void
.end method

.method private getAssetFileDescriptorForFile(Ljava/lang/String;Z)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    const-string p2, ".wav"

    .line 0
    const-string v0, "audio/"

    const/4 v1, 0x0

    .line 30
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/rockstargames/hal/andFile;->getAssetFileDescriptor(Ljava/lang/String;Z)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/rockstargames/hal/andFile;->getAssetFileDescriptor(Ljava/lang/String;Z)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/rockstargames/hal/andFile;->getAssetFileDescriptor(Ljava/lang/String;Z)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    :cond_0
    return-object v2
.end method


# virtual methods
.method public AutoRemove()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_autoRemove:Z

    return v0
.end method

.method public GetCategory()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_category:Ljava/lang/String;

    return-object v0
.end method

.method public GetMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public IsPlaying()Z
    .locals 1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Mute(Z)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andAudioSample;->IsPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    return-void
.end method

.method public Play()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 144
    iget v1, p0, Lcom/rockstargames/hal/andAudioSample;->m_loopCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 146
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 149
    :cond_0
    sget-boolean v0, Lcom/rockstargames/hal/andAudio;->m_audioMuted:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    return-void
.end method

.method public Stop()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/rockstargames/hal/andAudioSample;->IsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public getId()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/rockstargames/hal/andAudioSample;->id:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ERROR: Sample \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_file:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\': "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 234
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

    .line 238
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

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Unknown error!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 260
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Timed out!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 245
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "IO Error!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 250
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Malformed sample!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 255
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Unsupported format!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/rockstargames/hal/andAudioSample;->Play()V

    :cond_0
    return-void
.end method
