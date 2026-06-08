.class final Lcom/rockstargames/gtalcs/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:F

.field private synthetic c:F


# direct methods
.method constructor <init>(Lcom/rockstargames/gtalcs/GTAGLview;IFF)V
    .locals 0

    iput p2, p0, Lcom/rockstargames/gtalcs/q;->a:I

    iput p3, p0, Lcom/rockstargames/gtalcs/q;->b:F

    iput p4, p0, Lcom/rockstargames/gtalcs/q;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/rockstargames/gtalcs/q;->a:I

    iget v1, p0, Lcom/rockstargames/gtalcs/q;->b:F

    iget v2, p0, Lcom/rockstargames/gtalcs/q;->c:F

    invoke-static {v0, v1, v2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onTouchMove(IFF)V

    return-void
.end method
