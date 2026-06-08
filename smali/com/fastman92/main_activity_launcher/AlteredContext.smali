.class public Lcom/fastman92/main_activity_launcher/AlteredContext;
.super Landroid/content/ContextWrapper;
.source "AlteredContext.java"


# static fields
.field static bEnsureExternalDirsExist:Z


# instance fields
.field private final mMiscDirsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fastman92/main_activity_launcher/AlteredContext;->bEnsureExternalDirsExist:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fastman92/main_activity_launcher/AlteredContext;->mMiscDirsLock:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method private ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;
    .locals 4
    .param p1, "dirs"    # [Ljava/io/File;
    .param p2, "tryCreateInProcess"    # Z

    .line 104
    sget-boolean v0, Lcom/fastman92/main_activity_launcher/AlteredContext;->bEnsureExternalDirsExist:Z

    if-nez v0, :cond_0

    .line 105
    return-object p1

    .line 107
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/io/File;

    .line 109
    .local v0, "result":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 110
    aget-object v2, p1, v1

    .line 112
    .local v2, "dir":Ljava/io/File;
    if-nez v2, :cond_1

    .line 113
    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 117
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    .line 118
    const/4 v2, 0x0

    .line 121
    :cond_2
    goto :goto_1

    .line 119
    .end local v2    # "dir":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 109
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_4
    return-object p1
.end method

.method private static getFileArrayWithFirstItemStoredTwice([Ljava/io/File;)[Ljava/io/File;
    .locals 4
    .param p0, "dirs"    # [Ljava/io/File;

    .line 30
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    .line 32
    .local v0, "new_dirs":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 33
    add-int/lit8 v2, v1, 0x1

    aget-object v3, p0, v1

    aput-object v3, v0, v2

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    aget-object v2, p0, v1

    aput-object v2, v0, v1

    .line 37
    return-object v0
.end method


# virtual methods
.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1}, Lcom/fastman92/main_activity_launcher/AlteredContext;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 50
    .local v0, "dirs":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/fastman92/main_activity_launcher/AlteredContext;->mMiscDirsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 58
    .local v1, "dirs":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 59
    aget-object v3, v1, v2

    invoke-static {v3, v4}, Lcom/fastman92/main_activity_launcher/Functions;->AndroidDATAdirToUnprotected(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v3

    aput-object v3, v1, v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "i":I
    :cond_0
    sget-boolean v2, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bDifferentFirstExternalDirectory:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 62
    invoke-static {v1}, Lcom/fastman92/main_activity_launcher/AlteredContext;->getFileArrayWithFirstItemStoredTwice([Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 64
    aget-object v2, v1, v4

    invoke-static {v2, v3}, Lcom/fastman92/main_activity_launcher/Functions;->AndroidDATAdirToUnprotected(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v4

    .line 67
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/fastman92/main_activity_launcher/AlteredContext;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 68
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fastman92/main_activity_launcher/AlteredContext;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getObbDir()Ljava/io/File;
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/fastman92/main_activity_launcher/AlteredContext;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    .line 75
    .local v0, "dirs":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getObbDirs()[Ljava/io/File;
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/fastman92/main_activity_launcher/AlteredContext;->mMiscDirsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getObbDirs()[Ljava/io/File;

    move-result-object v1

    .line 83
    .local v1, "dirs":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 84
    aget-object v3, v1, v2

    invoke-static {v3, v4}, Lcom/fastman92/main_activity_launcher/Functions;->AndroidOBBdirToUnprotected(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v3

    aput-object v3, v1, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_0
    sget-boolean v2, Lcom/fastman92/main_activity_launcher/SettingsLoader;->bDifferentFirstExternalDirectory:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 88
    invoke-static {v1}, Lcom/fastman92/main_activity_launcher/AlteredContext;->getFileArrayWithFirstItemStoredTwice([Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 90
    aget-object v2, v1, v4

    invoke-static {v2, v3}, Lcom/fastman92/main_activity_launcher/Functions;->AndroidOBBdirToUnprotected(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v4

    .line 93
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/fastman92/main_activity_launcher/AlteredContext;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 94
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
