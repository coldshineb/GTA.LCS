.class final Landroid/support/v7/widget/b;
.super Landroid/support/v7/internal/view/menu/v;


# instance fields
.field private synthetic c:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/C;)V
    .locals 6

    const/4 v4, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v3, 0x0

    const v5, 0x7f010011

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZI)V

    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/C;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->d(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->e(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/b;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->e:Landroid/support/v7/widget/a;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/b;->a(Landroid/support/v7/internal/view/menu/y;)V

    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/C;->size()I

    move-result v1

    move v0, v4

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p3, v0}, Landroid/support/v7/internal/view/menu/C;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/b;->a(Z)V

    return-void

    :cond_2
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->d(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/internal/view/menu/v;->onDismiss()V

    iget-object v0, p0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/b;)Landroid/support/v7/widget/b;

    return-void
.end method
