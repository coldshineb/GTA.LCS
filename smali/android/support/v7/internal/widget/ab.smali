.class final Landroid/support/v7/internal/widget/ab;
.super Landroid/support/v4/view/aZ;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/Y;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/Y;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/support/v7/internal/widget/Y;

    invoke-direct {p0}, Landroid/support/v4/view/aZ;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/support/v7/internal/widget/Y;

    invoke-static {v0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/support/v7/internal/widget/Y;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void
.end method
