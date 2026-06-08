.class final Landroid/support/v7/internal/widget/L;
.super Landroid/support/v7/widget/D;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/P;

.field private synthetic b:Landroid/support/v7/internal/widget/SpinnerCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Landroid/support/v7/internal/widget/P;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/L;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    iput-object p3, p0, Landroid/support/v7/internal/widget/L;->a:Landroid/support/v7/internal/widget/P;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/D;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/z;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/L;->a:Landroid/support/v7/internal/widget/P;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/L;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/S;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/S;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/L;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/S;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/S;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
