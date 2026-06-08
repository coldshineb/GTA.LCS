.class public Lcom/rockstargames/hal/andWebView;
.super Lcom/rockstargames/hal/andView;
.source "andWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andWebView$andWebViewImp;,
        Lcom/rockstargames/hal/andWebView$NewApiWrapper;
    }
.end annotation


# static fields
.field static staticCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 30
    new-instance p1, Lcom/rockstargames/hal/andWebView$andWebViewImp;

    invoke-direct {p1, p0, p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;-><init>(Lcom/rockstargames/hal/andWebView;Lcom/rockstargames/hal/andWebView;)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andWebView;->setView(Landroid/view/View;)V

    .line 32
    sget p1, Lcom/rockstargames/hal/andWebView;->staticCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/rockstargames/hal/andWebView;->staticCount:I

    return-void
.end method

.method public static clearCookies()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 79
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andWebView;
    .locals 1

    .line 118
    new-instance v0, Lcom/rockstargames/hal/andWebView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andWebView;-><init>(I)V

    return-object v0
.end method

.method private getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andWebView$andWebViewImp;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andWebView$NewApiWrapper;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addiFruitUserAgentString()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->addiFruitUserAgent()V

    return-void
.end method

.method public canNavigateBack()Z
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canNavigateForward()Z
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->loadUrl(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->onPause()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    sget v0, Lcom/rockstargames/hal/andWebView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andWebView;->staticCount:I

    .line 44
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method public navigateBack()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->goBack()V

    return-void
.end method

.method public navigateForward()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->goForward()V

    return-void
.end method

.method public native onLoaded(I)V
.end method

.method public refresh()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->reload()V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/rockstargames/hal/andWebView;->getImpl()Lcom/rockstargames/hal/andWebView$andWebViewImp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->setUrl(Ljava/lang/String;)V

    return-void
.end method
