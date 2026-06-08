.class public Lrockstarmobile/GCAudioLogic;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# static fields
.field public static otherAudioPlayingAtLaunch:Z


# instance fields
.field private audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioManager:Landroid/media/AudioManager;

.field private gameMusicVolume:F

.field private gameSoundFxVolume:F

.field private isDeactivated:Z

.field private isGameClubUIVisible:Z

.field private isOtherAudioPlaying:Z

.field private log:Lrockstarmobile/utilities/Log;

.field private stateCallback:Lrockstarmobile/Rockstar$StateCallback;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "GCAudioLogic"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    iput-object v0, p0, Lrockstarmobile/GCAudioLogic;->log:Lrockstarmobile/utilities/Log;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lrockstarmobile/GCAudioLogic;->gameMusicVolume:F

    .line 5
    iput v0, p0, Lrockstarmobile/GCAudioLogic;->gameSoundFxVolume:F

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lrockstarmobile/GCAudioLogic;->stateCallback:Lrockstarmobile/Rockstar$StateCallback;

    .line 7
    iput-boolean v2, p0, Lrockstarmobile/GCAudioLogic;->isGameClubUIVisible:Z

    .line 8
    iput-boolean v3, p0, Lrockstarmobile/GCAudioLogic;->isDeactivated:Z

    .line 9
    iput-boolean v2, p0, Lrockstarmobile/GCAudioLogic;->isOtherAudioPlaying:Z

    .line 101
    new-instance v0, Lrockstarmobile/GCAudioLogic$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lrockstarmobile/GCAudioLogic$$ExternalSyntheticLambda0;-><init>(Lrockstarmobile/GCAudioLogic;)V

    iput-object v0, p0, Lrockstarmobile/GCAudioLogic;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 102
    sget-boolean v0, Lrockstarmobile/GCAudioLogic;->otherAudioPlayingAtLaunch:Z

    iput-boolean v0, p0, Lrockstarmobile/GCAudioLogic;->isOtherAudioPlaying:Z

    .line 103
    invoke-static {}, Lrockstarmobile/GCState;->getGameMusicVolume()F

    move-result v0

    iput v0, p0, Lrockstarmobile/GCAudioLogic;->gameMusicVolume:F

    .line 104
    invoke-static {}, Lrockstarmobile/GCState;->getGameSoundFxVolume()F

    move-result v0

    iput v0, p0, Lrockstarmobile/GCAudioLogic;->gameSoundFxVolume:F

    .line 105
    iput-object p1, p0, Lrockstarmobile/GCAudioLogic;->audioManager:Landroid/media/AudioManager;

    .line 106
    iget p1, p0, Lrockstarmobile/GCAudioLogic;->gameMusicVolume:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lrockstarmobile/GCAudioLogic;->isOtherAudioPlaying:Z

    if-nez p1, :cond_0

    .line 107
    invoke-direct {p0}, Lrockstarmobile/GCAudioLogic;->requestAudioFocus()Z

    :cond_0
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .line 2
    iget-object v0, p0, Lrockstarmobile/GCAudioLogic;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lrockstarmobile/GCAudioLogic;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lrockstarmobile/GCAudioLogic;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    :cond_0
    return-void
.end method

.method private refreshVolume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCAudioLogic;->stateCallback:Lrockstarmobile/Rockstar$StateCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lrockstarmobile/Rockstar$StateCallback;->onStateChanged()V

    :cond_0
    return-void
.end method

.method private requestAudioFocus()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lrockstarmobile/GCAudioLogic;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v2, p0, Lrockstarmobile/GCAudioLogic;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCAudioLogic;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 5
    :cond_0
    iget-object v0, p0, Lrockstarmobile/GCAudioLogic;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lrockstarmobile/GCAudioLogic;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public beginGameClubUI()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lrockstarmobile/GCAudioLogic;->isGameClubUIVisible:Z

    .line 2
    invoke-direct {p0}, Lrockstarmobile/GCAudioLogic;->refreshVolume()V

    return-void
.end method

.method public deactivateAudio()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrockstarmobile/GCAudioLogic;->isDeactivated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrockstarmobile/GCAudioLogic;->isDeactivated:Z

    .line 3
    invoke-direct {p0}, Lrockstarmobile/GCAudioLogic;->abandonAudioFocus()V

    .line 4
    invoke-direct {p0}, Lrockstarmobile/GCAudioLogic;->refreshVolume()V

    :cond_0
    return-void
.end method

.method public endGameClubUI()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lrockstarmobile/GCAudioLogic;->isGameClubUIVisible:Z

    .line 2
    invoke-direct {p0}, Lrockstarmobile/GCAudioLogic;->refreshVolume()V

    return-void
.end method

.method public getMusicVolume()F
    .locals 4

    .line 1
    iget v0, p0, Lrockstarmobile/GCAudioLogic;->gameMusicVolume:F

    iget-boolean v1, p0, Lrockstarmobile/GCAudioLogic;->isGameClubUIVisible:Z

    xor-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-boolean v1, p0, Lrockstarmobile/GCAudioLogic;->isOtherAudioPlaying:Z

    xor-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-boolean v1, p0, Lrockstarmobile/GCAudioLogic;->isDeactivated:Z

    xor-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lrockstarmobile/GCAudioLogic;->log:Lrockstarmobile/utilities/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gameMusicVolume is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", music="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lrockstarmobile/GCAudioLogic;->gameMusicVolume:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isGameClubUIVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lrockstarmobile/GCAudioLogic;->isGameClubUIVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isOtherAudioPlaying:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lrockstarmobile/GCAudioLogic;->isOtherAudioPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " decativated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lrockstarmobile/GCAudioLogic;->isDeactivated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public getSoundFxVolume()F
    .locals 2

    .line 1
    iget v0, p0, Lrockstarmobile/GCAudioLogic;->gameSoundFxVolume:F

    iget-boolean v1, p0, Lrockstarmobile/GCAudioLogic;->isGameClubUIVisible:Z

    xor-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-boolean v1, p0, Lrockstarmobile/GCAudioLogic;->isDeactivated:Z

    xor-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method synthetic lambda$new$0$rockstarmobile-GCAudioLogic(I)V
    .locals 3

    .line 0
    const/4 v0, -0x3

    const-string v1, "Changing isOtherAudioPlaying from "

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCAudioLogic;->log:Lrockstarmobile/utilities/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lrockstarmobile/GCAudioLogic;->isOtherAudioPlaying:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> false due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lrockstarmobile/GCAudioLogic;->isOtherAudioPlaying:Z

    .line 3
    invoke-direct {p0}, Lrockstarmobile/GCAudioLogic;->refreshVolume()V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lrockstarmobile/GCAudioLogic;->log:Lrockstarmobile/utilities/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lrockstarmobile/GCAudioLogic;->isOtherAudioPlaying:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> true due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lrockstarmobile/GCAudioLogic;->isOtherAudioPlaying:Z

    .line 10
    invoke-direct {p0}, Lrockstarmobile/GCAudioLogic;->refreshVolume()V

    return-void
.end method

.method public reactivateAudio()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCAudioLogic;->log:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reactivating audio (isDeactivated="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lrockstarmobile/GCAudioLogic;->isDeactivated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isOtherAudioPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lrockstarmobile/GCAudioLogic;->isOtherAudioPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isMusicActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrockstarmobile/GCAudioLogic;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lrockstarmobile/GCAudioLogic;->isDeactivated:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lrockstarmobile/GCAudioLogic;->isDeactivated:Z

    .line 4
    iget v0, p0, Lrockstarmobile/GCAudioLogic;->gameMusicVolume:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lrockstarmobile/GCAudioLogic;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lrockstarmobile/GCAudioLogic;->log:Lrockstarmobile/utilities/Log;

    const-string v1, "Requesting audio focus"

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lrockstarmobile/GCAudioLogic;->requestAudioFocus()Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lrockstarmobile/GCAudioLogic;->log:Lrockstarmobile/utilities/Log;

    const-string v1, "Volume is zero, Not requesting audio focus"

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-direct {p0}, Lrockstarmobile/GCAudioLogic;->refreshVolume()V

    :cond_1
    return-void
.end method

.method public setMusicVolume(F)V
    .locals 3

    .line 1
    iput p1, p0, Lrockstarmobile/GCAudioLogic;->gameMusicVolume:F

    .line 2
    invoke-static {p1}, Lrockstarmobile/GCState;->setGameMusicVolume(F)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lrockstarmobile/GCAudioLogic;->requestAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lrockstarmobile/GCAudioLogic;->log:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Changing isOtherAudioPlaying from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lrockstarmobile/GCAudioLogic;->isOtherAudioPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> false due to user input ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lrockstarmobile/GCAudioLogic;->isOtherAudioPlaying:Z

    .line 9
    :cond_0
    invoke-direct {p0}, Lrockstarmobile/GCAudioLogic;->refreshVolume()V

    return-void
.end method

.method public setSoundFxVolume(F)V
    .locals 0

    .line 1
    iput p1, p0, Lrockstarmobile/GCAudioLogic;->gameSoundFxVolume:F

    .line 2
    invoke-static {p1}, Lrockstarmobile/GCState;->setGameSoundFxVolume(F)V

    .line 3
    invoke-direct {p0}, Lrockstarmobile/GCAudioLogic;->refreshVolume()V

    return-void
.end method

.method public setStateCallback(Lrockstarmobile/Rockstar$StateCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/GCAudioLogic;->stateCallback:Lrockstarmobile/Rockstar$StateCallback;

    return-void
.end method
