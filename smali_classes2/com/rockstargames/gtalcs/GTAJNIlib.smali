.class public final Lcom/rockstargames/gtalcs/GTAJNIlib;
.super Ljava/lang/Object;
.source "GTAJNIlib.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\t\u0010\u0004\u001a\u00020\u0005H\u0087 J\t\u0010\u0006\u001a\u00020\u0007H\u0087 J\u001d\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0087 J\u0013\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0087 J\u0013\u0010\r\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0087 J\u0013\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0087 J\u0013\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\nH\u0087 J2\u0010\u0014\u001a\u00020\u00072\u0010\u0010\u0015\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\u00162\u0010\u0010\u0017\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\u0016H\u0087 \u00a2\u0006\u0002\u0010\u0018J\u0011\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0005H\u0087 J\u0011\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0005H\u0087 J\u0011\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001eH\u0087 J/\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001e2\u0008\u0010!\u001a\u0004\u0018\u00010\n2\u0008\u0010\"\u001a\u0004\u0018\u00010\n2\u0008\u0010#\u001a\u0004\u0018\u00010\nH\u0087 J\u000b\u0010$\u001a\u0004\u0018\u00010\nH\u0087 J\t\u0010%\u001a\u00020\u0005H\u0087 J\t\u0010&\u001a\u00020\u0007H\u0087 J!\u0010\'\u001a\u00020\u00072\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u001e2\u0006\u0010+\u001a\u00020\u001eH\u0087 J\t\u0010,\u001a\u00020\u0007H\u0087 J\t\u0010-\u001a\u00020\u0007H\u0087 J\t\u0010.\u001a\u00020\u0007H\u0087 J\u0011\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u000201H\u0087 J!\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u0002012\u0006\u00105\u001a\u000201H\u0087 J!\u00106\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u0002012\u0006\u00105\u001a\u000201H\u0087 J!\u00107\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u0002012\u0006\u00105\u001a\u000201H\u0087 J\t\u00108\u001a\u00020\u0007H\u0087 J\u0011\u00109\u001a\u00020\u00072\u0006\u0010:\u001a\u00020\u001eH\u0087 J!\u0010;\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u001e2\u0006\u0010=\u001a\u00020\u001e2\u0006\u0010>\u001a\u000201H\u0087 J\u0019\u0010?\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\u001eH\u0087 J\u0019\u0010A\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\u001eH\u0087 J!\u0010B\u001a\u00020\u00072\u0006\u00104\u001a\u0002012\u0006\u00105\u001a\u0002012\u0006\u0010C\u001a\u000201H\u0087 \u00a8\u0006D"
    }
    d2 = {
        "Lcom/rockstargames/gtalcs/GTAJNIlib;",
        "",
        "<init>",
        "()V",
        "isInitialized",
        "",
        "markInitialized",
        "",
        "initCloud",
        "env",
        "",
        "rID",
        "updateRockstarID",
        "setAssetManager",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "setPrivateFilesDir",
        "dirString",
        "setFileInstalled",
        "fileString",
        "setAssetPacksInfo",
        "names",
        "",
        "paths",
        "([Ljava/lang/String;[Ljava/lang/String;)V",
        "setIsTVDevice",
        "TvDevice",
        "setHasVibrator",
        "setOSVersion",
        "version",
        "",
        "setDeviceInfo",
        "cpuMax",
        "deviceModel",
        "manufacturer",
        "hardware",
        "getGameBuildType",
        "isOnMainMenuScreen",
        "viewOnSurfaceCreated",
        "viewOnSurfaceChanged",
        "surface",
        "Landroid/view/Surface;",
        "width",
        "height",
        "viewOnSurfaceDestroyed",
        "viewOnPause",
        "viewOnResume",
        "viewOnDrawFrame",
        "dt",
        "",
        "onTouchStart",
        "id",
        "x",
        "y",
        "onTouchMove",
        "onTouchEnd",
        "onBackButtonPressed",
        "setNoJoysticks",
        "noDevices",
        "setJoyAxis",
        "deviceNo",
        "axisId",
        "value",
        "onJoyButtonDown",
        "buttonId",
        "onJoyButtonUp",
        "setAccelerometer",
        "z",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/rockstargames/gtalcs/GTAJNIlib;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rockstargames/gtalcs/GTAJNIlib;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;-><init>()V

    sput-object v0, Lcom/rockstargames/gtalcs/GTAJNIlib;->INSTANCE:Lcom/rockstargames/gtalcs/GTAJNIlib;

    .line 10
    const-string v0, "Game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native getGameBuildType()Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native initCloud(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native isInitialized()Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native isOnMainMenuScreen()Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native markInitialized()V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native onBackButtonPressed()V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native onJoyButtonDown(II)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native onJoyButtonUp(II)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native onTouchEnd(IFF)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native onTouchMove(IFF)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native onTouchStart(IFF)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setAccelerometer(FFF)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setAssetManager(Landroid/content/res/AssetManager;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setAssetPacksInfo([Ljava/lang/String;[Ljava/lang/String;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setDeviceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setFileInstalled(Ljava/lang/String;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setHasVibrator(Z)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setIsTVDevice(Z)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setJoyAxis(IIF)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setNoJoysticks(I)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setOSVersion(I)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setPrivateFilesDir(Ljava/lang/String;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native updateRockstarID(Ljava/lang/String;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native viewOnDrawFrame(F)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native viewOnPause()V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native viewOnResume()V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native viewOnSurfaceChanged(Landroid/view/Surface;II)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native viewOnSurfaceCreated()V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native viewOnSurfaceDestroyed()V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method
