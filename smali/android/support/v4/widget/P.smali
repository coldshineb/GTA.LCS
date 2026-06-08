.class public final Landroid/support/v4/widget/P;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:[F

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:[I

.field private h:[I

.field private i:[I

.field private j:I

.field private k:Landroid/view/VelocityTracker;

.field private l:I

.field private final m:Landroid/support/v4/widget/R;

.field private n:Landroid/view/View;

.field private o:Z

.field private final p:Landroid/view/ViewGroup;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/widget/Q;

    invoke-direct {v0}, Landroid/support/v4/widget/Q;-><init>()V

    return-void
.end method

.method private static a(FFF)F
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, p1

    if-gez v2, :cond_1

    move p2, v0

    :cond_0
    :goto_0
    return p2

    :cond_1
    cmpl-float v1, v1, p2

    if-lez v1, :cond_2

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    neg-float p2, p2

    goto :goto_0

    :cond_2
    move p2, p0

    goto :goto_0
.end method

.method private a(III)I
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/P;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, v1

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v0, v3

    float-to-double v4, v0

    const-wide v6, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v4, v6

    double-to-float v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_1

    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_1
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method private a(FF)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Landroid/support/v4/widget/P;->o:Z

    iget-object v0, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    iget-object v1, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/widget/R;->a(Landroid/view/View;F)V

    iput-boolean v2, p0, Landroid/support/v4/widget/P;->o:Z

    iget v0, p0, Landroid/support/v4/widget/P;->a:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0, v2}, Landroid/support/v4/widget/P;->d(I)V

    :cond_0
    return-void
.end method

.method private a(FFI)V
    .locals 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v4/widget/P;->c:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/P;->c:[F

    array-length v2, v2

    if-gt v2, p3, :cond_2

    :cond_0
    add-int/lit8 v2, p3, 0x1

    new-array v2, v2, [F

    add-int/lit8 v3, p3, 0x1

    new-array v3, v3, [F

    add-int/lit8 v4, p3, 0x1

    new-array v4, v4, [F

    add-int/lit8 v5, p3, 0x1

    new-array v5, v5, [F

    add-int/lit8 v6, p3, 0x1

    new-array v6, v6, [I

    add-int/lit8 v7, p3, 0x1

    new-array v7, v7, [I

    add-int/lit8 v8, p3, 0x1

    new-array v8, v8, [I

    iget-object v9, p0, Landroid/support/v4/widget/P;->c:[F

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/support/v4/widget/P;->c:[F

    iget-object v10, p0, Landroid/support/v4/widget/P;->c:[F

    array-length v10, v10

    invoke-static {v9, v0, v2, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/P;->d:[F

    iget-object v10, p0, Landroid/support/v4/widget/P;->d:[F

    array-length v10, v10

    invoke-static {v9, v0, v3, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/P;->e:[F

    iget-object v10, p0, Landroid/support/v4/widget/P;->e:[F

    array-length v10, v10

    invoke-static {v9, v0, v4, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/P;->f:[F

    iget-object v10, p0, Landroid/support/v4/widget/P;->f:[F

    array-length v10, v10

    invoke-static {v9, v0, v5, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/P;->g:[I

    iget-object v10, p0, Landroid/support/v4/widget/P;->g:[I

    array-length v10, v10

    invoke-static {v9, v0, v6, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/P;->h:[I

    iget-object v10, p0, Landroid/support/v4/widget/P;->h:[I

    array-length v10, v10

    invoke-static {v9, v0, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/P;->i:[I

    iget-object v10, p0, Landroid/support/v4/widget/P;->i:[I

    array-length v10, v10

    invoke-static {v9, v0, v8, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Landroid/support/v4/widget/P;->c:[F

    iput-object v3, p0, Landroid/support/v4/widget/P;->d:[F

    iput-object v4, p0, Landroid/support/v4/widget/P;->e:[F

    iput-object v5, p0, Landroid/support/v4/widget/P;->f:[F

    iput-object v6, p0, Landroid/support/v4/widget/P;->g:[I

    iput-object v7, p0, Landroid/support/v4/widget/P;->h:[I

    iput-object v8, p0, Landroid/support/v4/widget/P;->i:[I

    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/P;->c:[F

    iget-object v3, p0, Landroid/support/v4/widget/P;->e:[F

    aput p1, v3, p3

    aput p1, v2, p3

    iget-object v2, p0, Landroid/support/v4/widget/P;->d:[F

    iget-object v3, p0, Landroid/support/v4/widget/P;->f:[F

    aput p2, v3, p3

    aput p2, v2, p3

    iget-object v2, p0, Landroid/support/v4/widget/P;->g:[I

    float-to-int v3, p1

    float-to-int v4, p2

    iget-object v5, p0, Landroid/support/v4/widget/P;->p:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    if-ge v3, v5, :cond_3

    move v0, v1

    :cond_3
    iget-object v5, p0, Landroid/support/v4/widget/P;->p:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    if-ge v4, v5, :cond_4

    or-int/lit8 v0, v0, 0x4

    :cond_4
    iget-object v5, p0, Landroid/support/v4/widget/P;->p:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    if-le v3, v5, :cond_5

    or-int/lit8 v0, v0, 0x2

    :cond_5
    iget-object v3, p0, Landroid/support/v4/widget/P;->p:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    if-le v4, v3, :cond_6

    or-int/lit8 v0, v0, 0x8

    :cond_6
    aput v0, v2, p3

    iget v0, p0, Landroid/support/v4/widget/P;->j:I

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/P;->j:I

    return-void
.end method

.method private a(FFII)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/P;->g:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Landroid/support/v4/widget/P;->l:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/P;->i:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/P;->h:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    cmpg-float v3, v1, v4

    if-gtz v3, :cond_1

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/P;->h:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(IIII)Z
    .locals 14

    iget-object v1, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v1, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v1}, Landroid/support/v4/widget/E;->g()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/widget/P;->d(I)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v7, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/P;->b(III)I

    move-result v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v0, p4

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/P;->b(III)I

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int v12, v2, v11

    add-int v13, v1, v10

    if-eqz v8, :cond_1

    int-to-float v1, v2

    int-to-float v2, v12

    div-float/2addr v1, v2

    move v2, v1

    :goto_1
    if-eqz v9, :cond_2

    int-to-float v1, v11

    int-to-float v10, v12

    div-float/2addr v1, v10

    :goto_2
    iget-object v10, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v10, v7}, Landroid/support/v4/widget/R;->c(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, v5, v8, v7}, Landroid/support/v4/widget/P;->a(III)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v6, v9, v8}, Landroid/support/v4/widget/P;->a(III)I

    move-result v8

    int-to-float v7, v7

    mul-float/2addr v2, v7

    int-to-float v7, v8

    mul-float/2addr v1, v7

    add-float/2addr v1, v2

    float-to-int v7, v1

    const/4 v2, 0x0

    iget-object v1, v2, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    iget-object v2, v2, Landroid/support/v4/widget/E;->a:Ljava/lang/Object;

    invoke-interface/range {v1 .. v7}, Landroid/support/v4/widget/F;->a(Ljava/lang/Object;IIIII)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/support/v4/widget/P;->d(I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    int-to-float v2, v13

    div-float/2addr v1, v2

    move v2, v1

    goto :goto_1

    :cond_2
    int-to-float v1, v10

    int-to-float v10, v13

    div-float/2addr v1, v10

    goto :goto_2
.end method

.method private a(Landroid/view/View;FF)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/R;->c(Landroid/view/View;)I

    move-result v2

    if-lez v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method

.method private static b(III)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p1, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-le v0, p2, :cond_2

    if-gtz p0, :cond_0

    neg-int p2, p2

    goto :goto_0

    :cond_2
    move p2, p0

    goto :goto_0
.end method

.method private b(FFI)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/P;->a(FFII)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/P;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/P;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/P;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/P;->h:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    iget-object v1, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/R;->a(II)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/support/v4/widget/P;->b:I

    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/R;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput p2, p0, Landroid/support/v4/widget/P;->b:I

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/P;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/P;->c:[F

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/P;->c:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/P;->d:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/P;->e:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/P;->f:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/P;->g:[I

    aput v2, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/P;->h:[I

    aput v2, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/P;->i:[I

    aput v2, v0, p1

    iget v0, p0, Landroid/support/v4/widget/P;->j:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/P;->j:I

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-static {p1}, Landroid/support/v4/view/M;->c(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/P;->e:[F

    aput v3, v5, v2

    iget-object v3, p0, Landroid/support/v4/widget/P;->f:[F

    aput v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/P;->p:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/widget/P;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Landroid/support/v4/widget/P;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v4/widget/P;->a:I

    iget-object v0, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/R;->a(I)V

    iget v0, p0, Landroid/support/v4/widget/P;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/P;->b:I

    invoke-static {v0, v1}, Landroid/support/v4/view/W;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    invoke-static {v0, v3, v3}, Landroid/support/v4/widget/P;->a(FFF)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/P;->b:I

    invoke-static {v1, v2}, Landroid/support/v4/view/W;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    invoke-static {v1, v3, v3}, Landroid/support/v4/widget/P;->a(FFF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/P;->a(FF)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/P;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/P;->l:I

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/P;->p:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/widget/P;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    iput p2, p0, Landroid/support/v4/widget/P;->b:I

    iget-object v0, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/R;->b(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/P;->d(I)V

    return-void
.end method

.method public final a(II)Z
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/widget/P;->o:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/P;->b:I

    invoke-static {v0, v1}, Landroid/support/v4/view/W;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/P;->b:I

    invoke-static {v1, v2}, Landroid/support/v4/view/W;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/P;->a(IIII)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;)I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/P;->c()V

    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    iget v2, p0, Landroid/support/v4/widget/P;->a:I

    if-ne v2, v0, :cond_9

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {p1, v1}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/P;->a(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/P;->b(II)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    if-ne v2, v3, :cond_3

    iget v3, p0, Landroid/support/v4/widget/P;->a:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0, v2, v4}, Landroid/support/v4/widget/P;->b(Landroid/view/View;I)Z

    :cond_3
    iget-object v2, p0, Landroid/support/v4/widget/P;->g:[I

    aget v2, v2, v4

    iget v3, p0, Landroid/support/v4/widget/P;->l:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v2}, Landroid/support/v4/widget/R;->b()V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v3}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v3}, Landroid/support/v4/view/M;->c(Landroid/view/MotionEvent;I)F

    move-result v4

    invoke-static {p1, v3}, Landroid/support/v4/view/M;->d(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-direct {p0, v4, v3, v2}, Landroid/support/v4/widget/P;->a(FFI)V

    iget v5, p0, Landroid/support/v4/widget/P;->a:I

    if-nez v5, :cond_4

    iget-object v3, p0, Landroid/support/v4/widget/P;->g:[I

    aget v2, v3, v2

    iget v3, p0, Landroid/support/v4/widget/P;->l:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v2}, Landroid/support/v4/widget/R;->b()V

    goto :goto_0

    :cond_4
    iget v5, p0, Landroid/support/v4/widget/P;->a:I

    if-ne v5, v6, :cond_2

    float-to-int v4, v4

    float-to-int v3, v3

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/widget/P;->b(II)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v3, v2}, Landroid/support/v4/widget/P;->b(Landroid/view/View;I)Z

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Landroid/support/v4/widget/P;->c:[F

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/P;->d:[F

    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/support/v4/view/M;->c(Landroid/view/MotionEvent;)I

    move-result v4

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_5

    invoke-static {p1, v3}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v5

    invoke-static {p1, v3}, Landroid/support/v4/view/M;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-static {p1, v3}, Landroid/support/v4/view/M;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    iget-object v7, p0, Landroid/support/v4/widget/P;->c:[F

    aget v7, v7, v5

    sub-float v7, v2, v7

    iget-object v8, p0, Landroid/support/v4/widget/P;->d:[F

    aget v8, v8, v5

    sub-float v8, v6, v8

    float-to-int v2, v2

    float-to-int v6, v6

    invoke-virtual {p0, v2, v6}, Landroid/support/v4/widget/P;->b(II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v6, v7, v8}, Landroid/support/v4/widget/P;->a(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    float-to-int v10, v7

    add-int/2addr v10, v9

    iget-object v11, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v11, v6, v10}, Landroid/support/v4/widget/R;->b(Landroid/view/View;I)I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    iget-object v11, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v11, v6}, Landroid/support/v4/widget/R;->d(Landroid/view/View;)I

    iget-object v11, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v11, v6}, Landroid/support/v4/widget/R;->c(Landroid/view/View;)I

    move-result v11

    if-eqz v11, :cond_5

    if-lez v11, :cond_7

    if-ne v10, v9, :cond_7

    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/P;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    invoke-direct {p0, v7, v8, v5}, Landroid/support/v4/widget/P;->b(FFI)V

    iget v7, p0, Landroid/support/v4/widget/P;->a:I

    if-eq v7, v0, :cond_5

    if-eqz v2, :cond_8

    invoke-direct {p0, v6, v5}, Landroid/support/v4/widget/P;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :pswitch_4
    invoke-static {p1, v3}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v4/widget/P;->c(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/support/v4/widget/P;->c()V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Landroid/view/View;II)Z
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/P;->b:I

    invoke-direct {p0, p2, p3, v1, v1}, Landroid/support/v4/widget/P;->a(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget v1, p0, Landroid/support/v4/widget/P;->a:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    :cond_0
    return v0
.end method

.method public final a(Z)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x0

    iget v1, p0, Landroid/support/v4/widget/P;->a:I

    if-ne v1, v8, :cond_5

    invoke-virtual {v7}, Landroid/support/v4/widget/E;->f()Z

    move-result v1

    invoke-virtual {v7}, Landroid/support/v4/widget/E;->b()I

    move-result v2

    invoke-virtual {v7}, Landroid/support/v4/widget/E;->c()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v5, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v3, v5

    if-eqz v4, :cond_0

    iget-object v6, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    if-eqz v5, :cond_1

    iget-object v6, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    iget-object v4, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    iget-object v5, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Landroid/support/v4/widget/R;->a(Landroid/view/View;I)V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v4, v7, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    iget-object v5, v7, Landroid/support/v4/widget/E;->a:Ljava/lang/Object;

    invoke-interface {v4, v5}, Landroid/support/v4/widget/F;->g(Ljava/lang/Object;)I

    move-result v4

    if-ne v2, v4, :cond_4

    invoke-virtual {v7}, Landroid/support/v4/widget/E;->d()I

    move-result v2

    if-ne v3, v2, :cond_4

    invoke-virtual {v7}, Landroid/support/v4/widget/E;->g()V

    move v1, v0

    :cond_4
    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/widget/P;->p:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v4/widget/P;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget v1, p0, Landroid/support/v4/widget/P;->a:I

    if-ne v1, v8, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    return-object v0
.end method

.method public final b(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/P;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/P;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-static {p1}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;)I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/P;->c()V

    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/P;->b(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/P;->a(FFI)V

    invoke-direct {p0, v3, v0}, Landroid/support/v4/widget/P;->b(Landroid/view/View;I)Z

    iget-object v1, p0, Landroid/support/v4/widget/P;->g:[I

    aget v0, v1, v0

    iget v1, p0, Landroid/support/v4/widget/P;->l:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v0}, Landroid/support/v4/widget/R;->b()V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v3}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v3}, Landroid/support/v4/view/M;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v3}, Landroid/support/v4/view/M;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/P;->a(FFI)V

    iget v3, p0, Landroid/support/v4/widget/P;->a:I

    if-nez v3, :cond_3

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/P;->b(II)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/P;->b(Landroid/view/View;I)Z

    iget-object v1, p0, Landroid/support/v4/widget/P;->g:[I

    aget v0, v1, v0

    iget v1, p0, Landroid/support/v4/widget/P;->l:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    invoke-virtual {v0}, Landroid/support/v4/widget/R;->b()V

    goto :goto_0

    :cond_3
    float-to-int v1, v1

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-static {v3, v1, v2}, Landroid/support/v4/widget/P;->b(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/P;->b(Landroid/view/View;I)Z

    goto :goto_0

    :pswitch_3
    iget v1, p0, Landroid/support/v4/widget/P;->a:I

    if-ne v1, v8, :cond_8

    iget v0, p0, Landroid/support/v4/widget/P;->b:I

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    iget-object v2, p0, Landroid/support/v4/widget/P;->e:[F

    iget v3, p0, Landroid/support/v4/widget/P;->b:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/v4/widget/P;->f:[F

    iget v3, p0, Landroid/support/v4/widget/P;->b:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v2, v0

    iget-object v0, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v3, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v3, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v1, :cond_4

    iget-object v5, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    iget-object v6, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v5, v6, v0}, Landroid/support/v4/widget/R;->b(Landroid/view/View;I)I

    move-result v0

    iget-object v5, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    sub-int v3, v0, v3

    invoke-virtual {v5, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    if-eqz v2, :cond_5

    iget-object v3, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    iget-object v5, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/R;->d(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    sub-int/2addr v3, v4

    invoke-virtual {v5, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    iget-object v1, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    iget-object v2, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/R;->a(Landroid/view/View;I)V

    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v4/widget/P;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {p1}, Landroid/support/v4/view/M;->c(Landroid/view/MotionEvent;)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_a

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/P;->c:[F

    aget v5, v5, v2

    sub-float v5, v3, v5

    iget-object v6, p0, Landroid/support/v4/widget/P;->d:[F

    aget v6, v6, v2

    sub-float v6, v4, v6

    invoke-direct {p0, v5, v6, v2}, Landroid/support/v4/widget/P;->b(FFI)V

    iget v7, p0, Landroid/support/v4/widget/P;->a:I

    if-eq v7, v8, :cond_a

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/P;->b(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v5, v6}, Landroid/support/v4/widget/P;->a(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0, v3, v2}, Landroid/support/v4/widget/P;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    invoke-direct {p0, p1}, Landroid/support/v4/widget/P;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1, v3}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/P;->a:I

    if-ne v3, v8, :cond_b

    iget v3, p0, Landroid/support/v4/widget/P;->b:I

    if-ne v2, v3, :cond_b

    invoke-static {p1}, Landroid/support/v4/view/M;->c(Landroid/view/MotionEvent;)I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_f

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/widget/P;->b:I

    if-eq v4, v5, :cond_c

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/P;->b(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    if-ne v5, v6, :cond_c

    iget-object v5, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-direct {p0, v5, v4}, Landroid/support/v4/widget/P;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_c

    iget v0, p0, Landroid/support/v4/widget/P;->b:I

    :goto_3
    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Landroid/support/v4/widget/P;->e()V

    :cond_b
    invoke-direct {p0, v2}, Landroid/support/v4/widget/P;->c(I)V

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_5
    iget v0, p0, Landroid/support/v4/widget/P;->a:I

    if-ne v0, v8, :cond_d

    invoke-direct {p0}, Landroid/support/v4/widget/P;->e()V

    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/widget/P;->c()V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p0, Landroid/support/v4/widget/P;->a:I

    if-ne v0, v8, :cond_e

    invoke-direct {p0, v5, v5}, Landroid/support/v4/widget/P;->a(FF)V

    :cond_e
    invoke-virtual {p0}, Landroid/support/v4/widget/P;->c()V

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final b(I)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/widget/P;->c:[F

    array-length v4, v2

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_4

    iget v2, p0, Landroid/support/v4/widget/P;->j:I

    shl-int v5, v0, v3

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/P;->e:[F

    aget v2, v2, v3

    iget-object v5, p0, Landroid/support/v4/widget/P;->c:[F

    aget v5, v5, v3

    sub-float/2addr v2, v5

    iget-object v5, p0, Landroid/support/v4/widget/P;->f:[F

    aget v5, v5, v3

    iget-object v6, p0, Landroid/support/v4/widget/P;->d:[F

    aget v6, v6, v3

    sub-float/2addr v5, v6

    mul-float/2addr v2, v2

    mul-float/2addr v5, v5

    add-float/2addr v2, v5

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    move v2, v0

    :goto_2
    if-eqz v2, :cond_3

    :goto_3
    return v0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/P;->b:I

    iget-object v0, p0, Landroid/support/v4/widget/P;->c:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/P;->c:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/P;->d:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/P;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/P;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/P;->g:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/P;->h:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/P;->i:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Landroid/support/v4/widget/P;->j:I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/P;->k:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/P;->c()V

    iget v0, p0, Landroid/support/v4/widget/P;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/widget/E;->b()I

    invoke-virtual {v2}, Landroid/support/v4/widget/E;->c()I

    invoke-virtual {v2}, Landroid/support/v4/widget/E;->g()V

    invoke-virtual {v2}, Landroid/support/v4/widget/E;->b()I

    move-result v0

    invoke-virtual {v2}, Landroid/support/v4/widget/E;->c()I

    iget-object v1, p0, Landroid/support/v4/widget/P;->m:Landroid/support/v4/widget/R;

    iget-object v2, p0, Landroid/support/v4/widget/P;->n:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/R;->a(Landroid/view/View;I)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/P;->d(I)V

    return-void
.end method
