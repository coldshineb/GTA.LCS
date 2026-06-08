.class public Lcom/fastman92/main_activity_launcher/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# static fields
.field private static bCodeOnApplicationLaunchExecuted:Z

.field public static final getPathToDirectoryInsideAndroidFromAndroidDir_pattern:Ljava/util/regex/Pattern;

.field private static final getPathToSDcardFromAndroidDir_pattern:Ljava/util/regex/Pattern;

.field public static oldExternalStorageDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    const-string v0, ".*\\/(Android(_unprotected)|AndUnpr)(/)(.*?)(?=/)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fastman92/main_activity_launcher/Functions;->getPathToDirectoryInsideAndroidFromAndroidDir_pattern:Ljava/util/regex/Pattern;

    .line 108
    const-string v0, ".*(?=\\/(Android(_unprotected)?|AndUnpr)(?=\\/|$))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fastman92/main_activity_launcher/Functions;->getPathToSDcardFromAndroidDir_pattern:Ljava/util/regex/Pattern;

    .line 171
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fastman92/main_activity_launcher/Functions;->bCodeOnApplicationLaunchExecuted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AndroidAssetPacksDirToUnprotected(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "dir_protected"    # Ljava/io/File;

    .line 72
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 73
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fastman92/main_activity_launcher/Functions;->getPathToAndroidUnprotectedDir(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "AndroidUnprotectedDir":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 78
    return-object v0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fastman92/main_activity_launcher/Settings;->AndroidOBBdirectory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/files/assetpacks"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "AssetPacksPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "dir_unprotected":Ljava/io/File;
    return-object v2
.end method

.method public static AndroidDATAdirToUnprotected(Ljava/io/File;Z)Ljava/io/File;
    .locals 4
    .param p0, "dir_protected"    # Ljava/io/File;
    .param p1, "bRedirectThePathPossibly"    # Z

    .line 36
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 37
    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fastman92/main_activity_launcher/Functions;->getPathToAndroidUnprotectedDir(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "AndroidUnprotectedDir":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 42
    return-object v0

    .line 44
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/fastman92/main_activity_launcher/Settings;->AndroidDATAdirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "dir_unprotected":Ljava/io/File;
    return-object v0
.end method

.method public static AndroidOBBdirToUnprotected(Ljava/io/File;Z)Ljava/io/File;
    .locals 4
    .param p0, "dir_protected"    # Ljava/io/File;
    .param p1, "bRedirectThePathPossibly"    # Z

    .line 54
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 55
    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fastman92/main_activity_launcher/Functions;->getPathToAndroidUnprotectedDir(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "AndroidUnprotectedDir":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 60
    return-object v0

    .line 62
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/obb/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/fastman92/main_activity_launcher/Settings;->AndroidOBBdirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "dir_unprotected":Ljava/io/File;
    return-object v0
.end method

.method public static CodeOnApplicationLaunch(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 179
    sget-boolean v0, Lcom/fastman92/main_activity_launcher/Functions;->bCodeOnApplicationLaunchExecuted:Z

    if-eqz v0, :cond_0

    .line 180
    return-void

    .line 184
    :cond_0
    if-eqz p0, :cond_1

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/fastman92/main_activity_launcher/SettingsGenerated;->packageName:Ljava/lang/String;

    .line 189
    .restart local v0    # "packageName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", PID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fastman92 app launcher"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fastman92/main_activity_launcher/Functions;->bCodeOnApplicationLaunchExecuted:Z

    .line 193
    return-void
.end method

.method public static LogStackTrace()V
    .locals 7

    .line 128
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 130
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stack "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 133
    .local v4, "st":Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .end local v4    # "st":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fastman92 app launcher"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public static MkDirIfDoesNotExist(Ljava/io/File;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 32
    :cond_0
    return-void
.end method

.method public static native NativeCodePatch(Ljava/lang/String;)V
.end method

.method public static native OnApplicationStartup_7548652()V
.end method

.method public static ShowMessageBox(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    nop

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    new-instance v1, Lcom/fastman92/main_activity_launcher/Functions$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/fastman92/main_activity_launcher/Functions$$ExternalSyntheticLambda0;-><init>(Landroid/content/DialogInterface$OnCancelListener;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 163
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 165
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 167
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 168
    return-void
.end method

.method static getAPKExpansionFiles(Landroid/content/Context;II)[Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mainVersion"    # I
    .param p2, "patchVersion"    # I

    .line 271
    sget-object v0, Lcom/fastman92/main_activity_launcher/Settings;->originalPackageName:Ljava/lang/String;

    .line 272
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 273
    .local v1, "ret":Ljava/util/Vector;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/fastman92/main_activity_launcher/Settings;->OBB_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v2, "expPath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    const-string v3, ".obb"

    const-string v4, "."

    if-lez p1, :cond_0

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "main."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "s1":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 279
    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v5    # "s1":Ljava/lang/String;
    :cond_0
    if-lez p2, :cond_1

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "patch."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "s2":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v2    # "expPath":Ljava/io/File;
    .end local v3    # "s2":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 293
    .local v2, "retArray":[Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 294
    return-object v2
.end method

.method public static getPathToAndroidUnprotectedDir(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "bRedirectThePathPossibly"    # Z

    .line 112
    sget-object v0, Lcom/fastman92/main_activity_launcher/Functions;->getPathToSDcardFromAndroidDir_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 114
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "pathToSDcard":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 118
    sget-object v1, Lcom/fastman92/main_activity_launcher/Settings;->ExternalStorageDirectory:Ljava/lang/String;

    .line 120
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/fastman92/main_activity_launcher/Settings;->AndroidDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 122
    .end local v1    # "pathToSDcard":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$ShowMessageBox$0(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "listener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 158
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method
