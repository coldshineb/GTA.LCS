.class public final Landroid/support/v7/internal/widget/Y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/internal/widget/A;


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/view/Window$Callback;

.field private m:Z

.field private n:Landroid/support/v7/widget/ActionMenuPresenter;

.field private o:I

.field private final p:Landroid/support/v7/internal/widget/W;

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f0b0002

    const v2, 0x7f020013

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v7/internal/widget/Y;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/support/v7/internal/widget/Y;->o:I

    iput v2, p0, Landroid/support/v7/internal/widget/Y;->q:I

    iput-object p1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/Y;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/Y;->j:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_10

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/Y;->h:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/Y;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Landroid/support/v7/a/a;->a:[I

    const v5, 0x7f010013

    invoke-static {v0, v3, v4, v5, v2}, Lcom/google/android/vending/expansion/downloader/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/google/android/vending/expansion/downloader/c;

    move-result-object v0

    sget v4, Landroid/support/v7/a/a;->t:I

    invoke-virtual {v0, v4}, Lcom/google/android/vending/expansion/downloader/c;->c(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/Y;->h:Z

    invoke-direct {p0, v4}, Landroid/support/v7/internal/widget/Y;->b(Ljava/lang/CharSequence;)V

    :cond_0
    sget v1, Landroid/support/v7/a/a;->r:I

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/c;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v1, p0, Landroid/support/v7/internal/widget/Y;->j:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/support/v7/internal/widget/Y;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    sget v1, Landroid/support/v7/a/a;->p:I

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/Y;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget v1, Landroid/support/v7/a/a;->o:I

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/internal/widget/Y;->g:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/Y;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    sget v1, Landroid/support/v7/a/a;->n:I

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iput-object v1, p0, Landroid/support/v7/internal/widget/Y;->g:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/Y;->s()V

    :cond_4
    sget v1, Landroid/support/v7/a/a;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/c;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/Y;->c(I)V

    sget v1, Landroid/support/v7/a/a;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/c;->f(II)I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v4, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/internal/widget/Y;->d:Landroid/view/View;

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/support/v7/internal/widget/Y;->b:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/internal/widget/Y;->d:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_5
    iput-object v1, p0, Landroid/support/v7/internal/widget/Y;->d:Landroid/view/View;

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/support/v7/internal/widget/Y;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/Y;->d:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_6
    iget v1, p0, Landroid/support/v7/internal/widget/Y;->b:I

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/Y;->c(I)V

    :cond_7
    sget v1, Landroid/support/v7/a/a;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/c;->e(II)I

    move-result v1

    if-lez v1, :cond_8

    iget-object v4, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    sget v1, Landroid/support/v7/a/a;->h:I

    invoke-virtual {v0, v1, v6}, Lcom/google/android/vending/expansion/downloader/c;->c(II)I

    move-result v1

    sget v4, Landroid/support/v7/a/a;->g:I

    invoke-virtual {v0, v4, v6}, Lcom/google/android/vending/expansion/downloader/c;->c(II)I

    move-result v4

    if-gez v1, :cond_9

    if-ltz v4, :cond_a

    :cond_9
    iget-object v5, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v5, v1, v4}, Landroid/support/v7/widget/Toolbar;->a(II)V

    :cond_a
    sget v1, Landroid/support/v7/a/a;->u:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/c;->f(II)I

    move-result v1

    if-eqz v1, :cond_b

    iget-object v4, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    :cond_b
    sget v1, Landroid/support/v7/a/a;->s:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/c;->f(II)I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v4, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/content/Context;I)V

    :cond_c
    sget v1, Landroid/support/v7/a/a;->q:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/c;->f(II)I

    move-result v1

    if-eqz v1, :cond_d

    iget-object v2, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    :cond_d
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/c;->b()V

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/c;->c()Landroid/support/v7/internal/widget/W;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/Y;->p:Landroid/support/v7/internal/widget/W;

    :goto_1
    iget v0, p0, Landroid/support/v7/internal/widget/Y;->q:I

    if-eq p3, v0, :cond_e

    iput p3, p0, Landroid/support/v7/internal/widget/Y;->q:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/support/v7/internal/widget/Y;->q:I

    if-nez v0, :cond_13

    move-object v0, v3

    :goto_2
    iput-object v0, p0, Landroid/support/v7/internal/widget/Y;->k:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/Y;->r()V

    :cond_e
    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/Y;->k:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->p:Landroid/support/v7/internal/widget/W;

    invoke-virtual {v0, p4}, Landroid/support/v7/internal/widget/W;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->r:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_f

    iput-object v0, p0, Landroid/support/v7/internal/widget/Y;->r:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/Y;->s()V

    :cond_f
    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/internal/widget/Z;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/Z;-><init>(Landroid/support/v7/internal/widget/Y;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_10
    move v0, v2

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0xb

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_12

    const/16 v0, 0xf

    :cond_12
    iput v0, p0, Landroid/support/v7/internal/widget/Y;->b:I

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/W;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/W;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/Y;->p:Landroid/support/v7/internal/widget/W;

    goto :goto_1

    :cond_13
    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/Y;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/Y;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/Y;->f:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/Y;->q()V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/internal/widget/Y;->i:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v7/internal/widget/Y;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/Y;)Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->l:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/Y;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/Y;->m:Z

    return v0
.end method

.method private q()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/internal/widget/Y;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/Y;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->f:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private r()V
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/widget/Y;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/internal/widget/Y;->q:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private s()V
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/widget/Y;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->g:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->p:Landroid/support/v7/internal/widget/W;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/W;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/Y;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/Y;->q()V

    return-void
.end method

.method public final a(Landroid/support/v7/internal/widget/G;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/Y;->c:Landroid/view/View;

    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/Y;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/y;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/internal/view/menu/i;Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method

.method public final a(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/Y;->l:Landroid/view/Window$Callback;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/Y;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/Y;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->p:Landroid/support/v7/internal/widget/W;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/W;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/Y;->b(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v7/internal/widget/Y;->b:I

    xor-int/2addr v0, p1

    iput p1, p0, Landroid/support/v7/internal/widget/Y;->b:I

    if-eqz v0, :cond_3

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    invoke-direct {p0}, Landroid/support/v7/internal/widget/Y;->s()V

    invoke-direct {p0}, Landroid/support/v7/internal/widget/Y;->r()V

    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/internal/widget/Y;->q()V

    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/Y;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/Y;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->g()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->h()V

    return-void
.end method

.method public final d(I)V
    .locals 2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/aa;->j(Landroid/view/View;)Landroid/support/v4/view/aL;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aL;->a(F)Landroid/support/v4/view/aL;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/aa;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/aa;-><init>(Landroid/support/v7/internal/widget/Y;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aL;->a(Landroid/support/v4/view/aY;)Landroid/support/v4/view/aL;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/aa;->j(Landroid/view/View;)Landroid/support/v4/view/aL;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aL;->a(F)Landroid/support/v4/view/aL;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/ab;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ab;-><init>(Landroid/support/v7/internal/widget/Y;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aL;->a(Landroid/support/v4/view/aY;)Landroid/support/v4/view/aL;

    goto :goto_0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final g()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->e()Z

    move-result v0

    return v0
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/Y;->m:Z

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()V

    return-void
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/widget/Y;->b:I

    return v0
.end method

.method public final p()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
