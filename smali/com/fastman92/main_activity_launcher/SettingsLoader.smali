.class public Lcom/fastman92/main_activity_launcher/SettingsLoader;
.super Lcom/fastman92/main_activity_launcher/AlteredType/android/app/Activity;
.source "SettingsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;
    }
.end annotation


# static fields
.field public static AMAZON:Ljava/lang/String; = null

.field private static final ANDROID_UNPROTECTED:Ljava/lang/String; = "AndUnpr"

.field private static AssetPacksUsed:Z = false

.field public static GOOGLE_PLAY:Ljava/lang/String; = null

.field private static IsInstalledViaGooglePlay:Z = false

.field private static ObbUsed:Z = false

.field public static ProjectFullName:Ljava/lang/String; = null

.field private static final REQUEST_MANAGE_EXTERNAL_STORAGE_PERMISSION:I = 0x65

.field private static final REQUEST_MULTIPLE_PERMISSIONS:I = 0x64

.field public static XMLsettingsFilePath:Ljava/lang/String; = null

.field private static bCheckForMultipleDirs:Z = false

.field static bContainsSignatures:Z = false

.field public static bDifferentFirstExternalDirectory:Z = false

.field static bSignatureSpoof:Z = false

.field static context:Landroid/content/Context; = null

.field public static errorMessage:Ljava/lang/String; = null

.field private static final launcherPropertyPrefix:Ljava/lang/String; = "LAUNCHER_"

.field private static final settingsAll:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static settingsInitializationAttemptedInActivity:Z

.field private static final settingsStoredInFile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static useLauncherSettingsXml:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsInitializationAttemptedInActivity:Z

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsStoredInFile:Ljava/util/HashMap;

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsAll:Ljava/util/HashMap;

    .line 58
    sput-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bCheckForMultipleDirs:Z

    .line 66
    const/4 v1, 0x0

    sput-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->errorMessage:Ljava/lang/String;

    .line 76
    sput-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bContainsSignatures:Z

    .line 77
    sput-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bSignatureSpoof:Z

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fastman92 APK modifier "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fastman92/main_activity_launcher/SettingsGenerated;->apkModifierCompileDateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->ProjectFullName:Ljava/lang/String;

    .line 289
    const-string v0, "com.android.vending"

    sput-object v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GOOGLE_PLAY:Ljava/lang/String;

    .line 290
    const-string v0, "com.amazon.venezia"

    sput-object v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->AMAZON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/AlteredType/android/app/Activity;-><init>()V

    return-void
.end method

.method private static CheckIfDirectoriesExist([Ljava/io/File;ZZ)V
    .locals 3
    .param p0, "dirs"    # [Ljava/io/File;
    .param p1, "bCreateNoMedia"    # Z
    .param p2, "bCreateReadmeInAndroidUnprotected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 732
    array-length v0, p0

    if-lez v0, :cond_2

    .line 734
    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 735
    aget-object v1, p0, v0

    const/4 v2, 0x1

    invoke-static {v2, v1, p1, p2}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->CheckIfDirectoryExists(ZLjava/io/File;ZZ)V

    .line 737
    :cond_0
    sget-boolean v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bCheckForMultipleDirs:Z

    if-eqz v1, :cond_2

    .line 738
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 739
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 740
    aget-object v2, p0, v1

    invoke-static {v0, v2, p1, p2}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->CheckIfDirectoryExists(ZLjava/io/File;ZZ)V

    .line 738
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static CheckIfDirectoryExists(ZLjava/io/File;ZZ)V
    .locals 9
    .param p0, "bIsFirst"    # Z
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "bCreateNoMedia"    # Z
    .param p3, "bCreateReadmeInAndroidUnprotected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 747
    invoke-static {p1}, Lcom/fastman92/main_activity_launcher/Functions;->MkDirIfDoesNotExist(Ljava/io/File;)V

    .line 749
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    if-eqz p2, :cond_0

    .line 751
    sget-object v0, Lcom/fastman92/main_activity_launcher/Functions;->getPathToDirectoryInsideAndroidFromAndroidDir_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 753
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 758
    .local v2, "noMediaPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 760
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 762
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    .line 769
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v2    # "noMediaPath":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    if-nez p3, :cond_1

    .line 770
    return-void

    .line 773
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fastman92/main_activity_launcher/Functions;->getPathToAndroidUnprotectedDir(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, "AndroidDir":Ljava/io/File;
    invoke-static {v0}, Lcom/fastman92/main_activity_launcher/Functions;->MkDirIfDoesNotExist(Ljava/io/File;)V

    .line 777
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 778
    if-nez p0, :cond_2

    .line 779
    return-void

    .line 781
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please create the following directory:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\nYou can do it using your file manager. It can\'t be done by this application and you need to do it manually."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 787
    :cond_3
    if-eqz p3, :cond_6

    sget-object v1, Lcom/fastman92/main_activity_launcher/Settings;->AndroidDirectory:Ljava/lang/String;

    const-string v2, "AndUnpr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "About.txt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, "promoPath":Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 793
    .local v3, "timestampInAboutFile":J
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 794
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 796
    .local v5, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 798
    .local v6, "Int_line":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 800
    :try_start_1
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v3, v7

    .line 805
    goto :goto_2

    .line 802
    :catch_1
    move-exception v7

    .line 804
    .local v7, "exc":Ljava/lang/NumberFormatException;
    const-wide/16 v3, 0x0

    .line 808
    .end local v7    # "exc":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 811
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "Int_line":Ljava/lang/String;
    :cond_5
    sget-wide v5, Lcom/fastman92/main_activity_launcher/SettingsGenerated;->apkModifierCompileTimestamp:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_6

    .line 813
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v6, Lcom/fastman92/main_activity_launcher/SettingsGenerated;->apkModifierCompileTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\nfastman92 APK modifier\n\nProject that allows for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " directory, which provides an easy access to files that will be used by an application. Solves the problem of restricted access to Android directory.\nHas got many other features as well.\n\nAvailable for many different applications.\n\nLink: https://gtaforums.com/topic/979211-fastman92-apk-modifier/\n\nImplemented by: fastman92\nWebsite: fastman92.com"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, "strToWrite":Ljava/lang/String;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 827
    .local v5, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v5, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 831
    .end local v1    # "promoPath":Ljava/lang/String;
    .end local v2    # "strToWrite":Ljava/lang/String;
    .end local v3    # "timestampInAboutFile":J
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_6
    return-void
.end method

.method private static CheckValueDependingOnAndroidUnprotected(Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LAUNCHER_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 893
    sget-object v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsAll:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 895
    .local v0, "value":Ljava/lang/String;
    sget-object v2, Lcom/fastman92/main_activity_launcher/SettingsLoader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    return-void

    .line 896
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/fastman92/main_activity_launcher/SettingsLoader;->context:Landroid/content/Context;

    .line 897
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " when not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "USE_ANDROID_UNPROTECTED_DIRECTORY.\nCurrent value: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fastman92/main_activity_launcher/Settings;->AndroidDATAdirectory:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private FinishThisActivity()V
    .locals 5

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 256
    const-string v2, "errorMessage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    :cond_0
    sget-boolean v1, Lcom/fastman92/main_activity_launcher/Settings;->bSettingsLoaded:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->errorMessage:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 259
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsAll:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 260
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 263
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/fastman92/main_activity_launcher/Settings;->getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "ExternalFilesDir"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 264
    invoke-static {p0}, Lcom/fastman92/main_activity_launcher/Settings;->getObbDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "ExternalOBBfilesDir"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 265
    invoke-static {p0}, Lcom/fastman92/main_activity_launcher/Settings;->getAssetPacksDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "ExternalAssetPacksDir"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 268
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 271
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->setResult(ILandroid/content/Intent;)V

    .line 273
    :goto_1
    invoke-virtual {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->finish()V

    .line 274
    return-void
.end method

.method private static GetPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 675
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static GetPropertyString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "lookIntoSettingsFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LAUNCHER_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 689
    sget-object v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 690
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 692
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 698
    if-eqz p1, :cond_1

    .line 699
    sget-object v3, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsStoredInFile:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 701
    .local v4, "customValue":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 702
    move-object v2, v4

    goto :goto_0

    .line 704
    :cond_0
    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .end local v4    # "customValue":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v3, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsAll:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    return-object v2

    .line 695
    :cond_2
    new-instance v3, Ljava/util/NoSuchElementException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from APK manifest file, unable to retrieve"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static GetPropertyYesOrNo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 715
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyYesOrNo(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static GetPropertyYesOrNo(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "lookIntoSettingsFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 721
    invoke-static {p0, p1}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    const/4 v1, 0x1

    return v1

    .line 725
    :cond_0
    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    const/4 v1, 0x0

    return v1

    .line 728
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", wrong value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static InitializeSettings(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inActivity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 441
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fastman92/main_activity_launcher/Settings;->bSettingsLoaded:Z

    .line 443
    sput-object p0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->context:Landroid/content/Context;

    .line 445
    sget-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsAll:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 446
    sget-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsStoredInFile:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 450
    sput-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bDifferentFirstExternalDirectory:Z

    .line 451
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 453
    .local v1, "extDir":Ljava/io/File;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 455
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/fastman92/main_activity_launcher/Functions;->oldExternalStorageDirectory:Ljava/lang/String;

    .line 457
    sget-object v4, Lcom/fastman92/main_activity_launcher/Functions;->oldExternalStorageDirectory:Ljava/lang/String;

    sput-object v4, Lcom/fastman92/main_activity_launcher/Settings;->ExternalStorageDirectory:Ljava/lang/String;

    .line 461
    const-string v4, "/mnt/windows/BstSharedFolder"

    .line 463
    .local v4, "pathToBstSharedMedia":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/use_as_sdcard.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 464
    sput-object v4, Lcom/fastman92/main_activity_launcher/Settings;->ExternalStorageDirectory:Ljava/lang/String;

    .line 465
    sput-boolean v3, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bDifferentFirstExternalDirectory:Z

    .line 467
    .end local v4    # "pathToBstSharedMedia":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 471
    :cond_1
    sput-object v2, Lcom/fastman92/main_activity_launcher/Functions;->oldExternalStorageDirectory:Ljava/lang/String;

    .line 472
    sput-object v2, Lcom/fastman92/main_activity_launcher/Settings;->ExternalStorageDirectory:Ljava/lang/String;

    .line 478
    .end local v1    # "extDir":Ljava/io/File;
    :goto_0
    invoke-static {}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->SetBasicDirectorySettings()V

    .line 480
    const-string v1, "launcher_settings.xml"

    if-eqz p1, :cond_2

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->XMLsettingsFilePath:Ljava/lang/String;

    goto :goto_1

    .line 483
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->XMLsettingsFilePath:Ljava/lang/String;

    .line 485
    :goto_1
    sput-object v2, Lcom/fastman92/main_activity_launcher/SettingsLoader;->errorMessage:Ljava/lang/String;

    .line 487
    sget-boolean v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsInitializationAttemptedInActivity:Z

    if-eqz v1, :cond_3

    .line 489
    return-void

    .line 492
    :cond_3
    if-eqz p1, :cond_4

    .line 493
    sput-boolean v3, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsInitializationAttemptedInActivity:Z

    .line 495
    :cond_4
    const-string v1, "USE_LAUNCHER_SETTINGS_XML"

    invoke-static {v1, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyYesOrNo(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->useLauncherSettingsXml:Z

    .line 497
    const-string v4, "Configuration file \""

    const-string v5, "fastman92 app launcher"

    if-eqz v1, :cond_7

    .line 498
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/fastman92/main_activity_launcher/SettingsLoader;->XMLsettingsFilePath:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 500
    if-eqz p1, :cond_5

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/fastman92/main_activity_launcher/SettingsLoader;->XMLsettingsFilePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" exists. Reading it."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_5
    invoke-static {}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->ReadSettingsFile()V

    goto :goto_2

    .line 504
    :cond_6
    if-eqz p1, :cond_8

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/fastman92/main_activity_launcher/SettingsLoader;->XMLsettingsFilePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" does not exist. Skipping it."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 507
    :cond_7
    if-eqz p1, :cond_8

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/fastman92/main_activity_launcher/SettingsLoader;->XMLsettingsFilePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" will not be used. Skipping it."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_8
    :goto_2
    const-string v1, "ORIGINAL_PACKAGE_NAME"

    invoke-static {v1, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fastman92/main_activity_launcher/Settings;->originalPackageName:Ljava/lang/String;

    .line 513
    invoke-static {}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->SetBasicDirectorySettings()V

    .line 515
    sget-object v1, Lcom/fastman92/main_activity_launcher/Settings;->AndroidDirectory:Ljava/lang/String;

    const-string v4, "AndUnpr"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 517
    const-string v1, "ANDROID_DATA_DIRECTORY"

    invoke-static {v1}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->CheckValueDependingOnAndroidUnprotected(Ljava/lang/String;)V

    .line 518
    const-string v1, "ANDROID_OBB_DIRECTORY"

    invoke-static {v1}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->CheckValueDependingOnAndroidUnprotected(Ljava/lang/String;)V

    .line 527
    :cond_9
    const-string v1, "ASSETPACKS_USED"

    invoke-static {v1, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyYesOrNo(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->AssetPacksUsed:Z

    .line 528
    const-string v1, "OBB_USED"

    invoke-static {v1, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyYesOrNo(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->ObbUsed:Z

    .line 531
    const-string v1, "CHECK_FOR_MULTIPLE_DIRS"

    invoke-static {v1, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyYesOrNo(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bCheckForMultipleDirs:Z

    .line 533
    if-eqz p1, :cond_b

    .line 534
    sput-boolean v0, Lcom/fastman92/main_activity_launcher/AlteredContext;->bEnsureExternalDirsExist:Z

    .line 536
    nop

    .line 537
    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 536
    invoke-static {v1, v3, v3}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->CheckIfDirectoriesExist([Ljava/io/File;ZZ)V

    .line 542
    nop

    .line 543
    invoke-virtual {p0}, Landroid/content/Context;->getObbDirs()[Ljava/io/File;

    move-result-object v1

    .line 542
    invoke-static {v1, v3, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->CheckIfDirectoriesExist([Ljava/io/File;ZZ)V

    .line 548
    sget-boolean v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->AssetPacksUsed:Z

    if-eqz v1, :cond_a

    .line 549
    nop

    .line 551
    invoke-static {p0}, Lcom/fastman92/main_activity_launcher/Settings;->getAssetPacksDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 549
    invoke-static {v0, v1, v0, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->CheckIfDirectoryExists(ZLjava/io/File;ZZ)V

    .line 557
    :cond_a
    sput-boolean v3, Lcom/fastman92/main_activity_launcher/AlteredContext;->bEnsureExternalDirsExist:Z

    .line 561
    :cond_b
    const-string v1, "SHOW_MESSAGE_BOX_ON_APPLICATION_STARTUP"

    invoke-static {v1}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyYesOrNo(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/fastman92/main_activity_launcher/Settings;->showMessageBoxBeforeStartingApplication:Z

    .line 564
    if-nez p1, :cond_d

    .line 566
    const-string v1, "LOAD_APK_MODIFIER_NATIVE_LIBRARY"

    invoke-static {v1, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyYesOrNo(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 567
    const-string v1, "Fastman92apkModifier"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 570
    :cond_c
    :try_start_0
    sput-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bContainsSignatures:Z

    .line 571
    const-string v1, "CONTAINS_SIGNATURES"

    invoke-static {v1}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyYesOrNo(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bContainsSignatures:Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 573
    :catch_0
    move-exception v1

    :goto_3
    nop

    .line 576
    :try_start_1
    sput-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bSignatureSpoof:Z

    .line 577
    const-string v0, "SIGNATURE_SPOOF"

    invoke-static {v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyYesOrNo(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bSignatureSpoof:Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 579
    :catch_1
    move-exception v0

    .line 584
    :cond_d
    :goto_4
    if-eqz p1, :cond_10

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .local v0, "settingsStr":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 590
    .local v1, "ID":I
    new-instance v2, Ljava/util/TreeMap;

    sget-object v4, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsAll:Ljava/util/HashMap;

    invoke-direct {v2, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 592
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_e

    .line 593
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_e
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v6, " = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    .line 600
    goto :goto_5

    .line 602
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v0    # "settingsStr":Ljava/lang/StringBuilder;
    .end local v1    # "ID":I
    :cond_10
    sput-boolean v3, Lcom/fastman92/main_activity_launcher/Settings;->bSettingsLoaded:Z

    .line 621
    return-void
.end method

.method private static InitializeSettingsInActivity(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 625
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->InitializeSettings(Landroid/content/Context;Z)V

    .line 627
    sget-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->useLauncherSettingsXml:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->XMLsettingsFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Configuration file \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->XMLsettingsFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" does not exist. Writing it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fastman92 app launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->WriteSettingsFile()V

    .line 633
    :cond_0
    sget-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->useLauncherSettingsXml:Z

    if-eqz v0, :cond_1

    .line 637
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->XMLsettingsFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 641
    .local v0, "src":Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "launcher_settings.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 651
    .local v1, "dest":Ljava/nio/channels/FileChannel;
    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, v1

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 667
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 668
    goto :goto_0

    .line 664
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 667
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 668
    throw v2

    .line 670
    .end local v0    # "src":Ljava/nio/channels/FileChannel;
    .end local v1    # "dest":Ljava/nio/channels/FileChannel;
    :cond_1
    :goto_0
    return-void
.end method

.method private OnSettingsLoaded()V
    .locals 2

    .line 277
    sget-boolean v0, Lcom/fastman92/main_activity_launcher/Settings;->showMessageBoxBeforeStartingApplication:Z

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda1;-><init>(Lcom/fastman92/main_activity_launcher/SettingsLoader;)V

    const-string v1, "Message before an application gets started."

    invoke-static {p0, v1, v0}, Lcom/fastman92/main_activity_launcher/Functions;->ShowMessageBox(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->OnSettingsLoaded2()V

    .line 287
    :goto_0
    return-void
.end method

.method private OnSettingsLoaded2()V
    .locals 5

    .line 330
    invoke-static {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->isInstalledViaGooglePlay(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->IsInstalledViaGooglePlay:Z

    .line 332
    sget-boolean v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->AssetPacksUsed:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 336
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "AssetPackDirChecked"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 338
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 341
    invoke-static {p0}, Lcom/fastman92/main_activity_launcher/Settings;->getAssetPacksDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 343
    .local v2, "assetPackDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_0

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An application that has been installed outside of Play Store might not be able to download files.\n\nAsset pack directory is empty:\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nYou might want to put asset packs in this directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda2;-><init>(Lcom/fastman92/main_activity_launcher/SettingsLoader;)V

    .line 344
    invoke-static {p0, v3, v4}, Lcom/fastman92/main_activity_launcher/Functions;->ShowMessageBox(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 352
    return-void

    .line 357
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v2    # "assetPackDir":Ljava/io/File;
    :cond_0
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->OnSettingsLoaded3()V

    .line 358
    return-void
.end method

.method private OnSettingsLoaded3()V
    .locals 5

    .line 362
    sget-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->ObbUsed:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->IsInstalledViaGooglePlay:Z

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 365
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "ObbDirChecked"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 367
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    invoke-virtual {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->getObbDir()Ljava/io/File;

    move-result-object v2

    .line 372
    .local v2, "obbDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_0

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An application that has been installed outside of Play Store might not be able to download files.\n\nOBB directory is empty:\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nYou might want to put obb files in this directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda3;-><init>(Lcom/fastman92/main_activity_launcher/SettingsLoader;)V

    .line 373
    invoke-static {p0, v3, v4}, Lcom/fastman92/main_activity_launcher/Functions;->ShowMessageBox(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 381
    return-void

    .line 386
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v2    # "obbDir":Ljava/io/File;
    :cond_0
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->FinishThisActivity()V

    .line 387
    return-void
.end method

.method private static ReadSettingsFile()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 835
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 840
    .local v0, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 841
    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/fastman92/main_activity_launcher/SettingsLoader;->XMLsettingsFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 845
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->normalize()V

    .line 847
    const-string v3, "CONFIGURATION"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 848
    .local v3, "CONFIGURATION":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 850
    .local v4, "list":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "temp":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 851
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 853
    .local v6, "node":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 855
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 856
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 858
    .local v8, "value":Ljava/lang/String;
    sget-object v9, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsStoredInFile:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v6    # "node":Lorg/w3c/dom/Node;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 864
    .end local v1    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "CONFIGURATION":Lorg/w3c/dom/Node;
    .end local v4    # "list":Lorg/w3c/dom/NodeList;
    .end local v5    # "temp":I
    :cond_1
    nop

    .line 865
    return-void

    .line 862
    :catch_0
    move-exception v1

    .line 863
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/fastman92/main_activity_launcher/SettingsLoader;->XMLsettingsFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static SetBasicDirectorySettings()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 426
    const-string v0, "USE_ANDROID_UNPROTECTED_DIRECTORY"

    invoke-static {v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyYesOrNo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "AndUnpr"

    sput-object v0, Lcom/fastman92/main_activity_launcher/Settings;->AndroidDirectory:Ljava/lang/String;

    goto :goto_0

    .line 429
    :cond_0
    const-string v0, "Android"

    sput-object v0, Lcom/fastman92/main_activity_launcher/Settings;->AndroidDirectory:Ljava/lang/String;

    .line 431
    :goto_0
    const-string v0, "ANDROID_DATA_DIRECTORY"

    invoke-static {v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fastman92/main_activity_launcher/Settings;->AndroidDATAdirectory:Ljava/lang/String;

    .line 432
    const-string v0, "ANDROID_OBB_DIRECTORY"

    invoke-static {v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GetPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fastman92/main_activity_launcher/Settings;->AndroidOBBdirectory:Ljava/lang/String;

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fastman92/main_activity_launcher/Settings;->AndroidDirectory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fastman92/main_activity_launcher/Settings;->ANDROID_PATH_PREFIX_NO_SLASH:Ljava/lang/String;

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fastman92/main_activity_launcher/Settings;->AndroidDirectory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fastman92/main_activity_launcher/Settings;->DATA_PATH_PREFIX:Ljava/lang/String;

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fastman92/main_activity_launcher/Settings;->AndroidDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fastman92/main_activity_launcher/Settings;->OBB_PATH_PREFIX:Ljava/lang/String;

    .line 437
    return-void
.end method

.method static SetErrorMessage(Ljava/lang/Exception;)V
    .locals 6
    .param p0, "e"    # Ljava/lang/Exception;

    .line 394
    nop

    .line 395
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 397
    .local v0, "stktrace":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, "str":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 401
    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const/4 v2, 0x3

    .line 404
    .local v2, "maxToDo":I
    array-length v3, v0

    .line 406
    .local v3, "toDo":I
    if-le v3, v2, :cond_0

    .line 407
    move v3, v2

    .line 409
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 410
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 413
    .end local v4    # "i":I
    :cond_1
    array-length v4, v0

    if-le v4, v3, :cond_2

    .line 414
    const-string v4, "\nmore..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/fastman92/main_activity_launcher/SettingsLoader;->ProjectFullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .end local v2    # "maxToDo":I
    .end local v3    # "toDo":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fastman92/main_activity_launcher/SettingsLoader;->errorMessage:Ljava/lang/String;

    .line 420
    return-void
.end method

.method private static WriteSettingsFile()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 869
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 870
    .local v0, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 871
    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 872
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string v3, "CONFIGURATION"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 873
    .local v3, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 875
    new-instance v4, Ljava/util/TreeMap;

    sget-object v5, Lcom/fastman92/main_activity_launcher/SettingsLoader;->settingsStoredInFile:Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 876
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 877
    .local v6, "element":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 878
    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 879
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "element":Lorg/w3c/dom/Element;
    goto :goto_0

    .line 881
    :cond_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    .line 882
    .local v4, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 883
    .local v5, "transformer":Ljavax/xml/transform/Transformer;
    const-string v6, "indent"

    const-string/jumbo v7, "yes"

    invoke-virtual {v5, v6, v7}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string/jumbo v6, "{http://xml.apache.org/xslt}indent-amount"

    const-string v7, "4"

    invoke-virtual {v5, v6, v7}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v6, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 886
    .local v6, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/fastman92/main_activity_launcher/SettingsLoader;->XMLsettingsFilePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 887
    .local v7, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v5, v6, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 888
    return-void
.end method

.method private static getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 312
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 314
    .local v1, "pm":Landroid/content/pm/PackageManager;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 315
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v2

    .line 316
    .local v2, "info":Landroid/content/pm/InstallSourceInfo;
    if-eqz v2, :cond_0

    .line 317
    invoke-virtual {v2}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 320
    .end local v2    # "info":Landroid/content/pm/InstallSourceInfo;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 321
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 323
    const-string v0, ""

    return-object v0
.end method

.method public static isInstalledVia(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "required"    # Ljava/lang/String;

    .line 306
    invoke-static {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "installer":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isInstalledViaAmazon(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 297
    sget-object v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->AMAZON:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->isInstalledVia(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInstalledViaGooglePlay(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 293
    sget-object v0, Lcom/fastman92/main_activity_launcher/SettingsLoader;->GOOGLE_PLAY:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->isInstalledVia(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSideloaded(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 301
    invoke-static {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "installer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$requestPermissions$0(Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "var"    # Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 91
    invoke-interface {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;->onRequestPermissions()V

    return-void
.end method

.method private requestPermissions(Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;)V
    .locals 2
    .param p1, "var"    # Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;

    .line 89
    new-instance v0, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda0;-><init>(Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;)V

    const-string v1, "Permission to access files is needed. Please accept."

    invoke-static {p0, v1, v0}, Lcom/fastman92/main_activity_launcher/Functions;->ShowMessageBox(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 93
    return-void
.end method

.method private requestPermissionsCompat([Ljava/lang/String;I)V
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 214
    move-object v0, p0

    .line 216
    .local v0, "activity":Lcom/fastman92/main_activity_launcher/SettingsLoader;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 217
    .local v3, "permission":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    .end local v3    # "permission":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .restart local v3    # "permission":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission request for permissions "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " must not contain null or empty values"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 226
    invoke-virtual {v0, p1, p2}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 228
    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 229
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/fastman92/main_activity_launcher/SettingsLoader$1;-><init>(Lcom/fastman92/main_activity_launcher/SettingsLoader;[Ljava/lang/String;Lcom/fastman92/main_activity_launcher/SettingsLoader;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    .end local v1    # "handler":Landroid/os/Handler;
    :goto_1
    return-void
.end method


# virtual methods
.method synthetic lambda$OnSettingsLoaded$3$com-fastman92-main_activity_launcher-SettingsLoader(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 281
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->OnSettingsLoaded2()V

    .line 282
    return-void
.end method

.method synthetic lambda$OnSettingsLoaded2$4$com-fastman92-main_activity_launcher-SettingsLoader(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 348
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->OnSettingsLoaded3()V

    .line 349
    return-void
.end method

.method synthetic lambda$OnSettingsLoaded3$5$com-fastman92-main_activity_launcher-SettingsLoader(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 377
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->FinishThisActivity()V

    .line 378
    return-void
.end method

.method synthetic lambda$onCreate$1$com-fastman92-main_activity_launcher-SettingsLoader()V
    .locals 5

    .line 109
    const/16 v0, 0x65

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 113
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v2, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$2$com-fastman92-main_activity_launcher-SettingsLoader()V
    .locals 2

    .line 143
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->requestPermissionsCompat([Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/fastman92/main_activity_launcher/AlteredType/android/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 168
    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 171
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 172
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to obtain MANAGE_EXTERNAL_STORAGE permission."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "requestCode":I
    .end local p2    # "resultCode":I
    .end local p3    # "data":Landroid/content/Intent;
    throw v0

    .line 175
    .restart local p1    # "requestCode":I
    .restart local p2    # "resultCode":I
    .restart local p3    # "data":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->InitializeSettingsInActivity(Landroid/content/Context;)V

    .line 177
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->OnSettingsLoaded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->SetErrorMessage(Ljava/lang/Exception;)V

    .line 182
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->FinishThisActivity()V

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 97
    invoke-super {p0, p1}, Lcom/fastman92/main_activity_launcher/AlteredType/android/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "bNeedToWaitForPermissions":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/fastman92/main_activity_launcher/Settings;->bSettingsLoaded:Z

    .line 102
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v2, :cond_0

    .line 104
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v1

    if-nez v1, :cond_2

    .line 105
    const/4 v0, 0x1

    .line 107
    new-instance v1, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda4;-><init>(Lcom/fastman92/main_activity_launcher/SettingsLoader;)V

    invoke-direct {p0, v1}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->requestPermissions(Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3, v1, v2}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    .line 138
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3, v1, v2}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    :cond_1
    const/4 v0, 0x1

    .line 142
    new-instance v1, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader$$ExternalSyntheticLambda5;-><init>(Lcom/fastman92/main_activity_launcher/SettingsLoader;)V

    invoke-direct {p0, v1}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->requestPermissions(Lcom/fastman92/main_activity_launcher/SettingsLoader$OnRequestPermissions;)V

    .line 152
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 155
    :try_start_0
    invoke-static {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->InitializeSettingsInActivity(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_1

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->SetErrorMessage(Ljava/lang/Exception;)V

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->OnSettingsLoaded()V

    .line 162
    :cond_3
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 190
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 192
    :try_start_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 197
    const/4 v0, 0x1

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 200
    invoke-static {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->InitializeSettingsInActivity(Landroid/content/Context;)V

    .line 202
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->OnSettingsLoaded()V

    .line 208
    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to obtain READ_EXTERNAL_STORAGE permission."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "requestCode":I
    .end local p2    # "permissions":[Ljava/lang/String;
    .end local p3    # "grantResults":[I
    throw v0

    .line 195
    .restart local p1    # "requestCode":I
    .restart local p2    # "permissions":[Ljava/lang/String;
    .restart local p3    # "grantResults":[I
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to obtain WRITE_EXTERNAL_STORAGE permission."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "requestCode":I
    .end local p2    # "permissions":[Ljava/lang/String;
    .end local p3    # "grantResults":[I
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .restart local p1    # "requestCode":I
    .restart local p2    # "permissions":[Ljava/lang/String;
    .restart local p3    # "grantResults":[I
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->SetErrorMessage(Ljava/lang/Exception;)V

    .line 207
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->FinishThisActivity()V

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method
