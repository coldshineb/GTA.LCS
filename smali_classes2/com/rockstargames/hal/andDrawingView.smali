.class public Lcom/rockstargames/hal/andDrawingView;
.super Lcom/rockstargames/hal/andView;
.source "andDrawingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;,
        Lcom/rockstargames/hal/andDrawingView$Shape;
    }
.end annotation


# static fields
.field static staticCount:I


# instance fields
.field public shapes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rockstargames/hal/andDrawingView$Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 173
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;

    invoke-direct {p1, p0}, Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;-><init>(Lcom/rockstargames/hal/andDrawingView;)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andDrawingView;->setView(Landroid/view/View;)V

    .line 22
    sget p1, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andDrawingView;
    .locals 1

    .line 33
    new-instance v0, Lcom/rockstargames/hal/andDrawingView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andDrawingView;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public addPoint(IFF)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rockstargames/hal/andDrawingView$Shape;

    invoke-virtual {p1, p2, p3}, Lcom/rockstargames/hal/andDrawingView$Shape;->addPoint(FF)V

    .line 220
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rockstargames/hal/andDrawingView$Shape;

    invoke-virtual {p1}, Lcom/rockstargames/hal/andDrawingView$Shape;->clear()V

    .line 232
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method

.method public createShape(Z)I
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    new-instance v1, Lcom/rockstargames/hal/andDrawingView$Shape;

    invoke-direct {v1, p1}, Lcom/rockstargames/hal/andDrawingView$Shape;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object p1, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 27
    sget v0, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    .line 28
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;->invalidate()V

    return-void
.end method

.method public removePoint(II)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rockstargames/hal/andDrawingView$Shape;

    invoke-virtual {p1, p2}, Lcom/rockstargames/hal/andDrawingView$Shape;->removePoint(I)V

    .line 226
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 6

    .line 44
    iget v0, p0, Lcom/rockstargames/hal/andDrawingView;->width:F

    .line 45
    iget v1, p0, Lcom/rockstargames/hal/andDrawingView;->height:F

    .line 47
    invoke-super/range {p0 .. p6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    move-object p1, p0

    .line 49
    iget p2, p1, Lcom/rockstargames/hal/andDrawingView;->width:F

    div-float/2addr p2, v0

    .line 50
    iget p3, p1, Lcom/rockstargames/hal/andDrawingView;->height:F

    div-float/2addr p3, v1

    const/4 p4, 0x0

    move p5, p4

    .line 51
    :goto_0
    iget-object p6, p1, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result p6

    if-ge p5, p6, :cond_3

    .line 53
    iget-object p6, p1, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {p6, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/rockstargames/hal/andDrawingView$Shape;

    .line 54
    iget-boolean v0, p6, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    if-nez v0, :cond_2

    .line 56
    iget-object v0, p6, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [F

    move v2, p4

    .line 57
    :goto_1
    iget-object v3, p6, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 59
    iget-object v5, p6, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, p2

    aput v5, v1, v3

    add-int/2addr v3, v4

    .line 60
    iget-object v4, p6, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, p3

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    :cond_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p6, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    .line 64
    iget-object v2, p6, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, p4

    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_1

    .line 66
    aget v3, v1, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    invoke-static {p6, v3, v5}, Lcom/rockstargames/hal/andDrawingView$Shape;->access$000(Lcom/rockstargames/hal/andDrawingView$Shape;FF)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 68
    :cond_1
    iget-boolean v0, p6, Lcom/rockstargames/hal/andDrawingView$Shape;->pathClosed:Z

    if-ne v0, v4, :cond_2

    .line 69
    iget-object p6, p6, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setFillColour(IIIII)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rockstargames/hal/andDrawingView$Shape;

    iget-object p1, p1, Lcom/rockstargames/hal/andDrawingView$Shape;->fillPaint:Landroid/graphics/Paint;

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method

.method public setPoints(I[F)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rockstargames/hal/andDrawingView$Shape;

    invoke-virtual {p1, p2}, Lcom/rockstargames/hal/andDrawingView$Shape;->setPoints([F)V

    .line 238
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method

.method public setStrokeColour(IIIII)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rockstargames/hal/andDrawingView$Shape;

    iget-object p1, p1, Lcom/rockstargames/hal/andDrawingView$Shape;->strokePaint:Landroid/graphics/Paint;

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method

.method public setStrokeThickness(IF)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rockstargames/hal/andDrawingView$Shape;

    iget-object p1, p1, Lcom/rockstargames/hal/andDrawingView$Shape;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDrawingView;->invalidate()V

    return-void
.end method
