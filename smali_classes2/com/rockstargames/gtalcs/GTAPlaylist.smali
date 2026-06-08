.class public final Lcom/rockstargames/gtalcs/GTAPlaylist;
.super Ljava/lang/Object;
.source "GTAPlaylist.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001:B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u00102\u001a\u000203H\u0007J\u0008\u00104\u001a\u000203H\u0007J\u0008\u00105\u001a\u000203H\u0007J\u0010\u00106\u001a\u00020%2\u0006\u00107\u001a\u00020\u0005H\u0007J\u0012\u00108\u001a\u00020%2\u0008\u00109\u001a\u0004\u0018\u00010\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R.\u0010\u0006\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0008`\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017\"\u0004\u0008\u001c\u0010\u0019R\u001a\u0010\u001d\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017\"\u0004\u0008\u001f\u0010\u0019R\u001a\u0010 \u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0017\"\u0004\u0008\"\u0010\u0019R\u0012\u0010#\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0012\u0010*\u001a\u00020%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u00020%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010,\u001a\u00020-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101\u00a8\u0006;"
    }
    d2 = {
        "Lcom/rockstargames/gtalcs/GTAPlaylist;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "playlistUriArray",
        "Ljava/util/ArrayList;",
        "Landroid/net/Uri;",
        "Lkotlin/collections/ArrayList;",
        "getPlaylistUriArray",
        "()Ljava/util/ArrayList;",
        "setPlaylistUriArray",
        "(Ljava/util/ArrayList;)V",
        "mediaPlayer",
        "Landroid/media/MediaPlayer;",
        "getMediaPlayer",
        "()Landroid/media/MediaPlayer;",
        "setMediaPlayer",
        "(Landroid/media/MediaPlayer;)V",
        "playlistID",
        "",
        "getPlaylistID",
        "()I",
        "setPlaylistID",
        "(I)V",
        "CurrentPlaylistPos",
        "getCurrentPlaylistPos",
        "setCurrentPlaylistPos",
        "SongCurrentPos",
        "getSongCurrentPos",
        "setSongCurrentPos",
        "SongDuration",
        "getSongDuration",
        "setSongDuration",
        "numSongs",
        "m_bIsPaused",
        "",
        "getM_bIsPaused",
        "()Z",
        "setM_bIsPaused",
        "(Z)V",
        "m_bGooglePlaylistAvailable",
        "m_canUse",
        "playerListener",
        "Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;",
        "getPlayerListener",
        "()Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;",
        "setPlayerListener",
        "(Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;)V",
        "restartPlaylist",
        "",
        "playlistPlay",
        "playlistPause",
        "InitPlaylistFromGoogleMusic",
        "playlist",
        "InitPlaylistFromMusicFolder",
        "folder",
        "SoundtrackPlayerListener",
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


# static fields
.field private static CurrentPlaylistPos:I = 0x0

.field public static final INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

.field private static SongCurrentPos:I = 0x0

.field private static SongDuration:I = 0x0

.field public static final TAG:Ljava/lang/String; = "GTA_MusicPlaylist"

.field public static m_bGooglePlaylistAvailable:Z

.field private static m_bIsPaused:Z

.field public static m_canUse:Z

.field private static mediaPlayer:Landroid/media/MediaPlayer;

.field public static numSongs:I

.field private static playerListener:Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;

.field private static playlistID:I

.field private static playlistUriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rockstargames/gtalcs/GTAPlaylist;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/GTAPlaylist;-><init>()V

    sput-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->INSTANCE:Lcom/rockstargames/gtalcs/GTAPlaylist;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 22
    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistID:I

    .line 24
    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongCurrentPos:I

    .line 25
    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongDuration:I

    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bIsPaused:Z

    .line 33
    new-instance v0, Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;-><init>()V

    sput-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playerListener:Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final InitPlaylistFromGoogleMusic(Ljava/lang/String;)Z
    .locals 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "SourceId"

    const-string v1, "playlist_name"

    const-string v2, "_id"

    const-string v3, "GTA_MusicPlaylist"

    const-string v4, "pl Count "

    const-string v5, "InitPlaylistFromGoogleMusic : "

    const-string v6, "playlist"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 125
    :try_start_0
    new-array v10, v6, [Ljava/lang/String;

    aput-object v2, v10, v7

    const/4 v14, 0x1

    aput-object v1, v10, v14

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v5, "content://com.google.android.music.MusicContent/playlists"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 129
    sget-object v5, Lcom/rockstargames/gtalcs/CommonAPI;->INSTANCE:Lcom/rockstargames/gtalcs/CommonAPI;

    invoke-virtual {v5}, Lcom/rockstargames/gtalcs/CommonAPI;->getM_mainActivity()Lcom/rockstargames/gtalcs/GameActivity;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/rockstargames/gtalcs/GameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_0

    .line 132
    sput v7, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    .line 133
    sput-boolean v7, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bGooglePlaylistAvailable:Z

    return v7

    .line 136
    :cond_0
    sput-boolean v14, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bGooglePlaylistAvailable:Z

    .line 137
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 140
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 142
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 145
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 151
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    sput p0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistID:I

    .line 152
    const-string p0, "Playlist Found "

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 159
    :cond_2
    :goto_1
    sget p0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistID:I

    const/4 v1, -0x1

    if-ne p0, v1, :cond_3

    .line 161
    sput v7, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    return v7

    .line 164
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.google.android.music.MusicContent/playlists/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistID:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/members"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 165
    sget-object p0, Lcom/rockstargames/gtalcs/CommonAPI;->INSTANCE:Lcom/rockstargames/gtalcs/CommonAPI;

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/CommonAPI;->getM_mainActivity()Lcom/rockstargames/gtalcs/GameActivity;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-array v10, v6, [Ljava/lang/String;

    aput-object v0, v10, v7

    const-string p0, "hasLocal"

    aput-object p0, v10, v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_4

    .line 168
    sput v7, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    return v7

    .line 171
    :cond_4
    sget-object v1, Lcom/rockstargames/gtalcs/CommonAPI;->INSTANCE:Lcom/rockstargames/gtalcs/CommonAPI;

    invoke-virtual {v1}, Lcom/rockstargames/gtalcs/CommonAPI;->getM_mainActivity()Lcom/rockstargames/gtalcs/GameActivity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/rockstargames/gtalcs/GameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 172
    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v10, v14, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v10, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Num songs : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 178
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sput v2, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    move v3, v7

    :goto_2
    if-ge v3, v2, :cond_6

    .line 181
    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 182
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_5

    .line 185
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 186
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "withAppendedId(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget-object v5, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 191
    :cond_6
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 192
    sput v7, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    .line 193
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 194
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v14

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    sput v7, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    return v7
.end method

.method public static final InitPlaylistFromMusicFolder(Ljava/lang/String;)Z
    .locals 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 209
    const-string v0, "toLowerCase(...)"

    const-string v1, "getDefault(...)"

    const-string v2, "GTA_MusicPlaylist"

    .line 0
    const-string v3, "All Media Count "

    const-string v4, "pl gMusicUri "

    const-string v5, "InitPlaylistFromMusicFolder : "

    const/4 v6, 0x0

    .line 211
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v4, Lcom/rockstargames/gtalcs/CommonAPI;->INSTANCE:Lcom/rockstargames/gtalcs/CommonAPI;

    invoke-virtual {v4}, Lcom/rockstargames/gtalcs/CommonAPI;->getM_mainActivity()Lcom/rockstargames/gtalcs/GameActivity;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/rockstargames/gtalcs/GameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 221
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sput v6, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    .line 225
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 226
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 228
    const-string v3, "_data"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 231
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 234
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/storage/emulated/0/music/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v3, v7, v6, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    const-string v3, "_id"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 239
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 240
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "withAppendedId(...)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    sget-object v7, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget v3, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    add-int/2addr v3, v5

    sput v3, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    .line 246
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 249
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pl numSongs "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object p0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 251
    sput v6, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    return v5

    .line 218
    :cond_3
    :goto_1
    sput v6, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 257
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    sput v6, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    return v6
.end method

.method public static final playlistPause()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 110
    :try_start_0
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x1

    .line 111
    sput-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bIsPaused:Z

    .line 112
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongCurrentPos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static final playlistPlay()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 46
    const-string v0, "contentUri : "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playlistPlay numSongs = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GTA_MusicPlaylist"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    if-gtz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 51
    sput-boolean v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bIsPaused:Z

    .line 55
    :try_start_0
    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 57
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 58
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 62
    :cond_1
    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/rockstargames/gtalcs/GTAPlaylist;->playerListener:Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;

    check-cast v3, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 63
    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/rockstargames/gtalcs/GTAPlaylist;->playerListener:Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;

    check-cast v3, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 64
    sget-object v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    sget v3, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 68
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 69
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/rockstargames/gtalcs/CommonAPI;->INSTANCE:Lcom/rockstargames/gtalcs/CommonAPI;

    invoke-virtual {v3}, Lcom/rockstargames/gtalcs/CommonAPI;->getM_mainActivity()Lcom/rockstargames/gtalcs/GameActivity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 70
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "playlistPlay Exception songs "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "playlistPlay IOException songs "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    if-le v0, v1, :cond_3

    .line 86
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    .line 95
    :cond_2
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 96
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistPlay()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "playlistPlay IllegalStateException songs "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final restartPlaylist()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, -0x1

    .line 39
    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongDuration:I

    const/4 v0, 0x0

    .line 40
    sput v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    return-void
.end method


# virtual methods
.method public final getCurrentPlaylistPos()I
    .locals 1

    .line 23
    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    return v0
.end method

.method public final getM_bIsPaused()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bIsPaused:Z

    return v0
.end method

.method public final getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 21
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public final getPlayerListener()Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;
    .locals 1

    .line 33
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playerListener:Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;

    return-object v0
.end method

.method public final getPlaylistID()I
    .locals 1

    .line 22
    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistID:I

    return v0
.end method

.method public final getPlaylistUriArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSongCurrentPos()I
    .locals 1

    .line 24
    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongCurrentPos:I

    return v0
.end method

.method public final getSongDuration()I
    .locals 1

    .line 25
    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongDuration:I

    return v0
.end method

.method public final setCurrentPlaylistPos(I)V
    .locals 0

    .line 23
    sput p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->CurrentPlaylistPos:I

    return-void
.end method

.method public final setM_bIsPaused(Z)V
    .locals 0

    .line 28
    sput-boolean p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bIsPaused:Z

    return-void
.end method

.method public final setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 21
    sput-object p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public final setPlayerListener(Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sput-object p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->playerListener:Lcom/rockstargames/gtalcs/GTAPlaylist$SoundtrackPlayerListener;

    return-void
.end method

.method public final setPlaylistID(I)V
    .locals 0

    .line 22
    sput p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistID:I

    return-void
.end method

.method public final setPlaylistUriArray(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sput-object p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistUriArray:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSongCurrentPos(I)V
    .locals 0

    .line 24
    sput p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongCurrentPos:I

    return-void
.end method

.method public final setSongDuration(I)V
    .locals 0

    .line 25
    sput p1, Lcom/rockstargames/gtalcs/GTAPlaylist;->SongDuration:I

    return-void
.end method
