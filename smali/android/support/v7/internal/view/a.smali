.class public final Landroid/support/v7/internal/view/a;
.super Landroid/content/ContextWrapper;


# instance fields
.field private a:I

.field private b:Landroid/content/res/Resources$Theme;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput p2, p0, Landroid/support/v7/internal/view/a;->a:I

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/internal/view/a;->b:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/a;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/a;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/view/a;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/a;->b:Landroid/content/res/Resources$Theme;

    iget v2, p0, Landroid/support/v7/internal/view/a;->a:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/view/a;->a:I

    return v0
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/a;->c:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/a;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/a;->c:Landroid/view/LayoutInflater;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/a;->c:Landroid/view/LayoutInflater;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/a;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/a;->b:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/a;->b:Landroid/content/res/Resources$Theme;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/a;->a:I

    if-nez v0, :cond_1

    const v0, 0x7f0c00ed

    iput v0, p0, Landroid/support/v7/internal/view/a;->a:I

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/internal/view/a;->b()V

    iget-object v0, p0, Landroid/support/v7/internal/view/a;->b:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method public final setTheme(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/internal/view/a;->a:I

    invoke-direct {p0}, Landroid/support/v7/internal/view/a;->b()V

    return-void
.end method
