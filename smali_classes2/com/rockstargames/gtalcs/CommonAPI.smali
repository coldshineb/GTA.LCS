.class public final Lcom/rockstargames/gtalcs/CommonAPI;
.super Ljava/lang/Object;
.source "CommonAPI.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0007\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u0007J\u0008\u0010\u0013\u001a\u00020\u0005H\u0007J\u0008\u0010\u0014\u001a\u00020\u0007H\u0007J\u0012\u0010\u0015\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u0007J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0007H\u0007J\u0008\u0010\u0019\u001a\u00020\u0011H\u0007J\u0008\u0010\u001a\u001a\u00020\u0011H\u0007J\u0008\u0010\u001b\u001a\u00020\u0011H\u0007J\u0008\u0010\u001c\u001a\u00020\u0011H\u0007J\u0008\u0010\u001d\u001a\u00020\u0007H\u0007J\u0008\u0010\u001e\u001a\u00020\u0007H\u0007J\u0008\u0010\u001f\u001a\u00020\u0007H\u0007J\u0012\u0010 \u001a\u00020\u00112\u0008\u0010!\u001a\u0004\u0018\u00010\u0005H\u0007J\u0008\u0010\"\u001a\u00020\u0011H\u0007J\u0008\u0010#\u001a\u00020\u0011H\u0007J\u0010\u0010$\u001a\u00020\u00112\u0006\u0010%\u001a\u00020&H\u0007J\u0008\u0010\'\u001a\u00020\u0011H\u0007J\u0008\u0010(\u001a\u00020\u0011H\u0007J\u0008\u0010)\u001a\u00020\u0011H\u0007J\u0010\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u0007H\u0007J\u0010\u0010,\u001a\u00020\u00112\u0006\u0010-\u001a\u00020\u0007H\u0007J\u0008\u0010.\u001a\u00020\u0005H\u0007J\u0011\u0010/\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0007H\u0083 R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u00060"
    }
    d2 = {
        "Lcom/rockstargames/gtalcs/CommonAPI;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "bHackLoadingBarIsShowing",
        "",
        "playlistPlaying",
        "playlistOnActivityPaused",
        "m_mainActivity",
        "Lcom/rockstargames/gtalcs/GameActivity;",
        "getM_mainActivity",
        "()Lcom/rockstargames/gtalcs/GameActivity;",
        "setM_mainActivity",
        "(Lcom/rockstargames/gtalcs/GameActivity;)V",
        "PlayVideo",
        "",
        "unused",
        "GetDeviceLanguage",
        "isVideoPlaying",
        "PlaylistBeginInit",
        "name",
        "PlaylistFinishInit",
        "allowed",
        "PlaylistPlay",
        "PlaylistPause",
        "PlaylistOnActivityPause",
        "PlaylistOnActivityResume",
        "PlaylistPlaying",
        "GooglePlaylistAvailable",
        "PlaylistHasSongs",
        "GoToUrl",
        "url",
        "ShowLoadingScreen",
        "HideLoadingScreen",
        "ShowLoadingBar",
        "barSize",
        "",
        "ShowLoadingBarProgressHack",
        "QuitApp",
        "RemoveFrameRateLock",
        "setKeepScreenOn",
        "enabled",
        "setInUI",
        "bInUI",
        "GetVersionName",
        "HandlePlaylistFinishInit",
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
.field public static final INSTANCE:Lcom/rockstargames/gtalcs/CommonAPI;

.field public static final TAG:Ljava/lang/String; = "GTA_CommonAPI"

.field private static bHackLoadingBarIsShowing:Z

.field private static m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

.field private static playlistOnActivityPaused:Z

.field private static playlistPlaying:Z


# direct methods
.method public static synthetic $r8$lambda$2OAs3T9qgNWG0kpwAGfGHYg82oM()V
    .locals 0

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->ShowLoadingBarProgressHack$lambda$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$OgSlVbUk3Z3gkVPtyfUW-mFVchM(Z)V
    .locals 0

    invoke-static {p0}, Lcom/rockstargames/gtalcs/CommonAPI;->setKeepScreenOn$lambda$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$QjQsIRiksV1T4RGCHs4yFyDxS4o(Z)V
    .locals 0

    invoke-static {p0}, Lcom/rockstargames/gtalcs/CommonAPI;->setInUI$lambda$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$R-q2XwfJTvGpwaRVFEZ7bcNqTOs(F)V
    .locals 0

    invoke-static {p0}, Lcom/rockstargames/gtalcs/CommonAPI;->ShowLoadingBar$lambda$2(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$ShYR2fNsmKkgNjNfoV7X079SKeA()V
    .locals 0

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->HideLoadingScreen$lambda$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$lMApW-CkKSzTw_S9WMWEvRWVlf8()V
    .locals 0

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->RemoveFrameRateLock$lambda$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$medxjgibwcrL8qYvNeCbPvHLxF0()V
    .locals 0

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->ShowLoadingScreen$lambda$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rockstargames/gtalcs/CommonAPI;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/CommonAPI;-><init>()V

    sput-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->INSTANCE:Lcom/rockstargames/gtalcs/CommonAPI;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final GetDeviceLanguage()Ljava/lang/String;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 44
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "[i18n] GetDeviceLanguage: %s | %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "GTA_CommonAPI"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLanguage(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final GetVersionName()Ljava/lang/String;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 246
    const-string v0, ""

    .line 248
    :try_start_0
    sget-object v1, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/rockstargames/gtalcs/GameActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/rockstargames/gtalcs/GameActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    return-object v0
.end method

.method public static final GoToUrl(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 163
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    sget-object p0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final GooglePlaylistAvailable()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 151
    sget-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_canUse:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bGooglePlaylistAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final native HandlePlaylistFinishInit(Z)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final HideLoadingScreen()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 177
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 178
    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->bHackLoadingBarIsShowing:Z

    return-void
.end method

.method private static final HideLoadingScreen$lambda$1()V
    .locals 1

    .line 177
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GameActivity;->hideLoadingScreen()V

    return-void
.end method

.method public static final PlayVideo(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[!!] PlayVideo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GTA_CommonAPI"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance p0, Landroid/content/Intent;

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/rockstargames/gtalcs/MovieActivity;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GameActivity;->setMoviePlaying(Z)V

    .line 38
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/rockstargames/gtalcs/GameActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final PlaylistBeginInit(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 58
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PlaylistBeginInit"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "GTA_CommonAPI"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->InitPlaylistFromGoogleMusic(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-static {p0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->InitPlaylistFromMusicFolder(Ljava/lang/String;)Z

    :cond_0
    const/4 p0, 0x1

    .line 69
    invoke-static {p0}, Lcom/rockstargames/gtalcs/CommonAPI;->HandlePlaylistFinishInit(Z)V

    .line 70
    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->playlistPlaying:Z

    return-void
.end method

.method public static final PlaylistFinishInit(Z)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 76
    sput-boolean p0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_canUse:Z

    return-void
.end method

.method public static final PlaylistHasSongs()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 157
    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final PlaylistOnActivityPause()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 111
    sget-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_canUse:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->PlaylistPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->PlaylistPause()V

    const/4 v0, 0x1

    .line 121
    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->playlistOnActivityPaused:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static final PlaylistOnActivityResume()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 128
    sget-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_canUse:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    sget-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->playlistOnActivityPaused:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 137
    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->playlistOnActivityPaused:Z

    .line 138
    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->PlaylistPlay()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final PlaylistPause()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 99
    sget-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_canUse:Z

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistPause()V

    const/4 v0, 0x0

    .line 105
    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->playlistPlaying:Z

    return-void
.end method

.method public static final PlaylistPlay()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 82
    sget-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_canUse:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    sget-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->playlistOnActivityPaused:Z

    if-nez v0, :cond_1

    .line 91
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistPlay()V

    const/4 v0, 0x1

    .line 92
    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->playlistPlaying:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static final PlaylistPlaying()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 145
    sget-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->playlistPlaying:Z

    return v0
.end method

.method public static final QuitApp()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 217
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 218
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 219
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GameActivity;->finishAffinity()V

    .line 220
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GameActivity;->finish()V

    const/4 v0, 0x0

    .line 221
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final RemoveFrameRateLock()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 227
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final RemoveFrameRateLock$lambda$4()V
    .locals 2

    .line 227
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GameActivity;->setFrameRateLock(Z)V

    return-void
.end method

.method public static final ShowLoadingBar(F)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 184
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda6;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final ShowLoadingBar$lambda$2(F)V
    .locals 1

    .line 184
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/rockstargames/gtalcs/GameActivity;->showLoadingBar(F)V

    return-void
.end method

.method public static final ShowLoadingBarProgressHack()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 190
    sget-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->bHackLoadingBarIsShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 192
    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->bHackLoadingBarIsShowing:Z

    .line 193
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private static final ShowLoadingBarProgressHack$lambda$3()V
    .locals 3

    const/4 v0, 0x0

    .line 195
    :catch_0
    :goto_0
    sget-boolean v1, Lcom/rockstargames/gtalcs/CommonAPI;->bHackLoadingBarIsShowing:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const v2, 0x3ccccccd    # 0.025f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3f733333    # 0.95f

    .line 197
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 198
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 200
    invoke-static {v0}, Lcom/rockstargames/gtalcs/CommonAPI;->ShowLoadingBar(F)V

    :cond_0
    const-wide/16 v1, 0xfa

    .line 204
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final ShowLoadingScreen()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 171
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final ShowLoadingScreen$lambda$0()V
    .locals 1

    .line 171
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GameActivity;->showLoadingScreen()V

    return-void
.end method

.method public static final isVideoPlaying()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 52
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GameActivity;->isMoviePlaying()Z

    move-result v0

    return v0
.end method

.method public static final setInUI(Z)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 240
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final setInUI$lambda$6(Z)V
    .locals 1

    .line 240
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/rockstargames/gtalcs/GameActivity;->setInUI(Z)V

    return-void
.end method

.method public static final setKeepScreenOn(Z)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 233
    const-string v0, "GTA_CommonAPI"

    const-string v1, "Keep screen on 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/CommonAPI$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final setKeepScreenOn$lambda$5(Z)V
    .locals 1

    .line 234
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/rockstargames/gtalcs/GameActivity;->setKeepScreenOn(Z)V

    return-void
.end method


# virtual methods
.method public final getM_mainActivity()Lcom/rockstargames/gtalcs/GameActivity;
    .locals 1

    .line 28
    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    return-object v0
.end method

.method public final setM_mainActivity(Lcom/rockstargames/gtalcs/GameActivity;)V
    .locals 0

    .line 28
    sput-object p1, Lcom/rockstargames/gtalcs/CommonAPI;->m_mainActivity:Lcom/rockstargames/gtalcs/GameActivity;

    return-void
.end method
