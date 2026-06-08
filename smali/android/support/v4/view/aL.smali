.class public final Landroid/support/v4/view/aL;
.super Ljava/lang/Object;


# static fields
.field private static e:Landroid/support/v4/view/aU;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Runnable;

.field private c:Ljava/lang/Runnable;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/aT;

    invoke-direct {v0}, Landroid/support/v4/view/aT;-><init>()V

    sput-object v0, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/aS;

    invoke-direct {v0}, Landroid/support/v4/view/aS;-><init>()V

    sput-object v0, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/aQ;

    invoke-direct {v0}, Landroid/support/v4/view/aQ;-><init>()V

    sput-object v0, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/aR;

    invoke-direct {v0}, Landroid/support/v4/view/aR;-><init>()V

    sput-object v0, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    goto :goto_0

    :cond_3
    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/view/aO;

    invoke-direct {v0}, Landroid/support/v4/view/aO;-><init>()V

    sput-object v0, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/support/v4/view/aM;

    invoke-direct {v0}, Landroid/support/v4/view/aM;-><init>()V

    sput-object v0, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/aL;->b:Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/support/v4/view/aL;->c:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/aL;->d:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/aL;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/view/aL;I)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/aL;->d:I

    return v0
.end method

.method static synthetic a(Landroid/support/v4/view/aL;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Landroid/support/v4/view/aL;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic c(Landroid/support/v4/view/aL;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/view/aL;->d:I

    return v0
.end method


# virtual methods
.method public final a(F)Landroid/support/v4/view/aL;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/aL;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/aU;->a(Landroid/support/v4/view/aL;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final a(J)Landroid/support/v4/view/aL;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/view/aL;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    invoke-interface {v1, v0, p1, p2}, Landroid/support/v4/view/aU;->a(Landroid/view/View;J)V

    :cond_0
    return-object p0
.end method

.method public final a(Landroid/support/v4/view/aY;)Landroid/support/v4/view/aL;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/aL;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/aU;->a(Landroid/support/v4/view/aL;Landroid/view/View;Landroid/support/v4/view/aY;)V

    :cond_0
    return-object p0
.end method

.method public final a(Landroid/support/v4/view/ba;)Landroid/support/v4/view/aL;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/aL;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/aU;->a(Landroid/view/View;Landroid/support/v4/view/ba;)V

    :cond_0
    return-object p0
.end method

.method public final a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/aL;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/aL;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/aU;->a(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    :cond_0
    return-object p0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/aL;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/aU;->a(Landroid/support/v4/view/aL;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(F)Landroid/support/v4/view/aL;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/aL;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/aU;->b(Landroid/support/v4/view/aL;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/aL;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/aU;->b(Landroid/support/v4/view/aL;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final c(F)Landroid/support/v4/view/aL;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/aL;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/aU;->c(Landroid/support/v4/view/aL;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final d(F)Landroid/support/v4/view/aL;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/view/aL;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/aL;->e:Landroid/support/v4/view/aU;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, p0, v0, v2}, Landroid/support/v4/view/aU;->d(Landroid/support/v4/view/aL;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method
