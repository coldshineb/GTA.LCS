.class public final Landroid/support/v4/view/aa;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/support/v4/view/an;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/am;

    invoke-direct {v0}, Landroid/support/v4/view/am;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/al;

    invoke-direct {v0}, Landroid/support/v4/view/al;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/ak;

    invoke-direct {v0}, Landroid/support/v4/view/ak;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/ai;

    invoke-direct {v0}, Landroid/support/v4/view/ai;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    goto :goto_0

    :cond_3
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/view/ah;

    invoke-direct {v0}, Landroid/support/v4/view/ah;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/view/af;

    invoke-direct {v0}, Landroid/support/v4/view/af;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    goto :goto_0

    :cond_5
    const/16 v1, 0xe

    if-lt v0, v1, :cond_6

    new-instance v0, Landroid/support/v4/view/ag;

    invoke-direct {v0}, Landroid/support/v4/view/ag;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    goto :goto_0

    :cond_6
    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    new-instance v0, Landroid/support/v4/view/ae;

    invoke-direct {v0}, Landroid/support/v4/view/ae;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    new-instance v0, Landroid/support/v4/view/ad;

    invoke-direct {v0}, Landroid/support/v4/view/ad;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    if-lt v0, v1, :cond_9

    new-instance v0, Landroid/support/v4/view/ac;

    invoke-direct {v0}, Landroid/support/v4/view/ac;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    goto :goto_0

    :cond_9
    new-instance v0, Landroid/support/v4/view/ab;

    invoke-direct {v0}, Landroid/support/v4/view/ab;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    goto :goto_0
.end method

.method public static a(III)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/an;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/bb;)Landroid/support/v4/view/bb;
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;Landroid/support/v4/view/bb;)Landroid/support/v4/view/bb;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;F)V

    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/an;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/an;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/T;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;Landroid/support/v4/view/T;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/an;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/support/v4/view/an;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->b(Landroid/view/View;)V

    return-void
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->b(Landroid/view/View;F)V

    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->b(Landroid/view/View;I)V

    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->c(Landroid/view/View;F)V

    return-void
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;F)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/support/v4/view/an;->d(Landroid/view/View;F)V

    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->e(Landroid/view/View;F)V

    return-void
.end method

.method public static f(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->i(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->j(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static j(Landroid/view/View;)Landroid/support/v4/view/aL;
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->k(Landroid/view/View;)Landroid/support/v4/view/aL;

    move-result-object v0

    return-object v0
.end method

.method public static k(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->n(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static l(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->l(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static m(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->m(Landroid/view/View;)V

    return-void
.end method

.method public static n(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->o(Landroid/view/View;)V

    return-void
.end method

.method public static o(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->h(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static p(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->p(Landroid/view/View;)V

    return-void
.end method

.method public static q(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->q(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static r(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->r(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
