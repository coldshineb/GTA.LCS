.class public Lcom/fastman92/main_activity_launcher/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .line 14
    move-object v0, p0

    .line 15
    .local v0, "cur":Ljava/io/File;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 16
    .local v3, "segment":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 17
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_1

    .line 19
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .line 15
    .end local v3    # "segment":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_1
    return-object v0
.end method

.method public static varargs buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p0, "base"    # [Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .line 31
    array-length v0, p0

    new-array v0, v0, [Ljava/io/File;

    .line 32
    .local v0, "result":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 33
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/fastman92/main_activity_launcher/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 2

    .line 103
    sget-object v0, Lcom/fastman92/main_activity_launcher/Settings;->ExternalStorageDirectory:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/fastman92/main_activity_launcher/Settings;->ExternalStorageDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
