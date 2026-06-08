.class public Lcom/rockstargames/hal/andDrawingView;
.super Lcom/rockstargames/hal/andView;


# static fields
.field static staticCount:I


# instance fields
.field public shapes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rockstargames/hal/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    new-instance v0, Lcom/rockstargames/hal/m;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/m;-><init>(Lcom/rockstargames/hal/andDrawingView;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andDrawingView;->setView(Landroid/view/View;)V

    sget v0, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andDrawingView;
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/andDrawingView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andDrawingView;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public addPoint(IFF)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/l;

    invoke-virtual {v0, p2, p3}, Lcom/rockstargames/hal/l;->a(FF)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method

.method public clear(I)V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/l;

    iget-boolean v1, v0, Lcom/rockstargames/hal/l;->e:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to clear a filled shape!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, v0, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rockstargames/hal/l;->b:Z

    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method

.method public createShape(Z)I
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    new-instance v1, Lcom/rockstargames/hal/l;

    invoke-direct {v1, p1}, Lcom/rockstargames/hal/l;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected finalize()V
    .locals 1

    sget v0, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method public invalidate()V
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/m;

    invoke-virtual {v0}, Lcom/rockstargames/hal/m;->invalidate()V

    return-void
.end method

.method public removePoint(II)V
    .locals 6

    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/l;

    iget-boolean v1, v0, Lcom/rockstargames/hal/l;->e:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to remove a point from a filled shape!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, v0, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, v0, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 9

    const/4 v3, 0x0

    iget v0, p0, Lcom/rockstargames/hal/andDrawingView;->width:F

    iget v1, p0, Lcom/rockstargames/hal/andDrawingView;->height:F

    invoke-super/range {p0 .. p6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    iget v2, p0, Lcom/rockstargames/hal/andDrawingView;->width:F

    div-float v5, v2, v0

    iget v0, p0, Lcom/rockstargames/hal/andDrawingView;->height:F

    div-float v6, v0, v1

    move v4, v3

    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/rockstargames/hal/l;

    iget-boolean v0, v1, Lcom/rockstargames/hal/l;->e:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    new-array v7, v0, [F

    move v2, v3

    :goto_1
    iget-object v0, v1, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    shl-int/lit8 v8, v2, 0x1

    iget-object v0, v1, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v5

    aput v0, v7, v8

    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v8, v0, 0x1

    iget-object v0, v1, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v6

    aput v0, v7, v8

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v1, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    iget-object v0, v1, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v3

    :goto_2
    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    aget v2, v7, v0

    add-int/lit8 v8, v0, 0x1

    aget v8, v7, v8

    invoke-static {v1, v2, v8}, Lcom/rockstargames/hal/l;->a(Lcom/rockstargames/hal/l;FF)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_1
    iget-boolean v0, v1, Lcom/rockstargames/hal/l;->b:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setFillColour(IIIII)V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/l;

    iget-object v0, v0, Lcom/rockstargames/hal/l;->d:Landroid/graphics/Paint;

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method

.method public setPoints(I[F)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/l;

    invoke-virtual {v0, p2}, Lcom/rockstargames/hal/l;->a([F)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method

.method public setStrokeColour(IIIII)V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/l;

    iget-object v0, v0, Lcom/rockstargames/hal/l;->c:Landroid/graphics/Paint;

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method

.method public setStrokeThickness(IF)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/l;

    iget-object v0, v0, Lcom/rockstargames/hal/l;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method
