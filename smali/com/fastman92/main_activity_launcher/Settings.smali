.class public Lcom/fastman92/main_activity_launcher/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static ANDROID_PATH_PREFIX_NO_SLASH:Ljava/lang/String;

.field public static AndroidDATAdirectory:Ljava/lang/String;

.field public static AndroidDirectory:Ljava/lang/String;

.field public static AndroidOBBdirectory:Ljava/lang/String;

.field public static DATA_PATH_PREFIX:Ljava/lang/String;

.field public static ExternalStorageDirectory:Ljava/lang/String;

.field public static OBB_PATH_PREFIX:Ljava/lang/String;

.field public static final apkModifierCompileDateTime:Ljava/lang/String;

.field public static bSettingsLoaded:Z

.field public static originalPackageName:Ljava/lang/String;

.field public static showMessageBoxBeforeStartingApplication:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fastman92/main_activity_launcher/Settings;->bSettingsLoaded:Z

    .line 12
    sget-object v0, Lcom/fastman92/main_activity_launcher/SettingsGenerated;->apkModifierCompileDateTime:Ljava/lang/String;

    sput-object v0, Lcom/fastman92/main_activity_launcher/Settings;->apkModifierCompileDateTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssetPacksDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/fastman92/main_activity_launcher/Functions;->AndroidAssetPacksDirToUnprotected(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getObbDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
