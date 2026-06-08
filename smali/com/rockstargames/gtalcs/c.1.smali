.class final Lcom/rockstargames/gtalcs/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rockstargames/gtalcs/c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->a()Lcom/rockstargames/gtalcs/GTAActivityBase;

    move-result-object v0

    iget-boolean v1, p0, Lcom/rockstargames/gtalcs/c;->a:Z

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->setInUI(Z)V

    return-void
.end method
