.class public final Landroid/support/v7/app/k;
.super Landroid/support/v7/app/C;

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Landroid/support/v7/app/d;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p1, p2}, Landroid/support/v7/app/k;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/C;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/support/v7/app/d;

    invoke-virtual {p0}, Landroid/support/v7/app/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Landroid/support/v7/app/d;-><init>(Landroid/content/Context;Landroid/support/v7/app/C;Landroid/view/Window;)V

    iput-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/d;

    return-void
.end method

.method static a(Landroid/content/Context;I)I
    .locals 4

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f01005d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/k;)Landroid/support/v7/app/d;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/d;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/C;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->a()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p2}, Landroid/support/v7/app/d;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/C;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p2}, Landroid/support/v7/app/d;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/C;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/C;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
