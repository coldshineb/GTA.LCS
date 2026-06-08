.class final Landroid/support/v7/internal/view/i;
.super Landroid/support/v4/view/aZ;


# instance fields
.field private a:Z

.field private b:I

.field private synthetic c:Landroid/support/v7/internal/view/h;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/h;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-direct {p0}, Landroid/support/v4/view/aZ;-><init>()V

    iput-boolean v0, p0, Landroid/support/v7/internal/view/i;->a:Z

    iput v0, p0, Landroid/support/v7/internal/view/i;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/internal/view/i;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/i;->a:Z

    iget-object v0, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-static {v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v7/internal/view/h;)Landroid/support/v4/view/aY;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-static {v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v7/internal/view/h;)Landroid/support/v4/view/aY;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/aY;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v7/internal/view/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/internal/view/i;->b:I

    iget-object v1, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-static {v1}, Landroid/support/v7/internal/view/h;->c(Landroid/support/v7/internal/view/h;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-static {v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v7/internal/view/h;)Landroid/support/v4/view/aY;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-static {v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v7/internal/view/h;)Landroid/support/v4/view/aY;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/aY;->b(Landroid/view/View;)V

    :cond_0
    iput v2, p0, Landroid/support/v7/internal/view/i;->b:I

    iput-boolean v2, p0, Landroid/support/v7/internal/view/i;->a:Z

    iget-object v0, p0, Landroid/support/v7/internal/view/i;->c:Landroid/support/v7/internal/view/h;

    invoke-static {v0}, Landroid/support/v7/internal/view/h;->b(Landroid/support/v7/internal/view/h;)V

    :cond_1
    return-void
.end method
