.class public Lcom/rockstargames/gtalcs/CommonAPI;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/rockstargames/gtalcs/GTAActivityBase;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    sput-boolean v1, Lcom/rockstargames/gtalcs/CommonAPI;->b:Z

    const-string v0, "GTA_CommonAPI"

    sput-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->c:Ljava/lang/String;

    sput-boolean v1, Lcom/rockstargames/gtalcs/CommonAPI;->d:Z

    sput-boolean v1, Lcom/rockstargames/gtalcs/CommonAPI;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CallSocialClubSignOut()V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    new-instance v1, Lcom/rockstargames/gtalcs/j;

    invoke-direct {v1}, Lcom/rockstargames/gtalcs/j;-><init>()V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static CallSocialClubUpdate()V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    new-instance v1, Lcom/rockstargames/gtalcs/i;

    invoke-direct {v1}, Lcom/rockstargames/gtalcs/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static GetDeviceLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetNumberSongs()I
    .locals 1

    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    return v0
.end method

.method public static GetVersionName()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v2}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static GoToUrl(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static GooglePlaylistAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->m_bGooglePlaylistAvailable:Z

    return v0
.end method

.method public static HideDownloadBar()V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    new-instance v1, Lcom/rockstargames/gtalcs/g;

    invoke-direct {v1}, Lcom/rockstargames/gtalcs/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static HideLoadingScreen()V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    new-instance v1, Lcom/rockstargames/gtalcs/d;

    invoke-direct {v1}, Lcom/rockstargames/gtalcs/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->b:Z

    return-void
.end method

.method public static PlayVideo(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    const-class v2, Lcom/rockstargames/gtalcs/MovieActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getIsAmazonDevice()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getRequestedOrientation()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/rockstargames/gtalcs/CommonAPI;->c:Ljava/lang/String;

    const-string v2, "ori is user landscape"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const-string v2, "ORI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/rockstargames/gtalcs/CommonAPI;->c:Ljava/lang/String;

    const-string v3, "ori is "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object v1, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v1, v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    iput-boolean v6, v0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mMoviePlaying:Z

    return-void

    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/rockstargames/gtalcs/CommonAPI;->c:Ljava/lang/String;

    const-string v2, "Ori  sensorlandscape"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/rockstargames/gtalcs/CommonAPI;->c:Ljava/lang/String;

    const-string v2, "Ori  other"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static PlaylistHasSongs()Z
    .locals 1

    sget v0, Lcom/rockstargames/gtalcs/GTAPlaylist;->numSongs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static PlaylistInit(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->c:Ljava/lang/String;

    const-string v1, "PlaylistInit"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-static {v0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->SetMainActivity(Lcom/rockstargames/gtalcs/GTAActivityBase;)V

    invoke-static {p0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->InitPlaylistFromGoogleMusic(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->InitPlaylistFromMusicFolder(Ljava/lang/String;)Z

    :cond_0
    sput-boolean v3, Lcom/rockstargames/gtalcs/CommonAPI;->d:Z

    return-void
.end method

.method public static PlaylistOnActivityPause()V
    .locals 1

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->PlaylistPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->PlaylistPause()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->e:Z

    :cond_0
    return-void
.end method

.method public static PlaylistOnActivityResume()V
    .locals 1

    sget-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->e:Z

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->PlaylistPlay()V

    :cond_0
    return-void
.end method

.method public static PlaylistPause()V
    .locals 1

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-static {v0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->SetMainActivity(Lcom/rockstargames/gtalcs/GTAActivityBase;)V

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistPause()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->d:Z

    return-void
.end method

.method public static PlaylistPlay()V
    .locals 1

    sget-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->e:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-static {v0}, Lcom/rockstargames/gtalcs/GTAPlaylist;->SetMainActivity(Lcom/rockstargames/gtalcs/GTAActivityBase;)V

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAPlaylist;->playlistPlay()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->d:Z

    :cond_0
    return-void
.end method

.method public static PlaylistPlaying()Z
    .locals 1

    sget-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->d:Z

    return v0
.end method

.method public static QuitApp()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->finishAffinity()V

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static RemoveFrameRateLock()V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    new-instance v1, Lcom/rockstargames/gtalcs/k;

    invoke-direct {v1}, Lcom/rockstargames/gtalcs/k;-><init>()V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static SetMainActivity(Lcom/rockstargames/gtalcs/GTAActivityBase;)V
    .locals 0

    sput-object p0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    return-void
.end method

.method public static ShowDownloadBar(FII)V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    new-instance v1, Lcom/rockstargames/gtalcs/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/rockstargames/gtalcs/f;-><init>(FII)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ShowLoadingBar(F)V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    new-instance v1, Lcom/rockstargames/gtalcs/e;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/e;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ShowLoadingBarProgressHack()V
    .locals 2

    sget-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->b:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockstargames/gtalcs/h;

    invoke-direct {v1}, Lcom/rockstargames/gtalcs/h;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static ShowLoadingScreen()V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    new-instance v1, Lcom/rockstargames/gtalcs/a;

    invoke-direct {v1}, Lcom/rockstargames/gtalcs/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static StartSocialClub()V
    .locals 3

    :try_start_0
    const-string v0, "com.rockstargames.socialclub.SocialClubActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a()Lcom/rockstargames/gtalcs/GTAActivityBase;
    .locals 1

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/rockstargames/gtalcs/CommonAPI;->b:Z

    return v0
.end method

.method public static isVideoPlaying()Z
    .locals 1

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->isMoviePlaying()Z

    move-result v0

    return v0
.end method

.method public static setInUI(Z)V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    new-instance v1, Lcom/rockstargames/gtalcs/c;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/c;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setKeepScreenOn(Z)V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->c:Ljava/lang/String;

    const-string v1, "Keep screen on 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/rockstargames/gtalcs/CommonAPI;->a:Lcom/rockstargames/gtalcs/GTAActivityBase;

    new-instance v1, Lcom/rockstargames/gtalcs/b;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/b;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
