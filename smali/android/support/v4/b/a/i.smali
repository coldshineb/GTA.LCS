.class Landroid/support/v4/b/a/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b/a/j;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b/a/j;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/j;->setTint(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b/a/j;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b/a/j;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/j;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b/a/j;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b/a/j;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/j;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
