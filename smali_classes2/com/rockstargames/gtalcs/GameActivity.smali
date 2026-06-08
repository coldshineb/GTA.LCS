.class public final Lcom/rockstargames/gtalcs/GameActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "GameActivity.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/gtalcs/GameActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0018\u0000 82\u00020\u00012\u00020\u0002:\u00018B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0008\u0010\u0019\u001a\u00020\u0016H\u0014J\u0008\u0010\u001a\u001a\u00020\u0016H\u0002J\u0008\u0010\u001b\u001a\u00020\u0016H\u0002J\u0008\u0010\u001c\u001a\u00020\u0016H\u0002J\u0008\u0010\u001d\u001a\u00020\u0016H\u0002J\u0008\u0010\u001e\u001a\u00020\u0016H\u0002J\u0008\u0010\u001f\u001a\u00020\u0016H\u0002J\u0010\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\"H\u0002J\u0008\u0010#\u001a\u00020\u0016H\u0014J\u0008\u0010$\u001a\u00020\u0016H\u0014J\u0010\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u0010H\u0016J\u0010\u0010\'\u001a\u00020\u00162\u0006\u0010(\u001a\u00020)H\u0016J\u0018\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020\u000cH\u0016J\u0010\u0010-\u001a\u00020\u00162\u0006\u0010.\u001a\u00020/H\u0016J\u000e\u00100\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u00101\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u00102\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u00103\u001a\u00020\u0016J\u000e\u00104\u001a\u00020\u00162\u0006\u00105\u001a\u000206J\u0006\u00107\u001a\u00020\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u00069"
    }
    d2 = {
        "Lcom/rockstargames/gtalcs/GameActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroid/hardware/SensorEventListener;",
        "<init>",
        "()V",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "loadingScreen",
        "Lcom/rockstargames/gtalcs/LoadingScreen;",
        "gameView",
        "Lcom/rockstargames/gtalcs/GameView;",
        "displayRotation",
        "",
        "accelerometer",
        "Landroid/hardware/Sensor;",
        "value",
        "",
        "isMoviePlaying",
        "()Z",
        "setMoviePlaying",
        "(Z)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "hideSystemUI",
        "setupAssets",
        "setupView",
        "setupDeviceInfo",
        "setupRockstar",
        "onStateChanged",
        "onTicketReceived",
        "ticket",
        "",
        "onPause",
        "onResume",
        "onWindowFocusChanged",
        "hasFocus",
        "onSensorChanged",
        "event",
        "Landroid/hardware/SensorEvent;",
        "onAccuracyChanged",
        "sensor",
        "accuracy",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "setKeepScreenOn",
        "setInUI",
        "setFrameRateLock",
        "showLoadingScreen",
        "showLoadingBar",
        "progress",
        "",
        "hideLoadingScreen",
        "Companion",
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
.field public static final Companion:Lcom/rockstargames/gtalcs/GameActivity$Companion;

.field public static final TAG:Ljava/lang/String; = "GameActivity"


# instance fields
.field private accelerometer:Landroid/hardware/Sensor;

.field private displayRotation:I

.field private gameView:Lcom/rockstargames/gtalcs/GameView;

.field private isMoviePlaying:Z

.field private loadingScreen:Lcom/rockstargames/gtalcs/LoadingScreen;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public static synthetic $r8$lambda$60qdKBUif0St4q8QaZncAKkJ5Kw(Lcom/rockstargames/gtalcs/GameActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockstargames/gtalcs/GameActivity;->onStateChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$buXmwAL1ZcpiijVs-5vqEq4-6yg(Lcom/rockstargames/gtalcs/GameActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockstargames/gtalcs/GameActivity;->onTicketReceived(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rockstargames/gtalcs/GameActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rockstargames/gtalcs/GameActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rockstargames/gtalcs/GameActivity;->Companion:Lcom/rockstargames/gtalcs/GameActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final hideSystemUI()V
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private final onStateChanged()V
    .locals 2

    .line 212
    const-string v0, "GameActivity"

    const-string v1, "SDK: onStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v0, Lcom/rockstargames/gtalcs/RockstarJNIlib;->INSTANCE:Lcom/rockstargames/gtalcs/RockstarJNIlib;

    invoke-static {}, Lrockstarmobile/Rockstar;->pauseGameplay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/RockstarJNIlib;->HandleStateChanged(Z)V

    return-void
.end method

.method private final onTicketReceived(Ljava/lang/String;)V
    .locals 2

    .line 218
    const-string v0, "GameActivity"

    const-string v1, "SDK: onTicketReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v0, Lcom/rockstargames/gtalcs/RockstarJNIlib;->INSTANCE:Lcom/rockstargames/gtalcs/RockstarJNIlib;

    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/RockstarJNIlib;->HandleTokenReceived(Ljava/lang/String;)V

    return-void
.end method

.method private final setupAssets()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;
    const/4 v2, 0x0
    const-string v3, "data_main"
    aput-object v3, v1, v2
    const/4 v2, 0x1
    const-string v3, "data_music"
    aput-object v3, v1, v2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setAssetPacksInfo([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private final setupDeviceInfo()V
    .locals 7

    .line 168
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.UiModeManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/UiModeManager;

    .line 169
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/rockstargames/gtalcs/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/os/Vibrator;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v5}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 177
    const-string v5, "Failed to read cpufreq"

    check-cast v4, Ljava/lang/Throwable;

    const-string v6, "GameActivity"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 181
    :goto_0
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setIsTVDevice(Z)V

    .line 182
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    invoke-static {v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setHasVibrator(Z)V

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setOSVersion(I)V

    .line 184
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v4, v0, v1, v2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setDeviceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setupRockstar()V
    .locals 3

    .line 199
    const-string v0, "GameActivity"

    const-string v1, "SDK setup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/rockstargames/gtalcs/GameActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/GameActivity$$ExternalSyntheticLambda0;-><init>(Lcom/rockstargames/gtalcs/GameActivity;)V

    new-instance v2, Lcom/rockstargames/gtalcs/GameActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/rockstargames/gtalcs/GameActivity$$ExternalSyntheticLambda1;-><init>(Lcom/rockstargames/gtalcs/GameActivity;)V

    invoke-static {v0, v1, v2}, Lrockstarmobile/Rockstar;->setup(Landroid/app/Activity;Lrockstarmobile/Rockstar$StateCallback;Lrockstarmobile/Rockstar$GameTicketCallback;)V

    .line 202
    invoke-static {}, Lrockstarmobile/Rockstar;->socialClubEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lrockstarmobile/Rockstar;->rockstarUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->initCloud(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setupView()V
    .locals 3

    .line 157
    sget v0, Lcom/rockstargames/gtalcs/R$layout;->game:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameActivity;->setContentView(I)V

    .line 159
    sget v0, Lcom/rockstargames/gtalcs/R$id;->viewGame:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/rockstargames/gtalcs/GameView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->gameView:Lcom/rockstargames/gtalcs/GameView;

    .line 160
    new-instance v0, Lcom/rockstargames/gtalcs/LoadingScreen;

    sget v2, Lcom/rockstargames/gtalcs/R$id;->viewLoading:I

    invoke-virtual {p0, v2}, Lcom/rockstargames/gtalcs/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, v2}, Lcom/rockstargames/gtalcs/LoadingScreen;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->loadingScreen:Lcom/rockstargames/gtalcs/LoadingScreen;

    .line 162
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->gameView:Lcom/rockstargames/gtalcs/GameView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "gameView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/rockstargames/gtalcs/GameView;->setHasFocus(Z)V

    .line 163
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->loadingScreen:Lcom/rockstargames/gtalcs/LoadingScreen;

    if-nez v0, :cond_1

    const-string v0, "loadingScreen"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/rockstargames/gtalcs/LoadingScreen;->hide()V

    return-void
.end method


# virtual methods
.method public final hideLoadingScreen()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->loadingScreen:Lcom/rockstargames/gtalcs/LoadingScreen;

    if-nez v0, :cond_0

    const-string v0, "loadingScreen"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/LoadingScreen;->hide()V

    return-void
.end method

.method public final isMoviePlaying()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->isMoviePlaying:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    const-string p2, "sensor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[!!] onConfigurationChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const-string p1, "sensor"

    invoke-virtual {p0, p1}, Lcom/rockstargames/gtalcs/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/rockstargames/gtalcs/GameActivity;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    .line 97
    const-string v1, "sensorManager"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/rockstargames/gtalcs/GameActivity;->accelerometer:Landroid/hardware/Sensor;

    .line 98
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/rockstargames/gtalcs/GameActivity;->displayRotation:I

    .line 100
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/GameActivity;->hideSystemUI()V

    .line 101
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/rockstargames/hal/ActivityWrapper;->setActivity(Landroid/app/Activity;)V

    .line 102
    sget-object p1, Lcom/rockstargames/gtalcs/CommonAPI;->INSTANCE:Lcom/rockstargames/gtalcs/CommonAPI;

    invoke-virtual {p1, p0}, Lcom/rockstargames/gtalcs/CommonAPI;->setM_mainActivity(Lcom/rockstargames/gtalcs/GameActivity;)V

    .line 104
    iget-object p1, p0, Lcom/rockstargames/gtalcs/GameActivity;->accelerometer:Landroid/hardware/Sensor;

    if-eqz p1, :cond_2

    .line 106
    iget-object p1, p0, Lcom/rockstargames/gtalcs/GameActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    move-object p1, p0

    check-cast p1, Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/rockstargames/gtalcs/GameActivity;->accelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setAssetManager(Landroid/content/res/AssetManager;)V

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setPrivateFilesDir(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_3

    .line 114
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/GameActivity;->setupAssets()V

    .line 115
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/GameActivity;->setupRockstar()V

    .line 117
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->markInitialized()V

    .line 120
    :cond_3
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/GameActivity;->setupView()V

    .line 121
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/GameActivity;->setupDeviceInfo()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 128
    const-string v0, "GameActivity"

    const-string v1, "[!!] onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensorManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 224
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 226
    const-string v0, "GameActivity"

    const-string v1, "[!!] onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->gameView:Lcom/rockstargames/gtalcs/GameView;

    if-nez v0, :cond_0

    const-string v0, "gameView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GameView;->onPause()V

    .line 229
    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->PlaylistOnActivityPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 234
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 236
    const-string v0, "GameActivity"

    const-string v1, "[!!] onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->gameView:Lcom/rockstargames/gtalcs/GameView;

    if-nez v0, :cond_0

    const-string v0, "gameView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GameView;->onResume()V

    .line 239
    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->PlaylistOnActivityResume()V

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameActivity;->setMoviePlaying(Z)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 274
    :cond_0
    iget v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->displayRotation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    .line 292
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    .line 293
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v1

    .line 294
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    .line 286
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v1

    .line 287
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    .line 279
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    neg-float v1, v1

    .line 280
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    :goto_0
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    neg-float v1, v1

    .line 304
    :cond_3
    invoke-static {v0, v1, p1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setAccelerometer(FFF)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 246
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 248
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->gameView:Lcom/rockstargames/gtalcs/GameView;

    if-nez v0, :cond_0

    const-string v0, "gameView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/GameView;->setHasFocus(Z)V

    .line 250
    const-string v0, "GameActivity"

    if-eqz p1, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/GameActivity;->hideSystemUI()V

    .line 253
    const-string p1, "[!!] onWindowFocusChanged true"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameActivity;->onResume()V

    return-void

    .line 258
    :cond_1
    const-string p1, "[!!] onWindowFocusChanged false"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameActivity;->onPause()V

    return-void
.end method

.method public final setFrameRateLock(Z)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->gameView:Lcom/rockstargames/gtalcs/GameView;

    if-nez v0, :cond_0

    const-string v0, "gameView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/GameView;->setFrameRateLock(Z)V

    return-void
.end method

.method public final setInUI(Z)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->gameView:Lcom/rockstargames/gtalcs/GameView;

    if-nez v0, :cond_0

    const-string v0, "gameView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/GameView;->setInUI(Z)V

    return-void
.end method

.method public final setKeepScreenOn(Z)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->gameView:Lcom/rockstargames/gtalcs/GameView;

    if-nez v0, :cond_0

    const-string v0, "gameView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/GameView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public final setMoviePlaying(Z)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[!!] isMoviePlaying = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-boolean p1, p0, Lcom/rockstargames/gtalcs/GameActivity;->isMoviePlaying:Z

    return-void
.end method

.method public final showLoadingBar(F)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->loadingScreen:Lcom/rockstargames/gtalcs/LoadingScreen;

    if-nez v0, :cond_0

    const-string v0, "loadingScreen"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/LoadingScreen;->show(F)V

    return-void
.end method

.method public final showLoadingScreen()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameActivity;->loadingScreen:Lcom/rockstargames/gtalcs/LoadingScreen;

    if-nez v0, :cond_0

    const-string v0, "loadingScreen"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/LoadingScreen;->show()V

    return-void
.end method
