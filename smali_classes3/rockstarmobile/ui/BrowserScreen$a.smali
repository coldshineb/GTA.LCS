.class Lrockstarmobile/ui/BrowserScreen$a;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/ui/BrowserScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrockstarmobile/ui/BrowserScreen$c;

.field final synthetic b:Lrockstarmobile/ui/BrowserScreen;


# direct methods
.method constructor <init>(Lrockstarmobile/ui/BrowserScreen;Lrockstarmobile/ui/BrowserScreen$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    iput-object p2, p0, Lrockstarmobile/ui/BrowserScreen$a;->a:Lrockstarmobile/ui/BrowserScreen$c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    invoke-static {v0}, Lrockstarmobile/ui/BrowserScreen;->access$200(Lrockstarmobile/ui/BrowserScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    invoke-static {v0}, Lrockstarmobile/ui/BrowserScreen;->access$300(Lrockstarmobile/ui/BrowserScreen;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lrockstarmobile/sdk/R$id;->errorTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "ANDROID_WEBVIEW_ERROR_TITLE"

    const-string v4, "Error"

    invoke-static {v3, v4, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    invoke-static {v0}, Lrockstarmobile/ui/BrowserScreen;->access$300(Lrockstarmobile/ui/BrowserScreen;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v2, Lrockstarmobile/sdk/R$id;->errorMessage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ANDROID_WEBVIEW_ERROR_MESSAGE"

    const-string v3, "There was an error connecting to the server. Please try again later."

    invoke-static {v2, v3, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lrockstarmobile/ui/BrowserScreen;->access$402(Lrockstarmobile/ui/BrowserScreen;Z)Z

    .line 5
    iget-object v2, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lrockstarmobile/ui/BrowserScreen;->access$500(Lrockstarmobile/ui/BrowserScreen;ZZZZZZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    invoke-static {v0}, Lrockstarmobile/ui/BrowserScreen;->access$400(Lrockstarmobile/ui/BrowserScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lrockstarmobile/ui/BrowserScreen;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished for url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    invoke-static {v0}, Lrockstarmobile/ui/BrowserScreen;->access$700(Lrockstarmobile/ui/BrowserScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    invoke-static {v1}, Lrockstarmobile/ui/BrowserScreen;->access$600(Lrockstarmobile/ui/BrowserScreen;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    invoke-static {v0}, Lrockstarmobile/ui/BrowserScreen;->access$600(Lrockstarmobile/ui/BrowserScreen;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 5
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lrockstarmobile/ui/BrowserScreen;->access$202(Lrockstarmobile/ui/BrowserScreen;Z)Z

    .line 6
    iget-object v2, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    invoke-static {v2}, Lrockstarmobile/ui/BrowserScreen;->access$600(Lrockstarmobile/ui/BrowserScreen;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v6

    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    invoke-static {v0}, Lrockstarmobile/ui/BrowserScreen;->access$600(Lrockstarmobile/ui/BrowserScreen;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v2 .. v9}, Lrockstarmobile/ui/BrowserScreen;->access$500(Lrockstarmobile/ui/BrowserScreen;ZZZZZZZ)V

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lrockstarmobile/ui/BrowserScreen;->access$500(Lrockstarmobile/ui/BrowserScreen;ZZZZZZZ)V

    .line 2
    invoke-static {}, Lrockstarmobile/ui/BrowserScreen;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted for url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lrockstarmobile/ui/BrowserScreen;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onReceivedError for url "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lrockstarmobile/ui/BrowserScreen$a;->a()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 3
    invoke-static {}, Lrockstarmobile/ui/BrowserScreen;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onReceivedError "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lrockstarmobile/ui/BrowserScreen$a;->a()V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->isDevelopmentMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lrockstarmobile/ui/BrowserScreen;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldOverrideUrlLoading: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gateway"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lrockstarmobile/ui/BrowserScreen$a;->a:Lrockstarmobile/ui/BrowserScreen$c;

    iget-object v2, v2, Lrockstarmobile/ui/BrowserScreen$c;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lrockstarmobile/ui/BrowserScreen$a;->b:Lrockstarmobile/ui/BrowserScreen;

    invoke-virtual {p1}, Lrockstarmobile/ui/BrowserScreen;->close()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
