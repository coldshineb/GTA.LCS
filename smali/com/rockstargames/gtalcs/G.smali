.class final Lcom/rockstargames/gtalcs/G;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/rockstargames/gtalcs/MovieActivity;


# direct methods
.method constructor <init>(Lcom/rockstargames/gtalcs/MovieActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/gtalcs/G;->a:Lcom/rockstargames/gtalcs/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq v0, p2, :cond_0

    const/16 v0, 0x18

    if-ne v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/gtalcs/G;->a:Lcom/rockstargames/gtalcs/MovieActivity;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/MovieActivity;->hideSystemUI()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/rockstargames/gtalcs/G;->a:Lcom/rockstargames/gtalcs/MovieActivity;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/MovieActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0
.end method
