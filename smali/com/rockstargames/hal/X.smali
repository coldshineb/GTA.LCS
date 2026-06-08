.class public final Lcom/rockstargames/hal/X;
.super Landroid/webkit/WebView;


# instance fields
.field a:Lcom/rockstargames/hal/andWebView;

.field b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andWebView;Lcom/rockstargames/hal/andWebView;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rockstargames/hal/X;->a:Lcom/rockstargames/hal/andWebView;

    iput-object v1, p0, Lcom/rockstargames/hal/X;->b:Ljava/lang/String;

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/X;->setId(I)V

    iput-object p2, p0, Lcom/rockstargames/hal/X;->a:Lcom/rockstargames/hal/andWebView;

    new-instance v0, Lcom/rockstargames/hal/Y;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/Y;-><init>(Lcom/rockstargames/hal/X;Lcom/rockstargames/hal/andWebView;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/X;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/rockstargames/hal/Z;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/Z;-><init>(Lcom/rockstargames/hal/X;Lcom/rockstargames/hal/andWebView;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/X;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/rockstargames/hal/aa;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/aa;-><init>(Lcom/rockstargames/hal/X;Lcom/rockstargames/hal/andWebView;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/X;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/X;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/X;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/X;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/X;->setInitialScale(I)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/X;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/X;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/X;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/X;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myAppCache"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/X;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {v3}, Lcom/rockstargames/hal/X;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getWebView()Lcom/rockstargames/hal/andWebView;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/X;->a:Lcom/rockstargames/hal/andWebView;

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/rockstargames/hal/X;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/X;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rockstargames/hal/X;->a:Lcom/rockstargames/hal/andWebView;

    iget-object v1, p0, Lcom/rockstargames/hal/X;->a:Lcom/rockstargames/hal/andWebView;

    iget v1, v1, Lcom/rockstargames/hal/andWebView;->handle:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andWebView;->onLoaded(I)V

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/X;->c:Ljava/lang/String;

    return-void
.end method
