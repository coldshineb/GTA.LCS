.class public Lcom/rockstargames/hal/andAudioSample;
.super Lcom/fastman92/main_activity_launcher/AlteredType/android/app/Activity;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andAudioSample;->idGen:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;ZIZ)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v7, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    iput-object v7, p0, Lcom/rockstargames/hal/andAudioSample;->m_category:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_autoRemove:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_loopCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/rockstargames/hal/andAudioSample;->id:I

    iput-object p3, p0, Lcom/rockstargames/hal/andAudioSample;->m_category:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/rockstargames/hal/andAudioSample;->m_autoRemove:Z

    iput-object p1, p0, Lcom/rockstargames/hal/andAudioSample;->m_file:Ljava/lang/String;

    iput p2, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    iput p5, p0, Lcom/rockstargames/hal/andAudioSample;->m_loopCount:I

    sget v0, Lcom/rockstargames/hal/andAudioSample;->idGen:I

    iput v0, p0, Lcom/rockstargames/hal/andAudioSample;->id:I

    sget v0, Lcom/rockstargames/hal/andAudioSample;->idGen:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andAudioSample;->idGen:I

    :try_start_0
    invoke-direct {p0, p1, p6}, Lcom/rockstargames/hal/andAudioSample;->getAssetFileDescriptorForFile(Ljava/lang/String;Z)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    move-object v0, v6

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v7

    :goto_2
    iget-object v1, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v7, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v6

    goto :goto_2
.end method

.method private getAssetFileDescriptorForFile(Ljava/lang/String;Z)Landroid/content/res/AssetFileDescriptor;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audio/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rockstargames/hal/andFile;->getAssetFileDescriptor(Ljava/lang/String;Z)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audio/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/rockstargames/hal/andFile;->getAssetFileDescriptor(Ljava/lang/String;Z)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audio/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/rockstargames/hal/andFile;->getAssetFileDescriptor(Ljava/lang/String;Z)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public AutoRemove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_autoRemove:Z

    return v0
.end method

.method public GetCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_category:Ljava/lang/String;

    return-object v0
.end method

.method public GetMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public IsPlaying()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Mute(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andAudioSample;->IsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    iget v2, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public Play()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_loopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_0
    sget-boolean v0, Lcom/rockstargames/hal/andAudio;->m_audioMuted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    iget v2, p0, Lcom/rockstargames/hal/andAudioSample;->m_volume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public Stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andAudioSample;->IsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/andAudioSample;->m_mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/rockstargames/hal/andAudioSample;->id:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR: Sample \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rockstargames/hal/andAudioSample;->m_file:Ljava/lang/String;

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

    :goto_1
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

    goto :goto_1

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Malformed sample!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Unsupported format!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Timed out!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andAudioSample;->Play()V

    :cond_0
    return-void
.end method
