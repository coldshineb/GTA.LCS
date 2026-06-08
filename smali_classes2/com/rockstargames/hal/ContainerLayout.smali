.class public Lcom/rockstargames/hal/ContainerLayout;
.super Landroid/widget/AbsoluteLayout;
.source "ContainerLayout.java"


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
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    .line 22
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    .line 24
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/ContainerLayout;->transformOffset:Landroid/graphics/PointF;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/rockstargames/hal/ContainerLayout;->canInvalidate:Z

    .line 186
    iput-boolean p1, p0, Lcom/rockstargames/hal/ContainerLayout;->clippingChildren:Z

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 49
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 53
    const-string v1, "ContainerLayout"

    const-string v2, "Error attempting to dispatch draw:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 203
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Lcom/rockstargames/hal/ContainerLayout;->canInvalidate:Z

    .line 210
    iget-boolean p1, p0, Lcom/rockstargames/hal/ContainerLayout;->clippingChildren:Z

    if-eqz p1, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2

    add-int/2addr p3, p1

    int-to-float p3, p3

    add-int/2addr p4, p2

    int-to-float p4, p4

    .line 64
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    int-to-float v1, p2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 71
    iget-object p1, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 72
    iget-object p1, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iput p3, p1, Landroid/graphics/RectF;->right:F

    .line 73
    iget-object p1, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iput p4, p1, Landroid/graphics/RectF;->bottom:F

    .line 75
    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->updateLayoutParams()V

    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setClipChildren(Z)V

    .line 191
    iput-boolean p1, p0, Lcom/rockstargames/hal/ContainerLayout;->clippingChildren:Z

    return-void
.end method

.method public setTransform(FFFFFF)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    const/16 v0, 0x10

    .line 83
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    .line 85
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    .line 86
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformOffset:Landroid/graphics/PointF;

    iput p5, v0, Landroid/graphics/PointF;->x:F

    .line 90
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformOffset:Landroid/graphics/PointF;

    iput p6, v0, Landroid/graphics/PointF;->y:F

    .line 92
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p3, v0, p1

    const/4 p1, 0x2

    aput p5, v0, p1

    const/4 p1, 0x3

    .line 93
    aput p2, v0, p1

    const/4 p1, 0x4

    aput p4, v0, p1

    const/4 p1, 0x5

    aput p6, v0, p1

    const/4 p1, 0x6

    const/4 p2, 0x0

    .line 94
    aput p2, v0, p1

    const/4 p1, 0x7

    aput p2, v0, p1

    const/16 p1, 0x8

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v0, p1

    .line 95
    iget-object p1, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 97
    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->updateLayoutParams()V

    .line 99
    iget-boolean p1, p0, Lcom/rockstargames/hal/ContainerLayout;->canInvalidate:Z

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->invalidate()V

    .line 102
    iput-boolean v1, p0, Lcom/rockstargames/hal/ContainerLayout;->canInvalidate:Z

    :cond_1
    return-void
.end method

.method protected updateLayoutParams()V
    .locals 7

    .line 109
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 115
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->matrixValues:[F

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget-object v3, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    const/4 v2, 0x5

    aget v3, v0, v2

    iget-object v4, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 120
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 123
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 127
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    aget v3, v0, v1

    iget-object v4, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    aput v3, v0, v1

    .line 128
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    aget v1, v0, v2

    iget-object v3, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v3

    aput v1, v0, v2

    .line 130
    iget-object v0, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->offsetMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/ContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 154
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

    .line 155
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 159
    :cond_1
    instance-of v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v1, :cond_4

    .line 161
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 163
    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    .line 164
    iget-object v3, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    .line 165
    iget-object v4, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    .line 166
    iget-object v5, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    .line 168
    iget v6, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    if-ne v6, v2, :cond_3

    iget v6, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    if-ne v6, v3, :cond_3

    iget v6, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v6, v4, :cond_3

    iget v6, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-eq v6, v5, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 170
    :cond_3
    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    iput v4, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 173
    iget-object v2, p0, Lcom/rockstargames/hal/ContainerLayout;->transformedRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 174
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 179
    :cond_4
    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    iget-object v1, p0, Lcom/rockstargames/hal/ContainerLayout;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
