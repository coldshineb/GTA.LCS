.class final Landroid/support/v7/internal/a/c;
.super Landroid/support/v4/view/aZ;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/a/b;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/a/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-direct {p0}, Landroid/support/v4/view/aZ;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->b(Landroid/support/v7/internal/a/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->b(Landroid/support/v7/internal/a/b;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/aa;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/aa;->b(Landroid/view/View;F)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->d(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->e(Landroid/support/v7/internal/a/b;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->d(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0, v3}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;Landroid/support/v7/internal/view/h;)Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    iget-object v1, v0, Landroid/support/v7/internal/a/b;->c:Landroid/support/v7/c/b;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/v7/internal/a/b;->c:Landroid/support/v7/c/b;

    iget-object v2, v0, Landroid/support/v7/internal/a/b;->b:Landroid/support/v7/c/a;

    invoke-interface {v1, v2}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;)V

    iput-object v3, v0, Landroid/support/v7/internal/a/b;->b:Landroid/support/v7/c/a;

    iput-object v3, v0, Landroid/support/v7/internal/a/b;->c:Landroid/support/v7/c/b;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->f(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->f(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/aa;->m(Landroid/view/View;)V

    :cond_3
    return-void
.end method
