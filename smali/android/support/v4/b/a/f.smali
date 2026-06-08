.class Landroid/support/v4/b/a/f;
.super Landroid/support/v4/b/a/e;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/b/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;FF)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/b/a/n;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/support/v4/b/a/i;->a(Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/b/a/n;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/support/v4/b/a/i;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/b/a/n;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/support/v4/b/a/i;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/support/v4/b/a/n;

    invoke-direct {v0, p1}, Landroid/support/v4/b/a/n;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    :cond_1
    return-object p1
.end method
