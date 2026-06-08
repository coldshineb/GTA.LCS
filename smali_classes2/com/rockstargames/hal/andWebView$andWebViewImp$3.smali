.class Lcom/rockstargames/hal/andWebView$andWebViewImp$3;
.super Landroid/webkit/WebChromeClient;
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

    .line 195
    iput-object p1, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp$3;->this$1:Lcom/rockstargames/hal/andWebView$andWebViewImp;

    iput-object p2, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp$3;->val$this$0:Lcom/rockstargames/hal/andWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    .line 198
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    const/4 p1, 0x0

    return p1
.end method
