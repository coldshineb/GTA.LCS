.class public Lcom/rockstargames/hal/andWebView;
.super Lcom/rockstargames/hal/andView;


# static fields
.field static staticCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andWebView;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    new-instance v0, Lcom/rockstargames/hal/X;

    invoke-direct {v0, p0, p0}, Lcom/rockstargames/hal/X;-><init>(Lcom/rockstargames/hal/andWebView;Lcom/rockstargames/hal/andWebView;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andWebView;->setView(Landroid/view/View;)V

    sget v0, Lcom/rockstargames/hal/andWebView;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andWebView;->staticCount:I

    return-void
.end method

.method public static clearCookies()V
    .locals 1

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andWebView;
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/andWebView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andWebView;-><init>(I)V

    return-object v0
.end method

.method private getImpl()Lcom/rockstargames/hal/X;
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/X;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/webkit/WebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method


# virtual methods
.method public addiFruitUserAgentString()V
    .locals 3

    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/X;

    move-result-object v0

    iget-object v1, v0, Lcom/rockstargames/hal/X;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/rockstargames/hal/X;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rockstargames/hal/X;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/rockstargames/hal/X;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/rockstargames/hal/X;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " iFruitUASS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canNavigateBack()Z
    .locals 1

    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/X;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canNavigateForward()Z
    .locals 1

    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/X;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/X;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/X;->loadUrl(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/X;->onPause()V

    return-void
.end method

.method protected finalize()V
    .locals 1

    sget v0, Lcom/rockstargames/hal/andWebView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andWebView;->staticCount:I

    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method public navigateBack()V
    .locals 1

    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/X;->goBack()V

    return-void
.end method

.method public navigateForward()V
    .locals 1

    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/X;->goForward()V

    return-void
.end method

.method public native onLoaded(I)V
.end method

.method public refresh()V
    .locals 1

    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/X;->reload()V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/X;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/X;->setUrl(Ljava/lang/String;)V

    return-void
.end method
