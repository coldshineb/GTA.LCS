.class public Lcom/rockstargames/hal/ActivityWrapper;
.super Ljava/lang/Object;
.source "ActivityWrapper.java"


# static fields
.field private static applicationContext:Landroid/content/Context; = null

.field private static atlasCache:Lcom/rockstargames/hal/TextureAtlasCache; = null

.field private static instance:Lcom/rockstargames/hal/ActivityWrapper; = null

.field private static layout:Lcom/rockstargames/hal/ContainerLayout; = null

.field private static linkedAccountResult:Ljava/lang/String; = null

.field private static mainActivity:Landroid/app/Activity; = null

.field private static scale:F = 1.0f

.field private static transitioning:Z

.field private static windowHeight:I

.field private static windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsDeviceAndroidTV()Z
    .locals 2

    .line 204
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 206
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static SetLinkedAccountResult(Ljava/lang/String;)V
    .locals 0

    .line 199
    sput-object p0, Lcom/rockstargames/hal/ActivityWrapper;->linkedAccountResult:Ljava/lang/String;

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .line 22
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 55
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getFreeMemoryBytes()J
    .locals 2

    .line 168
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/rockstargames/hal/ActivityWrapper;
    .locals 1

    .line 36
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->instance:Lcom/rockstargames/hal/ActivityWrapper;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/rockstargames/hal/ActivityWrapper;

    invoke-direct {v0}, Lcom/rockstargames/hal/ActivityWrapper;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/ActivityWrapper;->instance:Lcom/rockstargames/hal/ActivityWrapper;

    .line 41
    :cond_0
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->instance:Lcom/rockstargames/hal/ActivityWrapper;

    return-object v0
.end method

.method public static getLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 29
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->layout:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method public static getManagedStaticCounts()Ljava/lang/String;
    .locals 2

    .line 178
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

    .line 221
    sget v0, Lcom/rockstargames/hal/ActivityWrapper;->scale:F

    return v0
.end method

.method public static getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;
    .locals 1

    .line 48
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

    return-object v0
.end method

.method public static getTotalMemoryBytes()J
    .locals 2

    .line 158
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTransitioning()Z
    .locals 1

    .line 135
    sget-boolean v0, Lcom/rockstargames/hal/ActivityWrapper;->transitioning:Z

    return v0
.end method

.method public static getUsedMemoryBytes()J
    .locals 2

    .line 163
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 3

    .line 148
    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 153
    :catch_0
    const-string v0, "nope"

    return-object v0
.end method

.method public static getWindowHeight()I
    .locals 1

    .line 231
    sget v0, Lcom/rockstargames/hal/ActivityWrapper;->windowHeight:I

    return v0
.end method

.method public static getWindowWidth()I
    .locals 1

    .line 226
    sget v0, Lcom/rockstargames/hal/ActivityWrapper;->windowWidth:I

    return v0
.end method

.method public static handleException(Ljava/lang/Exception;)V
    .locals 2

    .line 107
    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/rockstargames/hal/ActivityWrapper$1;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/ActivityWrapper$1;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 127
    const-string v0, "ActivityWrapper"

    const-string v1, "Unable to report error as toast!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static onDestroyCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 194
    sput-object v0, Lcom/rockstargames/hal/ActivityWrapper;->atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

    return-void
.end method

.method public static onStopCallback()V
    .locals 0

    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 4

    .line 60
    sput-object p0, Lcom/rockstargames/hal/ActivityWrapper;->mainActivity:Landroid/app/Activity;

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/rockstargames/hal/ActivityWrapper;->applicationContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/rockstargames/hal/ContainerLayout;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/rockstargames/hal/ActivityWrapper;->layout:Lcom/rockstargames/hal/ContainerLayout;

    const/high16 v1, -0x1000000

    .line 66
    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->setBackgroundColor(I)V

    .line 68
    sget-object v0, Lcom/rockstargames/hal/ActivityWrapper;->layout:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 70
    invoke-static {p0}, Lcom/rockstargames/hal/andSecureData;->Init(Landroid/content/Context;)V

    .line 84
    sget-object p0, Lcom/rockstargames/hal/ActivityWrapper;->atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

    if-nez p0, :cond_0

    .line 86
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x32

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    long-to-int p0, v0

    .line 87
    new-instance v0, Lcom/rockstargames/hal/TextureAtlasCache;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/TextureAtlasCache;-><init>(I)V

    sput-object v0, Lcom/rockstargames/hal/ActivityWrapper;->atlasCache:Lcom/rockstargames/hal/TextureAtlasCache;

    .line 92
    :try_start_0
    new-array p0, p0, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 96
    :catch_0
    const-string p0, "ActivityWrapper"

    const-string v0, "Running low on memory!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setTransitioning(Z)V
    .locals 0

    .line 140
    sput-boolean p0, Lcom/rockstargames/hal/ActivityWrapper;->transitioning:Z

    return-void
.end method
