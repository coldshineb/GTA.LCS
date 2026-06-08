.class final Lcom/rockstargames/gtalcs/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    iput p1, p0, Lcom/rockstargames/gtalcs/e;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->a()Lcom/rockstargames/gtalcs/GTAActivityBase;

    move-result-object v0

    iget v1, p0, Lcom/rockstargames/gtalcs/e;->a:F

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->ShowLoadingBar(F)V

    return-void
.end method
