.class final Landroid/support/v4/view/aP;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/aY;


# instance fields
.field private a:Landroid/support/v4/view/aL;


# direct methods
.method constructor <init>(Landroid/support/v4/view/aL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/aP;->a:Landroid/support/v4/view/aL;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/view/aP;->a:Landroid/support/v4/view/aL;

    invoke-static {v0}, Landroid/support/v4/view/aL;->c(Landroid/support/v4/view/aL;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/aa;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/aP;->a:Landroid/support/v4/view/aL;

    invoke-static {v0}, Landroid/support/v4/view/aL;->a(Landroid/support/v4/view/aL;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/aP;->a:Landroid/support/v4/view/aL;

    invoke-static {v0}, Landroid/support/v4/view/aL;->a(Landroid/support/v4/view/aL;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/support/v4/view/aY;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/support/v4/view/aY;

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Landroid/support/v4/view/aY;->a(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/view/aP;->a:Landroid/support/v4/view/aL;

    invoke-static {v0}, Landroid/support/v4/view/aL;->c(Landroid/support/v4/view/aL;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/aP;->a:Landroid/support/v4/view/aL;

    invoke-static {v0}, Landroid/support/v4/view/aL;->c(Landroid/support/v4/view/aL;)I

    move-result v0

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/aa;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/support/v4/view/aP;->a:Landroid/support/v4/view/aL;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/support/v4/view/aL;->a(Landroid/support/v4/view/aL;I)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/aP;->a:Landroid/support/v4/view/aL;

    invoke-static {v0}, Landroid/support/v4/view/aL;->b(Landroid/support/v4/view/aL;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/aP;->a:Landroid/support/v4/view/aL;

    invoke-static {v0}, Landroid/support/v4/view/aL;->b(Landroid/support/v4/view/aL;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/support/v4/view/aY;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/support/v4/view/aY;

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Landroid/support/v4/view/aY;->b(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/support/v4/view/aY;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/support/v4/view/aY;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/support/v4/view/aY;->c(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
