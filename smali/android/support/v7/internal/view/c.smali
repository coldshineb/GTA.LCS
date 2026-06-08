.class public final Landroid/support/v7/internal/view/c;
.super Landroid/view/ActionMode;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field final a:Landroid/support/v7/c/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/c/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Landroid/support/v7/internal/view/c;->b:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->c()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 2

    iget-object v1, p0, Landroid/support/v7/internal/view/c;->b:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->b()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/a/a;

    invoke-static {v1, v0}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/content/Context;Landroid/support/v4/c/a/a;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->a()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->j()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->k()Z

    move-result v0

    return v0
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->d()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->h()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->b(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->a(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->a(Z)V

    return-void
.end method
