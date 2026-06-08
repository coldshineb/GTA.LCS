.class final Landroid/support/v7/internal/widget/SpinnerCompat;
.super Landroid/support/v7/internal/widget/AbsSpinnerCompat;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private A:Z

.field private B:Landroid/graphics/Rect;

.field private w:Landroid/support/v7/widget/D;

.field private x:Landroid/support/v7/internal/widget/S;

.field private y:Landroid/support/v7/internal/widget/O;

.field private z:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, p3, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->B:Landroid/graphics/Rect;

    sget-object v0, Landroid/support/v7/a/a;->aK:[I

    invoke-static {p1, p2, v0, p3, v4}, Lcom/google/android/vending/expansion/downloader/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/google/android/vending/expansion/downloader/c;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a;->aL:I

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/c;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v7/a/a;->aL:I

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v1, Landroid/support/v7/a/a;->aR:I

    invoke-virtual {v0, v1, v4}, Lcom/google/android/vending/expansion/downloader/c;->a(II)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    sget v1, Landroid/support/v7/a/a;->aN:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/c;->a(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->z:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    sget v2, Landroid/support/v7/a/a;->aQ:I

    invoke-virtual {v0, v2}, Lcom/google/android/vending/expansion/downloader/c;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/S;->a(Ljava/lang/CharSequence;)V

    sget v1, Landroid/support/v7/a/a;->aP:I

    invoke-virtual {v0, v1, v4}, Lcom/google/android/vending/expansion/downloader/c;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->A:Z

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/c;->b()V

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->y:Landroid/support/v7/internal/widget/O;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->y:Landroid/support/v7/internal/widget/O;

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/S;->a(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->y:Landroid/support/v7/internal/widget/O;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/c;->c()Landroid/support/v7/internal/widget/W;

    return-void

    :pswitch_0
    new-instance v1, Landroid/support/v7/internal/widget/N;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/N;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;B)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/support/v7/internal/widget/P;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/support/v7/internal/widget/P;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v2, Landroid/support/v7/a/a;->aM:I

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/vending/expansion/downloader/c;->e(II)I

    sget v2, Landroid/support/v7/a/a;->aO:I

    invoke-virtual {v0, v2}, Lcom/google/android/vending/expansion/downloader/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/P;->a(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    new-instance v2, Landroid/support/v7/internal/widget/L;

    invoke-direct {v2, p0, p0, v1}, Landroid/support/v7/internal/widget/L;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Landroid/support/v7/internal/widget/P;)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->w:Landroid/support/v7/widget/D;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/S;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    return-object v0
.end method

.method private a(IZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->e:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/c;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;Z)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, v5, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->A:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->b:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->c:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p1, v5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/internal/widget/v;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setOnItemClickListener(Landroid/support/v7/internal/widget/v;)V

    return-void
.end method

.method public final a(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->e:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/c;->a()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spinner adapter view type count must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    new-instance v1, Landroid/support/v7/internal/widget/O;

    invoke-direct {v1, p1}, Landroid/support/v7/internal/widget/O;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/S;->a(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/support/v7/internal/widget/O;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/O;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->y:Landroid/support/v7/internal/widget/O;

    goto :goto_0
.end method

.method public final getBaseline()I
    .locals 4

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    :cond_1
    return v0

    :cond_2
    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v3, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(IZ)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->e:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/internal/widget/c;->a(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/S;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/S;->a()V

    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onLayout(ZIIII)V

    iput-boolean v9, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->k:Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v1, v3

    iget-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->m:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->c()V

    :cond_0
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->r:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a()V

    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->k:Z

    return-void

    :cond_1
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->n:I

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->n:I

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelectedPositionInt(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->e:Landroid/support/v7/internal/widget/c;

    iget v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->f:I

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v8, v6, v1

    invoke-virtual {v5, v8, v7}, Landroid/support/v7/internal/widget/c;->a(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->removeAllViewsInLayout()V

    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->p:I

    iput v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->f:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->p:I

    invoke-direct {p0, v1, v9}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(IZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {p0}, Landroid/support/v4/view/aa;->e(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->z:I

    invoke-static {v6, v5}, Landroid/support/v4/view/n;->a(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    sparse-switch v5, :sswitch_data_0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->e:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/c;->a()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->invalidate()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->d()V

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->m:Z

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->i:Z

    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->p:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :sswitch_0
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v0, v3

    goto :goto_2

    :sswitch_1
    add-int/2addr v0, v3

    sub-int/2addr v0, v4

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onMeasure(II)V
    .locals 13

    const/4 v3, 0x0

    const/4 v12, -0x2

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onMeasure(II)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v7, :cond_1

    :goto_0
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setMeasuredDimension(II)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v7}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v4, v1, 0xf

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v2, v11, v1

    rsub-int/lit8 v2, v2, 0xf

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v0

    move-object v2, v3

    move v4, v0

    :goto_1
    if-ge v5, v11, :cond_3

    invoke-interface {v7, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v1, :cond_5

    move-object v2, v3

    :goto_2
    invoke-interface {v7, v5, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v2, v9, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->B:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->B:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v7/internal/widget/M;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/M;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/S;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->c:Z

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->w:Landroid/support/v7/widget/D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->w:Landroid/support/v7/widget/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/D;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/S;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->x:Landroid/support/v7/internal/widget/S;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/S;->c()V

    :cond_0
    return v0
.end method

.method public final synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setEnabled(Z)V

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setOnItemClickListener(Landroid/support/v7/internal/widget/v;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
