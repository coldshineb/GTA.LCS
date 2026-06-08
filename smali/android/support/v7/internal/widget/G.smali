.class public final Landroid/support/v7/internal/widget/G;
.super Landroid/widget/HorizontalScrollView;

# interfaces
.implements Landroid/support/v7/internal/widget/v;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:I

.field private c:Landroid/support/v7/internal/widget/J;

.field private d:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private e:Z

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/G;Landroid/support/v7/app/c;Z)Landroid/support/v7/internal/widget/K;
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Landroid/support/v7/internal/widget/K;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/G;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Landroid/support/v7/internal/widget/K;-><init>(Landroid/support/v7/internal/widget/G;Landroid/content/Context;Landroid/support/v7/app/c;Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/K;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/G;->g:I

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/K;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/G;)Landroid/support/v7/widget/x;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/G;->d:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/G;->d:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/support/v7/internal/widget/G;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/G;->d:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/G;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/G;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/G;->d:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/G;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/G;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/G;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/G;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/G;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/e;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/G;->setContentHeight(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->g()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/G;->f:I

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/G;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/G;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/G;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v8, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/G;->setFillViewport(Z)V

    invoke-virtual {v6}, Landroid/support/v7/widget/x;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_8

    if-eq v3, v8, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_8

    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/widget/G;->b:I

    :goto_1
    iget v3, p0, Landroid/support/v7/internal/widget/G;->b:I

    iget v4, p0, Landroid/support/v7/internal/widget/G;->f:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/G;->b:I

    :goto_2
    iget v3, p0, Landroid/support/v7/internal/widget/G;->g:I

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    if-nez v0, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/G;->e:Z

    if-eqz v4, :cond_9

    :goto_3
    if-eqz v1, :cond_b

    invoke-virtual {v6, v2, v3}, Landroid/support/v7/widget/x;->measure(II)V

    invoke-virtual {v6}, Landroid/support/v7/widget/x;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-le v1, v4, :cond_a

    invoke-direct {p0}, Landroid/support/v7/internal/widget/G;->a()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/internal/widget/G;->d:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-nez v1, :cond_1

    new-instance v1, Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/G;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f01002e

    invoke-direct {v1, v4, v6, v5}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Landroid/support/v7/widget/y;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v7}, Landroid/support/v7/widget/y;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/v;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/G;->d:Landroid/support/v7/internal/widget/SpinnerCompat;

    :cond_1
    invoke-virtual {p0, v6}, Landroid/support/v7/internal/widget/G;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/G;->d:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/internal/widget/G;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/G;->d:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v1, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/internal/widget/G;->d:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v4, Landroid/support/v7/internal/widget/I;

    invoke-direct {v4, p0, v2}, Landroid/support/v7/internal/widget/I;-><init>(Landroid/support/v7/internal/widget/G;B)V

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/widget/G;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/internal/widget/G;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/G;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v6, p0, Landroid/support/v7/internal/widget/G;->a:Ljava/lang/Runnable;

    :cond_3
    iget-object v1, p0, Landroid/support/v7/internal/widget/G;->d:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget v2, p0, Landroid/support/v7/internal/widget/G;->h:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    :cond_4
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/G;->getMeasuredWidth()I

    move-result v1

    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/G;->getMeasuredWidth()I

    move-result v2

    if-eqz v0, :cond_5

    if-eq v1, v2, :cond_5

    iget v0, p0, Landroid/support/v7/internal/widget/G;->h:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/G;->setTabSelected(I)V

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/internal/widget/G;->b:I

    goto/16 :goto_1

    :cond_8
    iput v7, p0, Landroid/support/v7/internal/widget/G;->b:I

    goto/16 :goto_2

    :cond_9
    move v1, v2

    goto/16 :goto_3

    :cond_a
    invoke-direct {p0}, Landroid/support/v7/internal/widget/G;->b()Z

    goto :goto_4

    :cond_b
    invoke-direct {p0}, Landroid/support/v7/internal/widget/G;->b()Z

    goto :goto_4
.end method

.method public final setAllowCollapse(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/G;->e:Z

    return-void
.end method

.method public final setContentHeight(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/internal/widget/G;->g:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/G;->requestLayout()V

    return-void
.end method

.method public final setTabSelected(I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    iput p1, p0, Landroid/support/v7/internal/widget/G;->h:I

    invoke-virtual {v5}, Landroid/support/v7/widget/x;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/x;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v5, p1}, Landroid/support/v7/widget/x;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v7/internal/widget/G;->a:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/internal/widget/G;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/G;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v4, Landroid/support/v7/internal/widget/H;

    invoke-direct {v4, p0, v0}, Landroid/support/v7/internal/widget/H;-><init>(Landroid/support/v7/internal/widget/G;Landroid/view/View;)V

    iput-object v4, p0, Landroid/support/v7/internal/widget/G;->a:Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/support/v7/internal/widget/G;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/G;->post(Ljava/lang/Runnable;)Z

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/G;->d:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/G;->d:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    :cond_4
    return-void
.end method
