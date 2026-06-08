.class public Lcom/rockstargames/hal/andDrawingView$Shape;
.super Ljava/lang/Object;
.source "andDrawingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andDrawingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shape"
.end annotation


# instance fields
.field public fillPaint:Landroid/graphics/Paint;

.field public filled:Z

.field public path:Landroid/graphics/Path;

.field public pathClosed:Z

.field public points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->pathClosed:Z

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->strokePaint:Landroid/graphics/Paint;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    .line 85
    iput-boolean p1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    .line 86
    iget-object p1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->strokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-boolean p1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    if-eqz p1, :cond_0

    .line 90
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->fillPaint:Landroid/graphics/Paint;

    .line 91
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/andDrawingView$Shape;FF)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/rockstargames/hal/andDrawingView$Shape;->addPointInternal(FF)V

    return-void
.end method

.method private addPointInternal(FF)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addPoint(FF)V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/rockstargames/hal/andDrawingView$Shape;->addPointInternal(FF)V

    return-void

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Attempting to add a point to a filled shape!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 139
    iget-boolean v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->pathClosed:Z

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to clear a filled shape!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->fillPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public removePoint(I)V
    .locals 4

    .line 117
    iget-boolean v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 122
    iget-object p1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 125
    iget-object p1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_1
    return-void

    .line 118
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Attempting to remove a point from a filled shape!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPoints([F)V
    .locals 3

    .line 149
    iget-boolean v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->filled:Z

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    .line 153
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 154
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 155
    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/rockstargames/hal/andDrawingView$Shape;->addPointInternal(FF)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 158
    iput-boolean v2, p0, Lcom/rockstargames/hal/andDrawingView$Shape;->pathClosed:Z

    return-void

    .line 150
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Attempting set all points to a line!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
