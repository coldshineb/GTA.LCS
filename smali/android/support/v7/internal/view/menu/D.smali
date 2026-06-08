.class final Landroid/support/v7/internal/view/menu/D;
.super Landroid/support/v7/internal/view/menu/B;

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/c/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/B;-><init>(Landroid/content/Context;Landroid/support/v4/c/a/a;)V

    return-void
.end method


# virtual methods
.method public final clearHeader()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/D;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/c;

    invoke-interface {v0}, Landroid/support/v4/c/a/c;->clearHeader()V

    return-void
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/D;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/c;

    invoke-interface {v0}, Landroid/support/v4/c/a/c;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/D;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/D;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/D;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/D;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/D;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/D;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/D;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/D;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/c/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/c/a/c;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
