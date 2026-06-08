.class final Lcom/rockstargames/gtalcs/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:F

.field private synthetic b:I

.field private synthetic c:I


# direct methods
.method constructor <init>(FII)V
    .locals 0

    iput p1, p0, Lcom/rockstargames/gtalcs/f;->a:F

    iput p2, p0, Lcom/rockstargames/gtalcs/f;->b:I

    iput p3, p0, Lcom/rockstargames/gtalcs/f;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->a()Lcom/rockstargames/gtalcs/GTAActivityBase;

    move-result-object v0

    iget v1, p0, Lcom/rockstargames/gtalcs/f;->a:F

    iget v2, p0, Lcom/rockstargames/gtalcs/f;->b:I

    iget v3, p0, Lcom/rockstargames/gtalcs/f;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/rockstargames/gtalcs/GTAActivityBase;->ShowDownloadBar(FII)V

    return-void
.end method
