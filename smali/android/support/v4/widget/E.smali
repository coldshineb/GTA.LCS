.class public final Landroid/support/v4/widget/E;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/Object;

.field b:Landroid/support/v4/widget/F;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/I;

    invoke-direct {v0}, Landroid/support/v4/widget/I;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/widget/F;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/E;->a:Ljava/lang/Object;

    return-void

    :cond_0
    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/H;

    invoke-direct {v0}, Landroid/support/v4/widget/H;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/G;

    invoke-direct {v0}, Landroid/support/v4/widget/G;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/widget/E;-><init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/widget/E;
    .locals 2

    new-instance v0, Landroid/support/v4/widget/E;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/E;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public final a(IIIIIIII)V
    .locals 10

    iget-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    iget-object v1, p0, Landroid/support/v4/widget/E;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v5, p4

    invoke-interface/range {v0 .. v9}, Landroid/support/v4/widget/F;->a(Ljava/lang/Object;IIIIIIII)V

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    iget-object v1, p0, Landroid/support/v4/widget/E;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/F;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(IIIIII)Z
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    iget-object v1, p0, Landroid/support/v4/widget/E;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v5, v4

    move v6, v4

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/support/v4/widget/F;->a(Ljava/lang/Object;IIIIII)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    iget-object v1, p0, Landroid/support/v4/widget/E;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/F;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    iget-object v1, p0, Landroid/support/v4/widget/E;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/F;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    iget-object v1, p0, Landroid/support/v4/widget/E;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/F;->h(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final e()F
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    iget-object v1, p0, Landroid/support/v4/widget/E;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/F;->d(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    iget-object v1, p0, Landroid/support/v4/widget/E;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/F;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/E;->b:Landroid/support/v4/widget/F;

    iget-object v1, p0, Landroid/support/v4/widget/E;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/F;->f(Ljava/lang/Object;)V

    return-void
.end method
