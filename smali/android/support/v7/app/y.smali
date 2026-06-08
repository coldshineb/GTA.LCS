.class final Landroid/support/v7/app/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/c/b;


# instance fields
.field private a:Landroid/support/v7/c/b;

.field private synthetic b:Landroid/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/c/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/y;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/y;->a:Landroid/support/v7/c/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/c/a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/y;->a:Landroid/support/v7/c/b;

    invoke-interface {v0, p1}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;)V

    iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/y;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/y;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/aa;->m(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/y;->a:Landroid/support/v7/c/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/y;->a:Landroid/support/v7/c/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/y;->a:Landroid/support/v7/c/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/c/b;->b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
