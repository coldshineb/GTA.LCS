.class final Landroid/support/v7/app/s;
.super Landroid/support/v7/app/p;


# instance fields
.field private synthetic a:Landroid/support/v7/app/r;


# direct methods
.method constructor <init>(Landroid/support/v7/app/r;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/r;

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/p;-><init>(Landroid/support/v7/app/o;Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/r;

    invoke-static {v0}, Landroid/support/v7/app/r;->a(Landroid/support/v7/app/r;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Landroid/support/v7/internal/view/d;

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/r;

    iget-object v0, v0, Landroid/support/v7/app/r;->a:Landroid/content/Context;

    invoke-direct {v1, v0, p1}, Landroid/support/v7/internal/view/d;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/r;

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    invoke-virtual {v2}, Landroid/support/v7/c/a;->c()V

    :cond_0
    new-instance v2, Landroid/support/v7/app/y;

    invoke-direct {v2, v0, v1}, Landroid/support/v7/app/y;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/c/b;)V

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/support/v7/app/a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/support/v7/app/a;->a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    :cond_1
    iget-object v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    :cond_2
    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    if-eqz v2, :cond_3

    new-instance v0, Landroid/support/v7/internal/view/c;

    iget-object v3, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/r;

    iget-object v3, v3, Landroid/support/v7/app/r;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Landroid/support/v7/internal/view/c;-><init>(Landroid/content/Context;Landroid/support/v7/c/a;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/d;->a(Landroid/support/v7/internal/view/c;)V

    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Landroid/support/v7/app/p;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method
