.class public Lcom/rockstargames/gtalcs/BootGameActivity;
.super Landroid/support/v4/app/m;


# static fields
.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BootGameActivity"

    sput-object v0, Lcom/rockstargames/gtalcs/BootGameActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/m;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/rockstargames/gtalcs/BootGameActivity;->e:Ljava/lang/String;

    const-string v1, "PACKAGE VERSION IS %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "main.%d.%s.obb"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/fastman92/main_activity_launcher/Settings;->originalPackageName:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/m;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/rockstargames/gtalcs/BootGameActivity;->e:Ljava/lang/String;

    const-string v1, "onCreate 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/rockstargames/gtalcs/GTAActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/rockstargames/gtalcs/BootGameActivity;->e:Ljava/lang/String;

    const-string v3, "Setting SuccessIntent to %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/rockstargames/gtalcs/BootGameActivity;->e:Ljava/lang/String;

    const-string v3, "OBB file name : %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/rockstargames/gtalcs/BootGameActivity;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SuccessIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OBBFilename"

    invoke-direct {p0}, Lcom/rockstargames/gtalcs/BootGameActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PatchFilename"

    const-string v2, "patch.%d.%s.obb"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lcom/fastman92/main_activity_launcher/Settings;->originalPackageName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "IsMasterBuild"

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->getGameBuildType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MASTER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/BootGameActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/BootGameActivity;->finish()V

    return-void
.end method
