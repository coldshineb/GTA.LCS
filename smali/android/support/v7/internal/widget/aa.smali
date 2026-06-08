.class final Landroid/support/v7/internal/widget/aa;
.super Landroid/support/v4/view/aZ;


# instance fields
.field private a:Z

.field private synthetic b:Landroid/support/v7/internal/widget/Y;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/Y;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->b:Landroid/support/v7/internal/widget/Y;

    invoke-direct {p0}, Landroid/support/v4/view/aZ;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->a:Z

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->b:Landroid/support/v7/internal/widget/Y;

    invoke-static {v0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/support/v7/internal/widget/Y;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->a:Z

    return-void
.end method
