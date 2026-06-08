.class Landroid/support/v7/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/internal/view/menu/y;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/a;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/a;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 2

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/C;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/view/menu/C;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/C;->n()Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->a(Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a()Landroid/support/v7/internal/view/menu/y;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/y;->a(Landroid/support/v7/internal/view/menu/i;Z)V

    :cond_1
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/view/menu/C;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/C;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    iget-object v0, p0, Landroid/support/v7/widget/a;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a()Landroid/support/v7/internal/view/menu/y;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/y;->a(Landroid/support/v7/internal/view/menu/i;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
