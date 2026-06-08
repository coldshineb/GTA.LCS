.class final Lcom/rockstargames/gtalcs/B;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/rockstargames/gtalcs/B;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    const/4 v3, -0x1

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    const-string v1, "Song Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playlist paused "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bIsPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongCurrentPos:I

    sget v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongDuration:I

    if-ge v0, v1, :cond_0

    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongCurrentPos:I

    if-eq v0, v3, :cond_0

    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongDuration:I

    if-ne v0, v3, :cond_1

    :cond_0
    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    :cond_1
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    sget-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bIsPaused:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistPlay()V

    :cond_2
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    const-string v1, "Song Prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongCurrentPos:I

    if-ltz v0, :cond_0

    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongCurrentPos:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, -0x1

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongCurrentPos:I

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongDuration:I

    return-void
.end method
