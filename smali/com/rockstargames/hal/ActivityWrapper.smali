.class public Lcom/rockstargames/hal/ActivityWrapper;
.super Ljava/lang/Object;


# static fields
.field private static applicationContext:Landroid/content/Context;

.field private static atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

.field private static instance:Lcom/rockstargames/hal/ActivityWrapper;

.field private static layout:Lcom/rockstargames/hal/ContainerLayout;

.field private static linkedAccountResult:Ljava/lang/String;

.field private static mainActivity:Landroid/app/Activity;

.field private static scale:F

.field private static transitioning:Z

.field private static windowHeight:I

.field private static windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/hal/ActivityWrapper;->transitioning:Z

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/rockstargames/hal/ActivityWrapper;->scale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsDeviceAndroidTV()Z
    .locals 2

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SetLinkedAccountResult(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/rockstargames/hal/ActivityWrapper;->linkedAccountResult:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/ActivityWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/rockstargames/hal/ActivityWrapper;->runUpdateCallback()V

    return-void
.end method

.method public static addUpdateCallback()V
    .locals 4

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/rockstargames/hal/b;

    invoke-direct {v1}, Lcom/rockstargames/hal/b;-><init>()V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getFreeMemoryBytes()J
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/rockstargames/hal/ActivityWrapper;
    .locals 1

    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->instance:Lcom/rockstargames/hal/ActivityWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/rockstargames/hal/ActivityWrapper;

    invoke-direct {v0}, Lcom/rockstargames/hal/ActivityWrapper;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/ActivityWrapper;->instance:Lcom/rockstargames/hal/ActivityWrapper;

    :cond_0
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->instance:Lcom/rockstargames/hal/ActivityWrapper;

    return-object v0
.end method

.method public static getLayout()Landroid/view/ViewGroup;
    .locals 1

    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->layout:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method public static getManagedStaticCounts()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapStats()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->getStaticCounts()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScale()F
    .locals 1

    sget v0, Lcom/rockstargames/hal/ActivityWrapper;->scale:F

    return v0
.end method

.method public static getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;
    .locals 1

    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

    return-object v0
.end method

.method public static getTotalMemoryBytes()J
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTransitioning()Z
    .locals 1

    sget-boolean v0, Lcom/rockstargames/hal/ActivityWrapper;->transitioning:Z

    return v0
.end method

.method public static getUsedMemoryBytes()J
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    const-string v0, "nope"

    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getWindowHeight()I
    .locals 1

    sget v0, Lcom/rockstargames/hal/ActivityWrapper;->windowHeight:I

    return v0
.end method

.method public static getWindowWidth()I
    .locals 1

    sget v0, Lcom/rockstargames/hal/ActivityWrapper;->windowWidth:I

    return v0
.end method

.method public static handleException(Ljava/lang/Exception;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/rockstargames/hal/a;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/a;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ActivityWrapper"

    const-string v2, "Unable to report error as toast!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method private native main()V
.end method

.method public static onDestroyCallback()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/rockstargames/hal/ActivityWrapper;->atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

    return-void
.end method

.method private native onPauseApp()V
.end method

.method public static onPauseCallback()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/rockstargames/hal/andAudio;->MuteAllAudio(Z)V

    invoke-static {}, Lcom/rockstargames/hal/andVideo;->Suspend()V

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    invoke-direct {v0}, Lcom/rockstargames/hal/ActivityWrapper;->onPauseApp()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/rockstargames/hal/andThread;->setRunning(Z)V

    return-void
.end method

.method public static onRestartCallback()V
    .locals 1

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    invoke-direct {v0}, Lcom/rockstargames/hal/ActivityWrapper;->onStartApp()V

    return-void
.end method

.method private native onResumeApp(Ljava/lang/String;)V
.end method

.method public static onResumeCallback()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/rockstargames/hal/andAudio;->MuteAllAudio(Z)V

    invoke-static {}, Lcom/rockstargames/hal/andVideo;->Resume()V

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    sget-object v1, Lcom/rockstargames/hal/ActivityWrapper;->linkedAccountResult:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/rockstargames/hal/ActivityWrapper;->onResumeApp(Ljava/lang/String;)V

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->invalidateHierarchy()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/rockstargames/hal/andThread;->setRunning(Z)V

    return-void
.end method

.method private native onStartApp()V
.end method

.method public static onStartCallback()V
    .locals 1

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    invoke-direct {v0}, Lcom/rockstargames/hal/ActivityWrapper;->onStartApp()V

    return-void
.end method

.method public static onStopCallback()V
    .locals 0

    return-void
.end method

.method public static runMain(II)V
    .locals 5

    if-ge p0, p1, :cond_0

    move v0, p0

    move v1, p1

    :goto_0
    sput v1, Lcom/rockstargames/hal/ActivityWrapper;->windowWidth:I

    sput v0, Lcom/rockstargames/hal/ActivityWrapper;->windowHeight:I

    const-string v2, "HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using window size of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/rockstargames/hal/ActivityWrapper;->windowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/rockstargames/hal/ActivityWrapper;->windowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v2

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->setupLocale()V

    invoke-static {}, Lcom/rockstargames/hal/andWebView;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/rockstargames/hal/ActivityWrapper;->setUserAgent(Ljava/lang/String;)V

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/rockstargames/hal/ActivityWrapper;->setVersionNumber(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0}, Lcom/rockstargames/hal/ActivityWrapper;->setCurrentScreenSize(II)V

    invoke-direct {v2}, Lcom/rockstargames/hal/ActivityWrapper;->main()V

    return-void

    :cond_0
    move v0, p1

    move v1, p0

    goto :goto_0
.end method

.method private native runUpdateCallback()V
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 4

    sput-object p0, Lcom/rockstargames/hal/ActivityWrapper;->mainActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/rockstargames/hal/ActivityWrapper;->applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/rockstargames/hal/ContainerLayout;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/rockstargames/hal/ActivityWrapper;->layout:Lcom/rockstargames/hal/ContainerLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->setBackgroundColor(I)V

    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->layout:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/rockstargames/hal/andSecureData;->Init(Landroid/content/Context;)V

    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x32

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-instance v1, Lcom/rockstargames/hal/TextureAtlasCache;

    invoke-direct {v1, v0}, Lcom/rockstargames/hal/TextureAtlasCache;-><init>(I)V

    sput-object v1, Lcom/rockstargames/hal/ActivityWrapper;->atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

    :cond_0
    return-void
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/rockstargames/hal/ActivityWrapper;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method private native setLanguage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static setTransitioning(Z)V
    .locals 0

    sput-boolean p0, Lcom/rockstargames/hal/ActivityWrapper;->transitioning:Z

    return-void
.end method

.method private native setUserAgent(Ljava/lang/String;)V
.end method

.method private native setVersionNumber(Ljava/lang/String;)V
.end method

.method public static setupLocale()V
    .locals 3

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getInstance()Lcom/rockstargames/hal/ActivityWrapper;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/rockstargames/hal/ActivityWrapper;->setLanguage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showToast(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public native PressSelectedItem()V
.end method

.method public native SelectNextItem(ZZZZ)V
.end method

.method public native getLocalisedString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native onBackPressed()V
.end method

.method public native setCurrentScreenSize(II)V
.end method
