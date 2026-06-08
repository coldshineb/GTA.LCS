.class public Lcom/rockstargames/gtalcs/GTAJNIlib;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "openal"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "mpg123"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "GTALcs"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "libGTALcs.so"

    invoke-static {v0}, Lcom/fastman92/main_activity_launcher/Functions;->NativeCodePatch(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native TestJNI()V
.end method

.method public static native callSocialClubSignOut()V
.end method

.method public static native callSocialClubUpdate()V
.end method

.method public static native getGameBuildType()Ljava/lang/String;
.end method

.method public static native isOnMainMenuScreen()Z
.end method

.method public static native onBackButtonPressed()V
.end method

.method public static native onJoyButtonDown(II)V
.end method

.method public static native onJoyButtonUp(II)V
.end method

.method public static native onTouchEnd(IFF)V
.end method

.method public static native onTouchMove(IFF)V
.end method

.method public static native onTouchStart(IFF)V
.end method

.method public static native setAccelerometer(FFF)V
.end method

.method public static native setAssetManager(Landroid/content/res/AssetManager;)V
.end method

.method public static native setDeviceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setDisplaySize(II)V
.end method

.method public static native setFileInstalled(Ljava/lang/String;)V
.end method

.method public static native setGameFilesDir(Ljava/lang/String;)V
.end method

.method public static native setHasVibrator(Z)V
.end method

.method public static native setIsTVDevice(Z)V
.end method

.method public static native setJoyAxis(IIF)V
.end method

.method public static native setNoJoysticks(I)V
.end method

.method public static native setOSVersion(I)V
.end method

.method public static native setPrivateFilesDir(Ljava/lang/String;)V
.end method

.method public static native viewOnDrawFrame(F)V
.end method

.method public static native viewOnInit()V
.end method

.method public static native viewOnPause()V
.end method

.method public static native viewOnResume()V
.end method
