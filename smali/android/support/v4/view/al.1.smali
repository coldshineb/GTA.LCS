.class Landroid/support/v4/view/al;
.super Landroid/support/v4/view/ak;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ak;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/bb;)Landroid/support/v4/view/bb;
    .locals 2

    instance-of v0, p2, Landroid/support/v4/view/bc;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/support/v4/view/bc;

    invoke-virtual {v0}, Landroid/support/v4/view/bc;->e()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eq v1, v0, :cond_0

    new-instance p2, Landroid/support/v4/view/bc;

    invoke-direct {p2, v1}, Landroid/support/v4/view/bc;-><init>(Landroid/view/WindowInsets;)V

    :cond_0
    return-object p2
.end method

.method public final a(Landroid/view/View;Landroid/support/v4/view/T;)V
    .locals 1

    new-instance v0, Landroid/support/v4/view/ao;

    invoke-direct {v0, p2}, Landroid/support/v4/view/ao;-><init>(Landroid/support/v4/view/T;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public final e(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public final n(Landroid/view/View;)F
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public final p(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    return-void
.end method
