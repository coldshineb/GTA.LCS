.class public final Lcom/rockstargames/hal/l;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/graphics/Path;

.field public b:Z

.field public c:Landroid/graphics/Paint;

.field public d:Landroid/graphics/Paint;

.field public e:Z

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/l;->b:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/l;->c:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/rockstargames/hal/l;->e:Z

    iget-object v0, p0, Lcom/rockstargames/hal/l;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v0, p0, Lcom/rockstargames/hal/l;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/l;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockstargames/hal/l;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/rockstargames/hal/l;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rockstargames/hal/l;->b(FF)V

    return-void
.end method

.method private b(FF)V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method


# virtual methods
.method public final a(FF)V
    .locals 2

    iget-boolean v0, p0, Lcom/rockstargames/hal/l;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to add a point to a filled shape!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/rockstargames/hal/l;->b(FF)V

    return-void
.end method

.method public final a([F)V
    .locals 3

    iget-boolean v0, p0, Lcom/rockstargames/hal/l;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting set all points to a line!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/rockstargames/hal/l;->b(FF)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/l;->b:Z

    return-void
.end method
