.class public Lcom/rockstargames/hal/andWebView$andWebViewImp;
.super Landroid/webkit/WebView;
.source "andWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andWebViewImp"
.end annotation


# instance fields
.field loading:Z

.field originalAgentString:Ljava/lang/String;

.field parent:Lcom/rockstargames/hal/andWebView;

.field final synthetic this$0:Lcom/rockstargames/hal/andWebView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andWebView;Lcom/rockstargames/hal/andWebView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->this$0:Lcom/rockstargames/hal/andWebView;

    .line 144
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->loading:Z

    const/4 v1, 0x0

    .line 138
    iput-object v1, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->parent:Lcom/rockstargames/hal/andWebView;

    .line 139
    iput-object v1, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->originalAgentString:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->setId(I)V

    .line 146
    iput-object p2, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->parent:Lcom/rockstargames/hal/andWebView;

    .line 149
    new-instance p2, Lcom/rockstargames/hal/andWebView$andWebViewImp$1;

    invoke-direct {p2, p0, p1}, Lcom/rockstargames/hal/andWebView$andWebViewImp$1;-><init>(Lcom/rockstargames/hal/andWebView$andWebViewImp;Lcom/rockstargames/hal/andWebView;)V

    invoke-virtual {p0, p2}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 153
    new-instance p2, Lcom/rockstargames/hal/andWebView$andWebViewImp$2;

    invoke-direct {p2, p0, p1}, Lcom/rockstargames/hal/andWebView$andWebViewImp$2;-><init>(Lcom/rockstargames/hal/andWebView$andWebViewImp;Lcom/rockstargames/hal/andWebView;)V

    invoke-virtual {p0, p2}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 195
    new-instance p2, Lcom/rockstargames/hal/andWebView$andWebViewImp$3;

    invoke-direct {p2, p0, p1}, Lcom/rockstargames/hal/andWebView$andWebViewImp$3;-><init>(Lcom/rockstargames/hal/andWebView$andWebViewImp;Lcom/rockstargames/hal/andWebView;)V

    invoke-virtual {p0, p2}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 212
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/16 p1, 0x64

    .line 216
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->setInitialScale(I)V

    .line 217
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 227
    invoke-static {v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->setWebContentsDebuggingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addiFruitUserAgent()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->originalAgentString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->originalAgentString:Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->originalAgentString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iFruitUASS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canNavigateBack()Z
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canNavigateForward()Z
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public getWebView()Lcom/rockstargames/hal/andWebView;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->parent:Lcom/rockstargames/hal/andWebView;

    return-object v0
.end method

.method public navigateBack()V
    .locals 0

    .line 250
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->goBack()V

    return-void
.end method

.method public navigateForward()V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->goForward()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 242
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 244
    iget-object v0, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->loadUrl(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->parent:Lcom/rockstargames/hal/andWebView;

    iget v1, v0, Lcom/rockstargames/hal/andWebView;->handle:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andWebView;->onLoaded(I)V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 270
    invoke-virtual {p0}, Lcom/rockstargames/hal/andWebView$andWebViewImp;->reload()V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->url:Ljava/lang/String;

    return-void
.end method
