.class final Lcom/rockstargames/hal/aa;
.super Landroid/webkit/WebChromeClient;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/X;Lcom/rockstargames/hal/andWebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    const/4 v0, 0x0

    return v0
.end method
