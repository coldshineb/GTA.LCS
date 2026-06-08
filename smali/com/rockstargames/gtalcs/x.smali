.class final Lcom/rockstargames/gtalcs/x;
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
    .locals 0

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->viewOnPause()V

    return-void
.end method
