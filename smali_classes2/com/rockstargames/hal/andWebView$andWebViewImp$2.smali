.class Lcom/rockstargames/hal/andWebView$andWebViewImp$2;
.super Landroid/webkit/WebViewClient;
.source "andWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andWebView$andWebViewImp;-><init>(Lcom/rockstargames/hal/andWebView;Lcom/rockstargames/hal/andWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockstargames/hal/andWebView$andWebViewImp;

.field final synthetic val$this$0:Lcom/rockstargames/hal/andWebView;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/andWebView$andWebViewImp;Lcom/rockstargames/hal/andWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp$2;->this$1:Lcom/rockstargames/hal/andWebView$andWebViewImp;

    iput-object p2, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp$2;->val$this$0:Lcom/rockstargames/hal/andWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 179
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp$2;->this$1:Lcom/rockstargames/hal/andWebView$andWebViewImp;

    iget-object p1, p1, Lcom/rockstargames/hal/andWebView$andWebViewImp;->parent:Lcom/rockstargames/hal/andWebView;

    iget-object v0, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp$2;->this$1:Lcom/rockstargames/hal/andWebView$andWebViewImp;

    iget-object v0, v0, Lcom/rockstargames/hal/andWebView$andWebViewImp;->parent:Lcom/rockstargames/hal/andWebView;

    iget v0, v0, Lcom/rockstargames/hal/andWebView;->handle:I

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andWebView;->onLoaded(I)V

    .line 181
    iget-object p1, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp$2;->this$1:Lcom/rockstargames/hal/andWebView$andWebViewImp;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/rockstargames/hal/andWebView$andWebViewImp;->loading:Z

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Page finished: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "andWebView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 172
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Page started: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "andWebView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Received error "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "andWebView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
