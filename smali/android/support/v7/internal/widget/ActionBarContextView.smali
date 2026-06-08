.class public Landroid/support/v7/internal/widget/ActionBarContextView;
.super Landroid/support/v7/internal/widget/a;

# interfaces
.implements Landroid/support/v4/view/aY;


# instance fields
.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Z

.field private s:I

.field private t:Landroid/support/v7/internal/view/h;

.field private u:Z

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f01001c

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Landroid/support/v7/a/a;->x:[I

    invoke-static {p1, p2, v0, p3, v2}, Lcom/google/android/vending/expansion/downloader/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/google/android/vending/expansion/downloader/c;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a;->y:I

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Landroid/support/v7/a/a;->D:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/c;->f(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:I

    sget v1, Landroid/support/v7/a/a;->C:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/c;->f(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->p:I

    sget v1, Landroid/support/v7/a/a;->B:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/c;->e(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    sget v1, Landroid/support/v7/a/a;->z:I

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->q:Landroid/graphics/drawable/Drawable;

    sget v1, Landroid/support/v7/a/a;->A:I

    const v2, 0x7f030006

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/c;->f(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->s:I

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/c;->b()V

    return-void
.end method

.method private e()V
    .locals 6

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v3, 0x7f030000

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0040

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0041

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->p:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->p:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_1
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v4, v2

    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_2
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->t:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->t:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->a(I)V

    return-void
.end method

.method public final a(Landroid/support/v7/c/a;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->s:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/g;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/g;-><init>(Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/c/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/support/v7/c/a;->b()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    :cond_1
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->c(Z)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->e:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;Landroid/content/Context;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iput-boolean v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->u:Z

    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->a(IZ)V

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->a(I)V

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;Landroid/content/Context;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v1, 0x2

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->v:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->c()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->f()V

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->v:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/aa;->j(Landroid/view/View;)Landroid/support/v4/view/aL;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v2, v0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/aL;->b(F)Landroid/support/v4/view/aL;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/aL;->a(J)Landroid/support/v4/view/aL;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/aL;->a(Landroid/support/v4/view/aY;)Landroid/support/v4/view/aL;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aL;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/aL;

    new-instance v1, Landroid/support/v7/internal/view/h;

    invoke-direct {v1}, Landroid/support/v7/internal/view/h;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/aL;)Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    :cond_2
    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->t:Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->t:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->a()V

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->c()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->v:I

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->f()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->u:Z

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->r:Z

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->e()Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->g()Z

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    invoke-static {p0}, Landroid/support/v7/internal/widget/ac;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v4

    sub-int v0, p5, p3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    sub-int v5, v0, v2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    if-eqz v3, :cond_2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    invoke-static {v1, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(IIZ)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-static {v2, v1, v4, v5, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;IIIZ)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, v0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(IIZ)I

    move-result v1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->u:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->v:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v6, v0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v0, v6, v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Landroid/support/v4/view/aa;->a(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/aa;->j(Landroid/view/View;)Landroid/support/v4/view/aL;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aL;->b(F)Landroid/support/v4/view/aL;

    move-result-object v0

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/aL;->a(J)Landroid/support/v4/view/aL;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/aL;->a(Landroid/support/v4/view/aY;)Landroid/support/v4/view/aL;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aL;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/aL;

    new-instance v2, Landroid/support/v7/internal/view/h;

    invoke-direct {v2}, Landroid/support/v7/internal/view/h;-><init>()V

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/aL;)Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_3

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/support/v4/view/aa;->d(Landroid/view/View;F)V

    invoke-static {v6}, Landroid/support/v4/view/aa;->j(Landroid/view/View;)Landroid/support/v4/view/aL;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/support/v4/view/aL;->d(F)Landroid/support/v4/view/aL;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/aL;->a(J)Landroid/support/v4/view/aL;

    invoke-virtual {v2, v6}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/aL;)Landroid/support/v7/internal/view/h;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_1
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_2
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    :cond_3
    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->t:Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->t:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->u:Z

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v4, v5, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-static {v0, v1, v4, v5, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;IIIZ)I

    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    :goto_4
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_7

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    if-nez v3, :cond_9

    const/4 v1, 0x1

    :goto_5
    invoke-static {v2, v0, v4, v5, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;IIIZ)I

    :cond_7
    return-void

    :cond_8
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 12

    const/4 v11, -0x2

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    if-lez v0, :cond_8

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v0, v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int v6, v1, v8

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-static {v9, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;III)I

    move-result v9

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v10

    sub-int v0, v9, v0

    :cond_2
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-ne v9, p0, :cond_3

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v9, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;III)I

    move-result v0

    :cond_3
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v9, :cond_5

    iget-boolean v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->r:Z

    if-eqz v9, :cond_b

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9, v2}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    if-gt v9, v0, :cond_9

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    sub-int/2addr v0, v9

    :cond_4
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_a

    move v2, v3

    :goto_2
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    :goto_3
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v11, :cond_c

    move v2, v4

    :goto_4
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_6

    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_6
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v10, v11, :cond_d

    :goto_5
    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v5, :cond_e

    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_6
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    :cond_7
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    if-gtz v0, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_7
    if-ge v2, v4, :cond_f

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v8

    if-le v0, v1, :cond_11

    :goto_8
    add-int/lit8 v3, v2, 0x1

    move v2, v3

    move v1, v0

    goto :goto_7

    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto :goto_1

    :cond_a
    const/16 v2, 0x8

    goto :goto_2

    :cond_b
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    invoke-static {v9, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;III)I

    move-result v0

    goto :goto_3

    :cond_c
    move v2, v5

    goto :goto_4

    :cond_d
    move v4, v5

    goto :goto_5

    :cond_e
    move v5, v6

    goto :goto_6

    :cond_f
    invoke-virtual {p0, v7, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    :goto_9
    return-void

    :cond_10
    invoke-virtual {p0, v7, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9

    :cond_11
    move v0, v1

    goto :goto_8
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/LinearLayout;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V

    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 5

    const/4 v4, -0x1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->e:Z

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v1, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-nez p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitToolbar(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->a(IZ)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(I)V

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic setSplitView(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->e()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->e()V

    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->r:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->r:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
