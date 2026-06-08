.class public Lcom/rockstargames/hal/ContainerLayout;
.super Landroid/widget/AbsoluteLayout;


# instance fields
.field protected boundsRect:Landroid/graphics/RectF;

.field canInvalidate:Z

.field clippingChildren:Z

.field protected matrix:Landroid/graphics/Matrix;

.field protected matrixValues:[F

.field protected offsetMatrix:Landroid/graphics/Matrix;

.field protected offsetMatrixValues:[F

.field protected transformOffset:Landroid/graphics/PointF;

.field protected transformedRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformOffset:Landroid/graphics/PointF;

    iput-boolean v1, p0, Lcom/rockstargames/hal/ContainerLayout;->canInvalidate:Z

    iput-boolean v1, p0, Lcom/rockstargames/hal/ContainerLayout;->clippingChildren:Z

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ContainerLayout"

    const-string v2, "Error attempting to dispatch draw:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/ContainerLayout;->canInvalidate:Z

    iget-boolean v0, p0, Lcom/rockstargames/hal/ContainerLayout;->clippingChildren:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBounds(IIII)V
    .locals 4

    add-int v0, p1, p3

    int-to-float v0, v0

    add-int v1, p2, p4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, p2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    int-to-float v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    int-to-float v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->updateLayoutParams()V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setClipChildren(Z)V

    iput-boolean p1, p0, Lcom/rockstargames/hal/ContainerLayout;->clippingChildren:Z

    return-void
.end method

.method public setTransform(FFFFFF)V
    .locals 4

    const/16 v1, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformOffset:Landroid/graphics/PointF;

    iput p5, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformOffset:Landroid/graphics/PointF;

    iput p6, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    aput p1, v0, v3

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x1

    aput p3, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x2

    aput p5, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x3

    aput p2, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x4

    aput p4, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x5

    aput p6, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->updateLayoutParams()V

    iget-boolean v0, p0, Lcom/rockstargames/hal/ContainerLayout;->canInvalidate:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->invalidate()V

    iput-boolean v3, p0, Lcom/rockstargames/hal/ContainerLayout;->canInvalidate:Z

    :cond_1
    return-void
.end method

.method protected updateLayoutParams()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    const/16 v2, 0x9

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    aget v1, v0, v5

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    aget v1, v0, v6

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    aput v1, v0, v6

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    aget v1, v0, v5

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    aget v1, v0, v6

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    aput v1, v0, v6

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    if-ne v6, v2, :cond_3

    iget v6, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    if-ne v6, v3, :cond_3

    iget v6, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v6, v4, :cond_3

    iget v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-eq v0, v5, :cond_0

    :cond_3
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v0, v1

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    move-object v0, v1

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    invoke-virtual {p0, v1}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method
