.class Lcom/rockstargames/hal/andWebView$andWebViewImp$1;
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

    .line 149
    iput-object p1, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp$1;->this$1:Lcom/rockstargames/hal/andWebView$andWebViewImp;

    iput-object p2, p0, Lcom/rockstargames/hal/andWebView$andWebViewImp$1;->val$this$0:Lcom/rockstargames/hal/andWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method
