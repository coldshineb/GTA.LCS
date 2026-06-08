.class public Lcom/rockstargames/hal/andAudio;
.super Ljava/lang/Object;
.source "andAudio.java"


# static fields
.field public static m_audioMuted:Z

.field private static samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rockstargames/hal/andAudioSample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcom/rockstargames/hal/andAudio;->m_audioMuted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsPlaying(I)Z
    .locals 2

    .line 113
    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 115
    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rockstargames/hal/andAudioSample;

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/rockstargames/hal/andAudioSample;->IsPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static MuteAllAudio(Z)V
    .locals 2

    .line 16
    sput-boolean p0, Lcom/rockstargames/hal/andAudio;->m_audioMuted:Z

    const/4 v0, 0x0

    .line 18
    :goto_0
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 20
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andAudioSample;

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1, p0}, Lcom/rockstargames/hal/andAudioSample;->Mute(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static PlayAudioFile(Ljava/lang/String;FLjava/lang/String;ZIZ)I
    .locals 7

    .line 33
    new-instance v0, Lcom/rockstargames/hal/andAudioSample;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/rockstargames/hal/andAudioSample;-><init>(Ljava/lang/String;FLjava/lang/String;ZIZ)V

    .line 35
    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->GetMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 38
    sget-object p0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->getId()I

    move-result p0

    return p0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "newSample GetMediaPlayer failed : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "andAudio"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static ReleaseHandle(I)V
    .locals 1

    .line 129
    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 132
    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andAudioSample;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/rockstargames/hal/andAudioSample;->Stop()V

    .line 139
    :cond_0
    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static Stop(I)V
    .locals 2

    .line 146
    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 148
    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-static {p0}, Lcom/rockstargames/hal/andAudio;->getSample(I)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rockstargames/hal/andAudioSample;

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/rockstargames/hal/andAudioSample;->Stop()V

    :cond_0
    return-void
.end method

.method public static StopCategory(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 55
    :goto_0
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 57
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andAudioSample;

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Lcom/rockstargames/hal/andAudioSample;->GetCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v1}, Lcom/rockstargames/hal/andAudioSample;->Stop()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static UpdateSamples()V
    .locals 3

    .line 72
    sget-object v0, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 76
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andAudioSample;

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v1}, Lcom/rockstargames/hal/andAudioSample;->GetMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/rockstargames/hal/andAudioSample;->AutoRemove()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 91
    :cond_0
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getSample(I)I
    .locals 2

    const/4 v0, 0x0

    .line 100
    :goto_0
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 102
    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rockstargames/hal/andAudio;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andAudioSample;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andAudioSample;->getId()I

    move-result v1

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
