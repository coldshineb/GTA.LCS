.class final Lcom/rockstargames/gtalcs/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/rockstargames/gtalcs/GTAGLview;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "kodiak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAGLview;->getNumberControllers()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAGLview;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBackPressed - ignore back button on this device (Kindle Fire phone) 0"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAGLview;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBackPressed - 1"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onBackButtonPressed()V

    goto :goto_0
.end method
