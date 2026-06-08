.class public final Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;


# static fields
.field private static t:Landroid/support/v4/widget/M;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private final e:I

.field private f:Z

.field private g:Landroid/view/View;

.field private h:F

.field private i:F

.field private j:I

.field private k:Z

.field private l:I

.field private m:F

.field private n:F

.field private final o:Landroid/support/v4/widget/P;

.field private p:Z

.field private q:Z

.field private final r:Landroid/graphics/Rect;

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/J;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/O;

    invoke-direct {v0}, Landroid/support/v4/widget/O;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Landroid/support/v4/widget/M;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/N;

    invoke-direct {v0}, Landroid/support/v4/widget/N;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Landroid/support/v4/widget/M;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/M;

    invoke-direct {v0}, Landroid/support/v4/widget/M;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Landroid/support/v4/widget/M;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Landroid/support/v4/widget/M;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/M;->a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;FI)V
    .locals 6

    const/4 v5, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/K;

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3

    if-eqz p3, :cond_3

    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p3

    or-int/2addr v1, v2

    iget-object v2, v0, Landroid/support/v4/widget/K;->d:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Landroid/support/v4/widget/K;->d:Landroid/graphics/Paint;

    :cond_0
    iget-object v2, v0, Landroid/support/v4/widget/K;->d:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-static {p1}, Landroid/support/v4/view/aa;->d(Landroid/view/View;)I

    move-result v1

    if-eq v1, v5, :cond_1

    iget-object v0, v0, Landroid/support/v4/widget/K;->d:Landroid/graphics/Paint;

    invoke-static {p1, v5, v0}, Landroid/support/v4/view/aa;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/aa;->d(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/v4/widget/K;->d:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    iget-object v0, v0, Landroid/support/v4/widget/K;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_4
    new-instance v0, Landroid/support/v4/widget/J;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/J;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Landroid/support/v4/view/aa;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/support/v4/view/aa;->e(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(F)Z
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()Z

    move-result v2

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/K;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    iget v0, v0, Landroid/support/v4/widget/K;->rightMargin:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v0, v4

    int-to-float v2, v2

    add-float/2addr v0, v2

    sub-float v0, v3, v0

    float-to-int v0, v0

    :goto_1
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/widget/P;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/support/v4/widget/K;->leftMargin:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/aa;->b(Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private a(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(F)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Z

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private b(Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/K;

    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Landroid/support/v4/widget/K;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/K;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final computeScroll()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/P;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    invoke-virtual {v0}, Landroid/support/v4/widget/P;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/aa;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int v1, v2, v5

    :goto_3
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v2, v1, v5

    goto :goto_3
.end method

.method protected final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/K;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    iget-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/widget/K;->b:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    :goto_0
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_5

    iget-boolean v3, v0, Landroid/support/v4/widget/K;->c:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v0, v0, Landroid/support/v4/widget/K;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v0, v1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v0

    :cond_2
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_3
    const-string v0, "SlidingPaneLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "drawChild: child view "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " returned null drawing cache"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_1
.end method

.method protected final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/v4/widget/K;

    invoke-direct {v0}, Landroid/support/v4/widget/K;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/v4/widget/K;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/K;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/K;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/K;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/widget/K;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/K;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final getCoveredFadeColor()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:I

    return v0
.end method

.method public final getParallaxDistance()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    return v0
.end method

.method public final getSliderFadeColor()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->a:I

    return v0
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/J;

    invoke-virtual {v0}, Landroid/support/v4/widget/J;->run()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;)I

    move-result v3

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v0, v4, v5}, Landroid/support/v4/widget/P;->b(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Z

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:Z

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    invoke-virtual {v0}, Landroid/support/v4/widget/P;->c()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_2
    :goto_1
    return v2

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-eq v3, v0, :cond_5

    if-ne v3, v1, :cond_6

    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    invoke-virtual {v0}, Landroid/support/v4/widget/P;->c()V

    goto :goto_1

    :cond_6
    packed-switch v3, :pswitch_data_0

    :cond_7
    :pswitch_0
    move v0, v2

    :goto_2
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/P;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v0, :cond_2

    :cond_8
    move v2, v1

    goto :goto_1

    :pswitch_1
    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:F

    iput v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:F

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v3, v3

    invoke-static {v4, v0, v3}, Landroid/support/v4/widget/P;->b(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    int-to-float v4, v2

    cmpl-float v4, v0, v4

    if-lez v4, :cond_7

    cmpl-float v0, v3, v0

    if-lez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    invoke-virtual {v0}, Landroid/support/v4/widget/P;->c()V

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final onLayout(ZIIII)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/P;->a(I)V

    :goto_0
    sub-int v10, p4, p2

    if-eqz v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    :goto_1
    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    move v2, v1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Z

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_3
    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    :cond_0
    const/4 v1, 0x0

    move v8, v1

    move v6, v3

    move v7, v3

    :goto_4
    if-ge v8, v12, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1d

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/K;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    const/4 v5, 0x0

    iget-boolean v3, v1, Landroid/support/v4/widget/K;->b:Z

    if-eqz v3, :cond_7

    iget v3, v1, Landroid/support/v4/widget/K;->leftMargin:I

    iget v4, v1, Landroid/support/v4/widget/K;->rightMargin:I

    add-int/2addr v3, v4

    sub-int v4, v10, v2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/widget/SlidingPaneLayout;->e:I

    sub-int/2addr v4, v15

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v7

    sub-int v15, v4, v3

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/widget/SlidingPaneLayout;->j:I

    if-eqz v9, :cond_5

    iget v3, v1, Landroid/support/v4/widget/K;->rightMargin:I

    :goto_5
    add-int v4, v7, v3

    add-int/2addr v4, v15

    div-int/lit8 v16, v14, 0x2

    add-int v4, v4, v16

    sub-int v16, v10, v2

    move/from16 v0, v16

    if-le v4, v0, :cond_6

    const/4 v4, 0x1

    :goto_6
    iput-boolean v4, v1, Landroid/support/v4/widget/K;->c:Z

    int-to-float v1, v15

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v3, v1

    add-int v4, v7, v3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->j:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    :goto_7
    if-eqz v9, :cond_8

    sub-int v1, v10, v4

    add-int v3, v1, v5

    sub-int v1, v3, v14

    :goto_8
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v11

    invoke-virtual {v13, v1, v11, v3, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v3, v4

    :goto_9
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v6, v1

    move v7, v3

    goto :goto_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/P;->a(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    goto/16 :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v1

    move v2, v1

    goto/16 :goto_2

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_5
    iget v3, v1, Landroid/support/v4/widget/K;->leftMargin:I

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v1, :cond_1c

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    if-eqz v1, :cond_1c

    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    :goto_a
    move v5, v1

    move v4, v6

    goto :goto_7

    :cond_8
    sub-int v1, v4, v5

    add-int v3, v1, v14

    goto :goto_8

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/K;

    iget-boolean v2, v1, Landroid/support/v4/widget/K;->c:Z

    if-eqz v2, :cond_d

    if-eqz v5, :cond_c

    iget v1, v1, Landroid/support/v4/widget/K;->rightMargin:I

    :goto_b
    if-gtz v1, :cond_d

    const/4 v1, 0x1

    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v6, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    if-eq v7, v2, :cond_b

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->i:F

    sub-float/2addr v2, v8

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    int-to-float v8, v8

    mul-float/2addr v2, v8

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->i:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v4

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v2, v8

    if-eqz v5, :cond_a

    neg-int v2, v2

    :cond_a
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v1, :cond_b

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->i:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v2, v8

    :goto_e
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    :cond_b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d

    :cond_c
    iget v1, v1, Landroid/support/v4/widget/K;->leftMargin:I

    goto :goto_b

    :cond_d
    const/4 v1, 0x0

    goto :goto_c

    :cond_e
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->i:F

    sub-float/2addr v2, v8

    goto :goto_e

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/K;

    iget-boolean v1, v1, Landroid/support/v4/widget/K;->c:Z

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    sub-int v7, v1, v2

    :goto_f
    if-eqz v10, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v3

    sub-int v12, v2, v3

    if-eqz v9, :cond_17

    invoke-static {v9}, Landroid/support/v4/view/aa;->f(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    :goto_11
    if-eqz v2, :cond_17

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v2

    move v4, v3

    :goto_12
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v13

    move v8, v3

    :goto_13
    if-ge v8, v13, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eq v14, v9, :cond_1b

    if-eqz v10, :cond_18

    move v3, v1

    :goto_14
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    if-eqz v10, :cond_19

    move v3, v7

    :goto_15
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    if-lt v15, v6, :cond_1a

    move/from16 v0, v16

    if-lt v0, v4, :cond_1a

    if-gt v3, v5, :cond_1a

    move/from16 v0, v17

    if-gt v0, v2, :cond_1a

    const/4 v3, 0x4

    :goto_16
    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    :goto_17
    if-ge v1, v12, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v7

    goto/16 :goto_f

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto/16 :goto_10

    :cond_14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_16

    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    const/4 v2, 0x1

    goto/16 :goto_11

    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_17
    const/4 v3, 0x0

    move v2, v3

    move v4, v3

    move v5, v3

    move v6, v3

    goto/16 :goto_12

    :cond_18
    move v3, v7

    goto/16 :goto_14

    :cond_19
    move v3, v1

    goto :goto_15

    :cond_1a
    const/4 v3, 0x0

    goto :goto_16

    :cond_1b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    return-void

    :cond_1c
    move v1, v5

    goto/16 :goto_a

    :cond_1d
    move v1, v6

    move v3, v7

    goto/16 :goto_9
.end method

.method protected final onMeasure(II)V
    .locals 15

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1e

    if-nez v3, :cond_1e

    const/16 v2, 0x12c

    move v9, v0

    move v11, v2

    :goto_0
    const/4 v2, 0x0

    const/4 v0, -0x1

    sparse-switch v9, :sswitch_data_0

    move v1, v0

    :goto_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, v11, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    sub-int v10, v0, v4

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v12

    const/4 v0, 0x2

    if-le v12, v0, :cond_0

    const-string v0, "SlidingPaneLayout"

    const-string v4, "onMeasure: More than two child views are not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    const/4 v0, 0x0

    move v8, v0

    move v5, v10

    move v7, v2

    :goto_2
    if-ge v8, v12, :cond_c

    invoke-virtual {p0, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/K;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/widget/K;->c:Z

    move v0, v5

    move v2, v3

    :goto_3
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v5, v0

    move v3, v2

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_1e

    const/high16 v0, -0x80000000

    const/16 v1, 0x12c

    move v9, v0

    move v11, v2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Height must not be UNSPECIFIED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v0

    move v2, v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_4
    iget v2, v0, Landroid/support/v4/widget/K;->a:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1d

    iget v2, v0, Landroid/support/v4/widget/K;->a:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/support/v4/widget/K;->width:I

    if-eqz v3, :cond_1c

    :goto_4
    iget v3, v0, Landroid/support/v4/widget/K;->leftMargin:I

    iget v4, v0, Landroid/support/v4/widget/K;->rightMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v4/widget/K;->width:I

    const/4 v14, -0x2

    if-ne v4, v14, :cond_7

    sub-int v3, v10, v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_5
    iget v4, v0, Landroid/support/v4/widget/K;->height:I

    const/4 v14, -0x2

    if-ne v4, v14, :cond_9

    const/high16 v4, -0x80000000

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_6
    invoke-virtual {v13, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v14, -0x80000000

    if-ne v9, v14, :cond_5

    if-le v4, v7, :cond_5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_5
    sub-int v4, v5, v3

    if-gez v4, :cond_b

    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, v0, Landroid/support/v4/widget/K;->b:Z

    or-int/2addr v3, v6

    iget-boolean v0, v0, Landroid/support/v4/widget/K;->b:Z

    if-eqz v0, :cond_6

    iput-object v13, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    :cond_6
    move v0, v4

    move v6, v3

    goto/16 :goto_3

    :cond_7
    iget v4, v0, Landroid/support/v4/widget/K;->width:I

    const/4 v14, -0x1

    if-ne v4, v14, :cond_8

    sub-int v3, v10, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_5

    :cond_8
    iget v3, v0, Landroid/support/v4/widget/K;->width:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_5

    :cond_9
    iget v4, v0, Landroid/support/v4/widget/K;->height:I

    const/4 v14, -0x1

    if-ne v4, v14, :cond_a

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_6

    :cond_a
    iget v4, v0, Landroid/support/v4/widget/K;->height:I

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    goto :goto_7

    :cond_c
    if-nez v6, :cond_d

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1a

    :cond_d
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->e:I

    sub-int v13, v10, v0

    const/4 v0, 0x0

    move v9, v0

    :goto_8
    if-ge v9, v12, :cond_1a

    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_f

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/K;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_f

    iget v2, v0, Landroid/support/v4/widget/K;->width:I

    if-nez v2, :cond_10

    iget v2, v0, Landroid/support/v4/widget/K;->a:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_10

    const/4 v2, 0x1

    move v8, v2

    :goto_9
    if-eqz v8, :cond_11

    const/4 v2, 0x0

    move v4, v2

    :goto_a
    if-eqz v6, :cond_15

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    if-eq v14, v2, :cond_15

    iget v2, v0, Landroid/support/v4/widget/K;->width:I

    if-gez v2, :cond_f

    if-gt v4, v13, :cond_e

    iget v2, v0, Landroid/support/v4/widget/K;->a:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_f

    :cond_e
    if-eqz v8, :cond_14

    iget v2, v0, Landroid/support/v4/widget/K;->height:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_12

    const/high16 v0, -0x80000000

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_b
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v14, v2, v0}, Landroid/view/View;->measure(II)V

    :cond_f
    :goto_c
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_8

    :cond_10
    const/4 v2, 0x0

    move v8, v2

    goto :goto_9

    :cond_11
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move v4, v2

    goto :goto_a

    :cond_12
    iget v2, v0, Landroid/support/v4/widget/K;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_13

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_b

    :cond_13
    iget v0, v0, Landroid/support/v4/widget/K;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_b

    :cond_14
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_b

    :cond_15
    iget v2, v0, Landroid/support/v4/widget/K;->a:F

    const/4 v8, 0x0

    cmpl-float v2, v2, v8

    if-lez v2, :cond_f

    iget v2, v0, Landroid/support/v4/widget/K;->width:I

    if-nez v2, :cond_18

    iget v2, v0, Landroid/support/v4/widget/K;->height:I

    const/4 v8, -0x2

    if-ne v2, v8, :cond_16

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_d
    if-eqz v6, :cond_19

    iget v8, v0, Landroid/support/v4/widget/K;->leftMargin:I

    iget v0, v0, Landroid/support/v4/widget/K;->rightMargin:I

    add-int/2addr v0, v8

    sub-int v0, v10, v0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    if-eq v4, v0, :cond_f

    invoke-virtual {v14, v8, v2}, Landroid/view/View;->measure(II)V

    goto :goto_c

    :cond_16
    iget v2, v0, Landroid/support/v4/widget/K;->height:I

    const/4 v8, -0x1

    if-ne v2, v8, :cond_17

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_d

    :cond_17
    iget v2, v0, Landroid/support/v4/widget/K;->height:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_d

    :cond_18
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_d

    :cond_19
    const/4 v8, 0x0

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v0, v0, Landroid/support/v4/widget/K;->a:F

    int-to-float v8, v8

    mul-float/2addr v0, v8

    div-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v14, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_c

    :cond_1a
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v11, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    iput-boolean v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    invoke-virtual {v0}, Landroid/support/v4/widget/P;->a()I

    move-result v0

    if-eqz v0, :cond_1b

    if-nez v6, :cond_1b

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    invoke-virtual {v0}, Landroid/support/v4/widget/P;->d()V

    :cond_1b
    return-void

    :cond_1c
    move v0, v5

    goto/16 :goto_3

    :cond_1d
    move v2, v3

    goto/16 :goto_4

    :cond_1e
    move v9, v0

    move v11, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-virtual {p1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Z

    :cond_1
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->a:Z

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a(I)Z

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->a:Z

    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Z

    goto :goto_0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/P;->b(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:F

    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:F

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:F

    sub-float v2, v0, v2

    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:F

    sub-float v3, v1, v3

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/P;

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    int-to-float v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-static {v2, v0, v1}, Landroid/support/v4/widget/P;->b(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->a(I)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setCoveredFadeColor(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:I

    return-void
.end method

.method public final setPanelSlideListener$14b5545(Landroid/support/v7/app/h;)V
    .locals 0

    return-void
.end method

.method public final setParallaxDistance(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    return-void
.end method

.method public final setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setShadowResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setShadowResourceLeft(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setShadowResourceRight(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setSliderFadeColor(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->a:I

    return-void
.end method
