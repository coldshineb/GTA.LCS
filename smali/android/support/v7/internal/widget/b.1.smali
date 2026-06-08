.class public final Landroid/support/v7/internal/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/aY;


# instance fields
.field a:I

.field private b:Z

.field private synthetic c:Landroid/support/v7/internal/widget/a;


# direct methods
.method protected constructor <init>(Landroid/support/v7/internal/widget/a;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/b;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/aL;I)Landroid/support/v7/internal/widget/b;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    iput-object p1, v0, Landroid/support/v7/internal/widget/a;->g:Landroid/support/v4/view/aL;

    iput p2, p0, Landroid/support/v7/internal/widget/b;->a:I

    return-object p0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/a;->setVisibility(I)V

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/b;->b:Z

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/b;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/internal/widget/a;->g:Landroid/support/v4/view/aL;

    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    iget v1, p0, Landroid/support/v7/internal/widget/b;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/a;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    iget-object v0, v0, Landroid/support/v7/internal/widget/a;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    iget-object v0, v0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->c:Landroid/support/v7/internal/widget/a;

    iget-object v0, v0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/internal/widget/b;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/b;->b:Z

    return-void
.end method
