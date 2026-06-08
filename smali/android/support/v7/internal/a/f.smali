.class public final Landroid/support/v7/internal/a/f;
.super Landroid/support/v7/c/a;

# interfaces
.implements Landroid/support/v7/internal/view/menu/j;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v7/internal/view/menu/i;

.field private c:Landroid/support/v7/c/b;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic e:Landroid/support/v7/internal/a/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/a/b;Landroid/content/Context;Landroid/support/v7/c/b;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-direct {p0}, Landroid/support/v7/c/a;-><init>()V

    iput-object p2, p0, Landroid/support/v7/internal/a/f;->a:Landroid/content/Context;

    iput-object p3, p0, Landroid/support/v7/internal/a/f;->c:Landroid/support/v7/c/b;

    new-instance v0, Landroid/support/v7/internal/view/menu/i;

    invoke-direct {v0, p2}, Landroid/support/v7/internal/view/menu/i;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->a(I)Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/a/f;->b:Landroid/support/v7/internal/view/menu/i;

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->b:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/j;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroid/support/v7/internal/view/e;

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->k(Landroid/support/v7/internal/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/f;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->c:Landroid/support/v7/c/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/a/f;->d()V

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a()Z

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/f;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/c/a;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->c:Landroid/support/v7/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->c:Landroid/support/v7/c/b;

    invoke-interface {v0, p0, p2}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->b:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->k(Landroid/support/v7/internal/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/f;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    iget-object v0, v0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/f;

    if-eq v0, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->g(Landroid/support/v7/internal/a/b;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v1}, Landroid/support/v7/internal/a/b;->h(Landroid/support/v7/internal/a/b;)Z

    move-result v1

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/a/b;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    iput-object p0, v0, Landroid/support/v7/internal/a/b;->b:Landroid/support/v7/c/a;

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->c:Landroid/support/v7/c/b;

    iput-object v1, v0, Landroid/support/v7/internal/a/b;->c:Landroid/support/v7/c/b;

    :goto_1
    iput-object v3, p0, Landroid/support/v7/internal/a/f;->c:Landroid/support/v7/c/b;

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/a/b;->e(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->b()V

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/A;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/A;->a()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->f(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    iget-boolean v1, v1, Landroid/support/v7/internal/a/b;->d:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    iput-object v3, v0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/f;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->c:Landroid/support/v7/c/b;

    invoke-interface {v0, p0}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;)V

    goto :goto_1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    iget-object v0, v0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/f;

    if-eq v0, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->b:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->f()V

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->c:Landroid/support/v7/c/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->b:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/c/b;->b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->b:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->g()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->b:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->g()V

    throw v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->b:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->f()V

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->c:Landroid/support/v7/c/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->b:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->b:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->g()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->b:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->g()V

    throw v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->d()Z

    move-result v0

    return v0
.end method

.method public final i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
