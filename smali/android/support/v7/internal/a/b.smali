.class public Landroid/support/v7/internal/a/b;
.super Landroid/support/v7/app/a;

# interfaces
.implements Landroid/support/v7/internal/widget/l;


# static fields
.field private static final e:Z


# instance fields
.field private A:Landroid/support/v4/view/aY;

.field private B:Landroid/support/v4/view/ba;

.field a:Landroid/support/v7/internal/a/f;

.field b:Landroid/support/v7/c/a;

.field c:Landroid/support/v7/c/b;

.field d:Z

.field private f:Landroid/content/Context;

.field private g:Landroid/content/Context;

.field private h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field private i:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private j:Landroid/support/v7/internal/widget/A;

.field private k:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private l:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private m:Landroid/view/View;

.field private n:Z

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/h;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Z

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/support/v7/internal/view/h;

.field private y:Z

.field private z:Landroid/support/v4/view/aY;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/support/v7/internal/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/internal/a/b;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->p:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/a/b;->s:I

    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->t:Z

    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->w:Z

    new-instance v0, Landroid/support/v7/internal/a/c;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/c;-><init>(Landroid/support/v7/internal/a/b;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->z:Landroid/support/v4/view/aY;

    new-instance v0, Landroid/support/v7/internal/a/d;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/d;-><init>(Landroid/support/v7/internal/a/b;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->A:Landroid/support/v4/view/aY;

    new-instance v0, Landroid/support/v7/internal/a/e;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/e;-><init>(Landroid/support/v7/internal/a/b;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->B:Landroid/support/v4/view/ba;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/b;->a(Landroid/view/View;)V

    if-nez p2, :cond_0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->p:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/a/b;->s:I

    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->t:Z

    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->w:Z

    new-instance v0, Landroid/support/v7/internal/a/c;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/c;-><init>(Landroid/support/v7/internal/a/b;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->z:Landroid/support/v4/view/aY;

    new-instance v0, Landroid/support/v7/internal/a/d;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/d;-><init>(Landroid/support/v7/internal/a/b;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->A:Landroid/support/v4/view/aY;

    new-instance v0, Landroid/support/v7/internal/a/e;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/e;-><init>(Landroid/support/v7/internal/a/b;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->B:Landroid/support/v4/view/ba;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/b;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/a/b;Landroid/support/v7/internal/view/h;)Landroid/support/v7/internal/view/h;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->x:Landroid/support/v7/internal/view/h;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0a005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroid/support/v7/internal/widget/l;)V

    :cond_0
    const v0, 0x7f0a005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/support/v7/internal/widget/A;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/support/v7/internal/widget/A;

    :goto_0
    iput-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    const v0, 0x7f0a005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    const v0, 0x7f0a005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    const v0, 0x7f0a0004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v0, :cond_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v3, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v3, :cond_3

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/internal/widget/A;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t make a decor toolbar out of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "null"

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/A;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->f:Landroid/content/Context;

    iput v2, p0, Landroid/support/v7/internal/a/b;->q:I

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/A;->o()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    if-eqz v0, :cond_6

    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->n:Z

    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/e;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->f()Z

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->d()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/a/b;->r:Z

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->r:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    invoke-interface {v0, v5}, Landroid/support/v7/internal/widget/A;->a(Landroid/support/v7/internal/widget/G;)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/G;)V

    :goto_3
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/A;->p()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_4
    iget-object v4, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    iget-boolean v3, p0, Landroid/support/v7/internal/a/b;->r:Z

    if-nez v3, :cond_a

    if-eqz v0, :cond_a

    move v3, v1

    :goto_5
    invoke-interface {v4, v3}, Landroid/support/v7/internal/widget/A;->a(Z)V

    iget-object v3, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Landroid/support/v7/internal/a/b;->r:Z

    if-nez v4, :cond_b

    if-eqz v0, :cond_b

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->f:Landroid/content/Context;

    sget-object v3, Landroid/support/v7/a/a;->a:[I

    const v4, 0x7f010013

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v3, Landroid/support/v7/a/a;->m:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a()Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/G;)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    invoke-interface {v0, v5}, Landroid/support/v7/internal/widget/A;->a(Landroid/support/v7/internal/widget/G;)V

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v3, v2

    goto :goto_5

    :cond_b
    move v0, v2

    goto :goto_6

    :cond_c
    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->d:Z

    iget-object v3, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    :cond_d
    sget v1, Landroid/support/v7/a/a;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eqz v1, :cond_e

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2, v1}, Landroid/support/v4/view/aa;->e(Landroid/view/View;F)V

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2, v1}, Landroid/support/v4/view/aa;->e(Landroid/view/View;F)V

    :cond_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->t:Z

    return v0
.end method

.method static synthetic a(ZZZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v7/internal/a/b;->b(ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/v7/internal/a/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/view/View;

    return-object v0
.end method

.method private static b(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/internal/a/b;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/a/b;->q:I

    return v0
.end method

.method static synthetic f(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method private f(Z)V
    .locals 8

    const/4 v2, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->u:Z

    iget-boolean v1, p0, Landroid/support/v7/internal/a/b;->v:Z

    invoke-static {v6, v0, v1}, Landroid/support/v7/internal/a/b;->b(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->w:Z

    if-nez v0, :cond_5

    iput-boolean v5, p0, Landroid/support/v7/internal/a/b;->w:Z

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->x:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->x:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroid/support/v7/internal/a/b;->s:I

    if-nez v0, :cond_6

    sget-boolean v0, Landroid/support/v7/internal/a/b;->e:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->y:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_6

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/aa;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget v1, v1, v5

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v1, v0}, Landroid/support/v4/view/aa;->b(Landroid/view/View;F)V

    new-instance v1, Landroid/support/v7/internal/view/h;

    invoke-direct {v1}, Landroid/support/v7/internal/view/h;-><init>()V

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/aa;->j(Landroid/view/View;)Landroid/support/v4/view/aL;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/aL;->c(F)Landroid/support/v4/view/aL;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/a/b;->B:Landroid/support/v4/view/ba;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/aL;->a(Landroid/support/v4/view/ba;)Landroid/support/v4/view/aL;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/aL;)Landroid/support/v7/internal/view/h;

    iget-boolean v2, p0, Landroid/support/v7/internal/a/b;->t:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->m:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->m:Landroid/view/View;

    invoke-static {v2, v0}, Landroid/support/v4/view/aa;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/aa;->j(Landroid/view/View;)Landroid/support/v4/view/aL;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/aL;->c(F)Landroid/support/v4/view/aL;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/aL;)Landroid/support/v7/internal/view/h;

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v7/internal/a/b;->q:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/support/v4/view/aa;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/aa;->j(Landroid/view/View;)Landroid/support/v4/view/aL;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/aL;->c(F)Landroid/support/v4/view/aL;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/aL;)Landroid/support/v7/internal/view/h;

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->f:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/h;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/view/h;->a(J)Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->A:Landroid/support/v4/view/aY;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/aY;)Landroid/support/v7/internal/view/h;

    iput-object v1, p0, Landroid/support/v7/internal/a/b;->x:Landroid/support/v7/internal/view/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/h;->a()V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/aa;->m(Landroid/view/View;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v7}, Landroid/support/v4/view/aa;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/aa;->b(Landroid/view/View;F)V

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->t:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/aa;->b(Landroid/view/View;F)V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/support/v7/internal/a/b;->q:I

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v7}, Landroid/support/v4/view/aa;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/aa;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->A:Landroid/support/v4/view/aY;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/aY;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->w:Z

    if-eqz v0, :cond_5

    iput-boolean v6, p0, Landroid/support/v7/internal/a/b;->w:Z

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->x:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->x:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    :cond_a
    iget v0, p0, Landroid/support/v7/internal/a/b;->s:I

    if-nez v0, :cond_f

    sget-boolean v0, Landroid/support/v7/internal/a/b;->e:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->y:Z

    if-nez v0, :cond_b

    if-eqz p1, :cond_f

    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v7}, Landroid/support/v4/view/aa;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v1, Landroid/support/v7/internal/view/h;

    invoke-direct {v1}, Landroid/support/v7/internal/view/h;-><init>()V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_c

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iget-object v3, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget v2, v2, v5

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :cond_c
    iget-object v2, p0, Landroid/support/v7/internal/a/b;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/aa;->j(Landroid/view/View;)Landroid/support/v4/view/aL;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/aL;->c(F)Landroid/support/v4/view/aL;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/a/b;->B:Landroid/support/v4/view/ba;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/aL;->a(Landroid/support/v4/view/ba;)Landroid/support/v4/view/aL;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/aL;)Landroid/support/v7/internal/view/h;

    iget-boolean v2, p0, Landroid/support/v7/internal/a/b;->t:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->m:Landroid/view/View;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->m:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/aa;->j(Landroid/view/View;)Landroid/support/v4/view/aL;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/aL;->c(F)Landroid/support/v4/view/aL;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/aL;)Landroid/support/v7/internal/view/h;

    :cond_d
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v7}, Landroid/support/v4/view/aa;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/aa;->j(Landroid/view/View;)Landroid/support/v4/view/aL;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aL;->c(F)Landroid/support/v4/view/aL;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/aL;)Landroid/support/v7/internal/view/h;

    :cond_e
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->f:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/h;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/view/h;->a(J)Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->z:Landroid/support/v4/view/aY;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/aY;)Landroid/support/v7/internal/view/h;

    iput-object v1, p0, Landroid/support/v7/internal/a/b;->x:Landroid/support/v7/internal/view/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/h;->a()V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->z:Landroid/support/v4/view/aY;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/aY;->b(Landroid/view/View;)V

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic g(Landroid/support/v7/internal/a/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic h(Landroid/support/v7/internal/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->u:Z

    return v0
.end method

.method static synthetic i(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/A;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v7/internal/a/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->f:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f010016

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_1

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->f:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/internal/a/b;->g:Landroid/content/Context;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->g:Landroid/content/Context;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->f:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->g:Landroid/content/Context;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/f;

    invoke-virtual {v0}, Landroid/support/v7/internal/a/f;->c()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->c()V

    new-instance v0, Landroid/support/v7/internal/a/f;

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/internal/a/f;-><init>(Landroid/support/v7/internal/a/b;Landroid/content/Context;Landroid/support/v7/c/b;)V

    invoke-virtual {v0}, Landroid/support/v7/internal/a/f;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/internal/a/f;->d()V

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/support/v7/c/a;)V

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/a/b;->e(Z)V

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/internal/a/b;->q:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/aa;->m(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/f;

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/internal/a/b;->s:I

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/A;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->n:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/A;->o()I

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/internal/a/b;->n:Z

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    and-int/lit8 v0, v0, 0x4

    and-int/lit8 v1, v1, -0x5

    or-int/2addr v0, v1

    invoke-interface {v2, v0}, Landroid/support/v7/internal/widget/A;->c(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/a/b;->y:Z

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->x:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->x:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/A;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/A;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/a/b;->u:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/b;->f(Z)V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->o:Z

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/internal/a/b;->o:Z

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->u:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->u:Z

    invoke-direct {p0, v1}, Landroid/support/v7/internal/a/b;->f(Z)V

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/internal/a/b;->t:Z

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->x:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->x:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->x:Landroid/support/v7/internal/view/h;

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->v:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Landroid/support/v7/internal/a/b;->v:Z

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-direct {p0, v2}, Landroid/support/v7/internal/a/b;->f(Z)V

    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/a/b;->j:Landroid/support/v7/internal/widget/A;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/support/v7/internal/widget/A;->d(I)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(I)V

    return-void

    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->v:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Landroid/support/v7/internal/a/b;->v:Z

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_3
    invoke-direct {p0, v2}, Landroid/support/v7/internal/a/b;->f(Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method
