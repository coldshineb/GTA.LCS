.class public Lcom/rockstargames/gtalcs/GTAPlaylist;
.super Ljava/lang/Object;


# static fields
.field static CurrentPlaylistPos:I

.field static SongCurrentPos:I

.field static SongDuration:I

.field static TAG:Ljava/lang/String;

.field static m_bGooglePlaylistAvailable:Z

.field static m_bIsPaused:Z

.field private static m_mainActivity:Lcom/rockstargames/gtalcs/GTAActivityBase;

.field static mediaPlayer:Landroid/media/MediaPlayer;

.field static numSongs:I

.field static playerListener:Lcom/rockstargames/gtalcs/B;

.field static playlistID:I

.field static playlistUriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_mainActivity:Lcom/rockstargames/gtalcs/GTAActivityBase;

    const-string v0, "GTA_MusicPlaylist"

    sput-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    sput v2, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistID:I

    sput v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    sput v2, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongCurrentPos:I

    sput v2, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongDuration:I

    sput v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bIsPaused:Z

    sput-boolean v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bGooglePlaylistAvailable:Z

    new-instance v0, Lcom/rockstargames/gtalcs/B;

    invoke-direct {v0, v1}, Lcom/rockstargames/gtalcs/B;-><init>(B)V

    sput-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playerListener:Lcom/rockstargames/gtalcs/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitPlaylistFromGoogleMusic(Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "playlist_name"

    aput-object v1, v2, v0

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "InitPlaylistFromGoogleMusic : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "content://com.google.android.music.MusicContent/playlists"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_mainActivity:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bGooglePlaylistAvailable:Z

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bGooglePlaylistAvailable:Z

    invoke-static {}, Ljava/lang/System;->gc()V

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pl Count "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "playlist_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistID:I

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    const-string v1, "Playlist Found "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    move v0, v6

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sput v6, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    move v0, v6

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.google.android.music.MusicContent/playlists/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/members"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_mainActivity:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SourceId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "hasLocal"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    move v0, v6

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_mainActivity:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Num songs : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    move v0, v6

    :goto_2
    sget v2, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    if-ge v0, v2, :cond_6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v2, "SourceId"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v7

    goto/16 :goto_0
.end method

.method public static InitPlaylistFromMusicFolder(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InitPlaylistFromMusicFolder : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pl gMusicUri "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_mainActivity:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    move v0, v6

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "All Media Count "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/storage/emulated/0/music/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sput v6, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    move v0, v6

    goto/16 :goto_0

    :cond_3
    :try_start_1
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pl numSongs "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static SetMainActivity(Lcom/rockstargames/gtalcs/GTAActivityBase;)V
    .locals 0

    sput-object p0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_mainActivity:Lcom/rockstargames/gtalcs/GTAActivityBase;

    return-void
.end method

.method public static playlistPause()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bIsPaused:Z

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongCurrentPos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static playlistPlay()V
    .locals 4

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playlistPlay numSongs = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bIsPaused:Z

    :try_start_0
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :cond_2
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->playerListener:Lcom/rockstargames/gtalcs/B;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->playerListener:Lcom/rockstargames/gtalcs/B;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    sget v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contentUri : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_mainActivity:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playlistPlay IllegalStateException songs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playlistPlay IOException songs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    sget v2, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    :cond_3
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistPlay()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playlistPlay Exception songs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static restartPlaylist()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongDuration:I

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    return-void
.end method
