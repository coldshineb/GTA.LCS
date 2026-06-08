.class final Lcom/rockstargames/gtalcs/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I


# direct methods
.method constructor <init>(Lcom/rockstargames/gtalcs/GTAGLview;I)V
    .locals 0

    iput p2, p0, Lcom/rockstargames/gtalcs/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/rockstargames/gtalcs/t;->a:I

    invoke-static {v0, v1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonDown(II)V

    return-void
.end method
