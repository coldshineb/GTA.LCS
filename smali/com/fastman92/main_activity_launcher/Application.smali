.class public Lcom/fastman92/main_activity_launcher/Application;
.super Lcom/fastman92/main_activity_launcher/ApplicationOriginal;
.source "Application.java"


# static fields
.field static instance:Lcom/fastman92/main_activity_launcher/Application;


# instance fields
.field mBaseOriginal:Landroid/content/Context;

.field signFix:Lcom/fastman92/main_activity_launcher/SignFix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/fastman92/main_activity_launcher/ApplicationOriginal;-><init>()V

    .line 25
    new-instance v0, Lcom/fastman92/main_activity_launcher/SignFix;

    invoke-direct {v0, p0}, Lcom/fastman92/main_activity_launcher/SignFix;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fastman92/main_activity_launcher/Application;->signFix:Lcom/fastman92/main_activity_launcher/SignFix;

    .line 26
    return-void
.end method


# virtual methods
.method HandleException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fastman92/main_activity_launcher/Application;->ShowErrorMessage(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method ShowErrorMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 74
    const-string v0, "fastman92 app launcher"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/fastman92/main_activity_launcher/Application;->mBaseOriginal:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/fastman92/main_activity_launcher/AlteredContext;

    invoke-direct {v0, p1}, Lcom/fastman92/main_activity_launcher/AlteredContext;-><init>(Landroid/content/Context;)V

    invoke-super {p0, v0}, Lcom/fastman92/main_activity_launcher/ApplicationOriginal;->attachBaseContext(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/fastman92/main_activity_launcher/Application;->mBaseOriginal:Landroid/content/Context;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 30
    sput-object p0, Lcom/fastman92/main_activity_launcher/Application;->instance:Lcom/fastman92/main_activity_launcher/Application;

    .line 32
    invoke-static {p0}, Lcom/fastman92/main_activity_launcher/Functions;->CodeOnApplicationLaunch(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->InitializeSettings(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/fastman92/main_activity_launcher/SettingsLoader;->SetErrorMessage(Ljava/lang/Exception;)V

    .line 43
    sget-object v1, Lcom/fastman92/main_activity_launcher/SettingsLoader;->errorMessage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/fastman92/main_activity_launcher/Application;->ShowErrorMessage(Ljava/lang/String;)V

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-super {p0}, Lcom/fastman92/main_activity_launcher/ApplicationOriginal;->onCreate()V

    .line 47
    return-void
.end method
