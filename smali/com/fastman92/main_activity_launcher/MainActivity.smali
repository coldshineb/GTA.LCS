.class public Lcom/fastman92/main_activity_launcher/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static activityToBeLoadedComponentName:Landroid/content/ComponentName; = null

.field public static final log_tag:Ljava/lang/String; = "fastman92 app launcher"

.field public static originalActivityAlreadyStarted:Z


# instance fields
.field private final SETTINGS_REQUEST_CODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fastman92/main_activity_launcher/MainActivity;->originalActivityAlreadyStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/fastman92/main_activity_launcher/MainActivity;->SETTINGS_REQUEST_CODE:I

    return-void
.end method

.method private GoToOriginalActivity()V
    .locals 2

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, "originalActivityIntent":Landroid/content/Intent;
    sget-object v1, Lcom/fastman92/main_activity_launcher/MainActivity;->activityToBeLoadedComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/fastman92/main_activity_launcher/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/fastman92/main_activity_launcher/MainActivity;->finish()V

    .line 128
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fastman92/main_activity_launcher/MainActivity;->originalActivityAlreadyStarted:Z

    .line 129
    return-void
.end method

.method private LauncherActivityHasGotNothingMoreToDo()V
    .locals 0

    .line 113
    return-void
.end method


# virtual methods
.method HandleException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fastman92/main_activity_launcher/MainActivity;->ShowErrorMessage(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/MainActivity;->LauncherActivityHasGotNothingMoreToDo()V

    .line 100
    return-void
.end method

.method ShowErrorMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 105
    const-string v0, "fastman92 app launcher"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Lcom/fastman92/main_activity_launcher/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/fastman92/main_activity_launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/fastman92/main_activity_launcher/MainActivity;)V

    invoke-static {p0, p1, v0}, Lcom/fastman92/main_activity_launcher/Functions;->ShowMessageBox(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 108
    return-void
.end method

.method synthetic lambda$ShowErrorMessage$0$com-fastman92-main_activity_launcher-MainActivity(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 107
    invoke-virtual {p0}, Lcom/fastman92/main_activity_launcher/MainActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 58
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    const-string v0, "fastman92 app launcher"

    if-nez p3, :cond_1

    .line 62
    const-string v1, "Unable to start SettingsLoader activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/fastman92/main_activity_launcher/MainActivity;->finish()V

    .line 64
    return-void

    .line 68
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 69
    :try_start_0
    const-string v1, "Launching an original activity."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/MainActivity;->GoToOriginalActivity()V

    .line 93
    goto :goto_0

    .line 84
    :cond_2
    const-string v0, "errorMessage"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "errorMessage":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 87
    const-string v1, "Unknown error from settings loader"

    move-object v0, v1

    .line 89
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "requestCode":I
    .end local p2    # "resultCode":I
    .end local p3    # "data":Landroid/content/Intent;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "errorMessage":Ljava/lang/String;
    .restart local p1    # "requestCode":I
    .restart local p2    # "resultCode":I
    .restart local p3    # "data":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/fastman92/main_activity_launcher/MainActivity;->HandleException(Ljava/lang/Exception;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget-boolean v0, Lcom/fastman92/main_activity_launcher/MainActivity;->originalActivityAlreadyStarted:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/MainActivity;->GoToOriginalActivity()V

    .line 26
    return-void

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/fastman92/main_activity_launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/fastman92/main_activity_launcher/MainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 33
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 35
    .local v1, "metaData":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 38
    const-string v2, "ACTIVITY_TO_LAUNCH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "activityToLaunchStr":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 43
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/fastman92/main_activity_launcher/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/fastman92/main_activity_launcher/MainActivity;->activityToBeLoadedComponentName:Landroid/content/ComponentName;

    .line 46
    .end local v2    # "activityToLaunchStr":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/fastman92/main_activity_launcher/SettingsLoader;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v2, "settingsIntent":Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/fastman92/main_activity_launcher/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    goto :goto_0

    .line 41
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "metaData":Landroid/os/Bundle;
    .local v2, "activityToLaunchStr":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "meta-data ACTIVITY_TO_LAUNCH not found in activity."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v3

    .line 36
    .end local v2    # "activityToLaunchStr":Ljava/lang/String;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Activity\'s metaData is null."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "metaData":Landroid/os/Bundle;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/fastman92/main_activity_launcher/MainActivity;->HandleException(Ljava/lang/Exception;)V

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
