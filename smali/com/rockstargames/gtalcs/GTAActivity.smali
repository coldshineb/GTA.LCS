.class public Lcom/rockstargames/gtalcs/GTAActivity;
.super Lcom/rockstargames/gtalcs/GTAActivityBase;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/rockstargames/gtalcs/H;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/hardware/Sensor;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GTAActivityBase"

    sput-object v0, Lcom/rockstargames/gtalcs/GTAActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;-><init>()V

    sget v0, Lcom/rockstargames/gtalcs/m;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/rockstargames/gtalcs/l;

    invoke-direct {v2, p0}, Lcom/rockstargames/gtalcs/l;-><init>(Lcom/rockstargames/gtalcs/GTAActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setPrivateFilesDir(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setGameFilesDir(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivity;->createView()V

    return-void
.end method

.method public createView()V
    .locals 0

    invoke-super {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->createView()V

    return-void
.end method

.method native initTouchSense(Landroid/content/Context;)V
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    sget v0, Lcom/rockstargames/gtalcs/m;->b:I

    invoke-super {p0, p1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "OBBFilename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PatchFilename"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/rockstargames/gtalcs/I;

    invoke-direct {v2, p0, p0, v1, v0}, Lcom/rockstargames/gtalcs/I;-><init>(Landroid/app/Activity;Lcom/rockstargames/gtalcs/H;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivity;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivity;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivity;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivity;->d:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivity;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivity;->d:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivity;->c:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivity;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/rockstargames/gtalcs/GTAActivity;->e:I

    const-string v0, "ImmEmulatorJ"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/rockstargames/gtalcs/GTAActivity;->initTouchSense(Landroid/content/Context;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->onPause()V

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->PlaylistOnActivityPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->onResume()V

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->PlaylistOnActivityResume()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/rockstargames/gtalcs/GTAActivity;->e:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    :goto_0
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    neg-float v0, v0

    :cond_0
    invoke-static {v1, v0, v2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setAccelerometer(FFF)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    neg-float v0, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected setDeviceOrientation()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAActivity;->setRequestedOrientation(I)V

    sget-object v0, Lcom/rockstargames/gtalcs/GTAActivity;->a:Ljava/lang/String;

    const-string v1, "Setting orientation to SCREEN_ORIENTATION_USER_LANDSCAPE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
