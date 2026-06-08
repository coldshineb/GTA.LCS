.class public final Landroid/support/v7/internal/view/menu/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/c/a/b;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:C

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:Landroid/support/v7/internal/view/menu/i;

.field private m:Landroid/support/v7/internal/view/menu/C;

.field private n:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private o:I

.field private p:I

.field private q:Landroid/view/View;

.field private r:Landroid/support/v4/view/k;

.field private s:Landroid/support/v4/view/L;

.field private t:Z

.field private u:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/i;IIIILjava/lang/CharSequence;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/support/v7/internal/view/menu/m;->k:I

    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    iput v1, p0, Landroid/support/v7/internal/view/menu/m;->p:I

    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/m;->t:Z

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    iput p3, p0, Landroid/support/v7/internal/view/menu/m;->a:I

    iput p2, p0, Landroid/support/v7/internal/view/menu/m;->b:I

    iput p4, p0, Landroid/support/v7/internal/view/menu/m;->c:I

    iput p5, p0, Landroid/support/v7/internal/view/menu/m;->d:I

    iput-object p6, p0, Landroid/support/v7/internal/view/menu/m;->e:Ljava/lang/CharSequence;

    iput p7, p0, Landroid/support/v7/internal/view/menu/m;->p:I

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/support/v4/c/a/b;
    .locals 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->q:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->i()V

    return-object p0
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/m;)Landroid/support/v7/internal/view/menu/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/L;)Landroid/support/v4/c/a/b;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->s:Landroid/support/v4/view/L;

    return-object p0
.end method

.method public final a(Landroid/support/v4/view/k;)Landroid/support/v4/c/a/b;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/k;->a(Landroid/support/v4/view/m;)V

    :cond_0
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/m;->q:Landroid/view/View;

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    new-instance v1, Landroid/support/v7/internal/view/menu/n;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/view/menu/n;-><init>(Landroid/support/v7/internal/view/menu/m;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/k;->a(Landroid/support/v4/view/m;)V

    :cond_1
    return-object p0
.end method

.method public final a()Landroid/support/v4/view/k;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    return-object v0
.end method

.method final a(Landroid/support/v7/internal/view/menu/A;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v7/internal/view/menu/A;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/m;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/m;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Landroid/support/v7/internal/view/menu/C;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->m:Landroid/support/v7/internal/view/menu/C;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/m;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/C;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Z)V
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->n:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->n:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/i;->n()Landroid/support/v7/internal/view/menu/i;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/i;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/content/Intent;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    invoke-virtual {v1}, Landroid/support/v4/view/k;->d()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->d:I

    return v0
.end method

.method final c(Z)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final collapseActionView()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/internal/view/menu/m;->p:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->q:Landroid/view/View;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->s:Landroid/support/v4/view/L;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->s:Landroid/support/v4/view/L;

    invoke-interface {v1, p0}, Landroid/support/v4/view/L;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/i;->b(Landroid/support/v7/internal/view/menu/m;)Z

    move-result v0

    goto :goto_0
.end method

.method final d()C
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/m;->i:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/m;->h:C

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    goto :goto_0
.end method

.method public final e(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/m;->t:Z

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    return-void
.end method

.method final e()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/m;->d()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final expandActionView()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/m;->m()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->s:Landroid/support/v4/view/L;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->s:Landroid/support/v4/view/L;

    invoke-interface {v1, p0}, Landroid/support/v4/view/L;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/m;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->i()V

    return-void
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->q:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/k;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->q:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->q:Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/m;->i:C

    return v0
.end method

.method public final getGroupId()I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->b:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->j:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->k:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->d()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/internal/view/menu/m;->k:I

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/W;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/view/menu/m;->k:I

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->a:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->u:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/m;->h:C

    return v0
.end method

.method public final getOrder()I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->c:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->m:Landroid/support/v7/internal/view/menu/C;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->f:Ljava/lang/CharSequence;

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->e:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    const/4 v0, 0x0

    return v0
.end method

.method public final hasSubMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->m:Landroid/support/v7/internal/view/menu/C;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/m;->t:Z

    return v0
.end method

.method public final isCheckable()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    invoke-virtual {v2}, Landroid/support/v4/view/k;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    invoke-virtual {v2}, Landroid/support/v4/view/k;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/internal/view/menu/m;->p:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->p:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->p:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/internal/view/menu/m;->p:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->q:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->r:Landroid/support/v4/view/k;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/k;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/m;->q:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->q:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/menu/m;->a(Landroid/view/View;)Landroid/support/v4/c/a/b;

    return-object p0
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/m;->a(Landroid/view/View;)Landroid/support/v4/c/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/m;->i:C

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/menu/m;->i:C

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    goto :goto_0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/view/MenuItem;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/m;->b(Z)V

    goto :goto_0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    return-object p0

    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/internal/view/menu/m;->o:I

    goto :goto_0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->j:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroid/support/v7/internal/view/menu/m;->k:I

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/view/menu/m;->k:I

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/m;->h:C

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/m;->h:C

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    goto :goto_0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setOnActionExpandListener()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->n:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    iput-char p1, p0, Landroid/support/v7/internal/view/menu/m;->h:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/menu/m;->i:C

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Landroid/support/v7/internal/view/menu/m;->p:I

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->i()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/m;->setShowAsAction(I)V

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/m;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->e:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->m:Landroid/support/v7/internal/view/menu/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->m:Landroid/support/v7/internal/view/menu/C;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/C;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->f:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Z)V

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/m;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->l:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->h()V

    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->e:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
