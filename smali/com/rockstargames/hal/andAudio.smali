.class public Lcom/rockstargames/hal/andAudio;
.super Ljava/lang/Object;


# static fields
.field public static m_audioMuted:Z

.field private static samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rockstargames/hal/andAudioSample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/hal/andAudio;->m_audioMuted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsPlaying(I)Z
    .locals 2

    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andAudioSample;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->IsPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static MuteAllAudio(Z)V
    .locals 2

    sput-boolean p0, Lcom/rockstargames/hal/andAudio;->m_audioMuted:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andAudioSample;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/rockstargames/hal/andAudioSample;->Mute(Z)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static PlayAudioFile(Ljava/lang/String;FLjava/lang/String;ZIZ)I
    .locals 7

    new-instance v0, Lcom/rockstargames/hal/andAudioSample;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/rockstargames/hal/andAudioSample;-><init>(Ljava/lang/String;FLjava/lang/String;ZIZ)V

    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->GetMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->getId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "andAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newSample GetMediaPlayer failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static ReleaseHandle(I)V
    .locals 2

    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andAudioSample;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->Stop()V

    :cond_0
    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static Stop(I)V
    .locals 2

    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andAudioSample;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->Stop()V

    :cond_0
    return-void
.end method

.method public static StopCategory(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andAudioSample;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->GetCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->Stop()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static UpdateSamples()V
    .locals 3

    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andAudioSample;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->GetMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->AutoRemove()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static getSample(I)I
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andAudioSample;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->getId()I

    move-result v0

    if-ne v0, p0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method
