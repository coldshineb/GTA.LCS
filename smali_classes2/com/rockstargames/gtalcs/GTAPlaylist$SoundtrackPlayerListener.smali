.class public final Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;
.super Ljava/lang/Object;
.source "GTAPlaylist.kt"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/gtalcs/GTAPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoundtrackPlayerListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;",
        "Landroid/media/MediaPlayer$OnCompletionListener;",
        "Landroid/media/MediaPlayer$OnPreparedListener;",
        "<init>",
        "()V",
        "onCompletion",
        "",
        "mp",
        "Landroid/media/MediaPlayer;",
        "onPrepared",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    const-string p1, "Song Completed"

    const-string v0, "GTA_MusicPlaylist"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "playlist paused "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {v1}, Lcom/rockstargames/gtalcs/GTAPlaylist;->getM_bIsPaused()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {p1}, Lcom/rockstargames/gtalcs/GTAPlaylist;->getSongCurrentPos()I

    move-result p1

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->getSongDuration()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {p1}, Lcom/rockstargames/gtalcs/GTAPlaylist;->getSongCurrentPos()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {p1}, Lcom/rockstargames/gtalcs/GTAPlaylist;->getSongDuration()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 271
    :cond_0
    sget-object p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->getCurrentPlaylistPos()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->setCurrentPlaylistPos(I)V

    .line 272
    sget-object p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {p1}, Lcom/rockstargames/gtalcs/GTAPlaylist;->getCurrentPlaylistPos()I

    move-result p1

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->getPlaylistUriArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 274
    sget-object p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->setCurrentPlaylistPos(I)V

    .line 277
    :cond_1
    sget-object p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {p1}, Lcom/rockstargames/gtalcs/GTAPlaylist;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 281
    sget-object p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {p1}, Lcom/rockstargames/gtalcs/GTAPlaylist;->getM_bIsPaused()Z

    move-result p1

    if-nez p1, :cond_2

    .line 283
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistPlay()V

    :cond_2
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    const-string v0, "GTA_MusicPlaylist"

    const-string v1, "Song Prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->getSongCurrentPos()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 292
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->getSongCurrentPos()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 293
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAPlaylist;->setSongCurrentPos(I)V

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 296
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/GTAPlaylist;->setSongDuration(I)V

    return-void
.end method
