.class abstract Landroid/support/v7/app/o;
.super Landroid/support/v7/app/n;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/view/Window;

.field final c:Landroid/view/Window$Callback;

.field final d:Landroid/support/v7/app/m;

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field private j:Landroid/support/v7/app/a;

.field private k:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/m;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/n;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/o;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/app/o;->b:Landroid/view/Window;

    iput-object p3, p0, Landroid/support/v7/app/o;->d:Landroid/support/v7/app/m;

    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window$Callback;

    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/app/p;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window$Callback;

    invoke-virtual {p0, v1}, Landroid/support/v7/app/o;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method abstract a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
.end method

.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    new-instance v0, Landroid/support/v7/app/p;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/p;-><init>(Landroid/support/v7/app/o;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/a/a;->aV:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a;->aZ:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v1, Landroid/support/v7/a/a;->aZ:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Landroid/support/v7/app/o;->e:Z

    :cond_1
    sget v1, Landroid/support/v7/a/a;->ba:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Landroid/support/v7/app/o;->f:Z

    :cond_2
    sget v1, Landroid/support/v7/a/a;->bb:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Landroid/support/v7/app/o;->g:Z

    :cond_3
    sget v1, Landroid/support/v7/a/a;->aX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/o;->h:Z

    sget v1, Landroid/support/v7/a/a;->bi:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/o;->i:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/o;->k:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/o;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method abstract a(Landroid/view/KeyEvent;)Z
.end method

.method abstract b(Ljava/lang/CharSequence;)V
.end method

.method abstract c(I)Z
.end method

.method abstract d()Landroid/support/v7/app/a;
.end method

.method abstract d(I)Z
.end method

.method public final e()Landroid/support/v7/app/a;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/o;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/o;->j:Landroid/support/v7/app/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/o;->d()Landroid/support/v7/app/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/o;->j:Landroid/support/v7/app/a;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/o;->j:Landroid/support/v7/app/a;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/o;->j:Landroid/support/v7/app/a;

    instance-of v0, v0, Landroid/support/v7/internal/a/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/o;->j:Landroid/support/v7/app/a;

    goto :goto_0
.end method

.method final f()Landroid/support/v7/app/a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/o;->j:Landroid/support/v7/app/a;

    return-object v0
.end method

.method final g()Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/app/o;->e()Landroid/support/v7/app/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/app/a;->a()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method final h()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/o;->k:Ljava/lang/CharSequence;

    goto :goto_0
.end method
