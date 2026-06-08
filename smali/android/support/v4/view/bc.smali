.class final Landroid/support/v4/view/bc;
.super Landroid/support/v4/view/bb;


# instance fields
.field private final a:Landroid/view/WindowInsets;


# direct methods
.method constructor <init>(Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/bb;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/bc;->a:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/bc;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    return v0
.end method

.method public final a(IIII)Landroid/support/v4/view/bb;
    .locals 2

    new-instance v0, Landroid/support/v4/view/bc;

    iget-object v1, p0, Landroid/support/v4/view/bc;->a:Landroid/view/WindowInsets;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/bc;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/bc;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/bc;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/bc;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    return v0
.end method

.method final e()Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/bc;->a:Landroid/view/WindowInsets;

    return-object v0
.end method
