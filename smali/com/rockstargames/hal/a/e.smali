.class final Lcom/rockstargames/hal/a/e;
.super Landroid/support/v4/view/U;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/a/b;


# direct methods
.method private constructor <init>(Lcom/rockstargames/hal/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/rockstargames/hal/a/e;->a:Lcom/rockstargames/hal/a/b;

    invoke-direct {p0}, Landroid/support/v4/view/U;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockstargames/hal/a/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockstargames/hal/a/e;-><init>(Lcom/rockstargames/hal/a/b;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/a/e;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v0}, Lcom/rockstargames/hal/a/b;->a(Lcom/rockstargames/hal/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/a/e;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v0}, Lcom/rockstargames/hal/a/b;->b(Lcom/rockstargames/hal/a/b;)I

    move-result v0

    iget-object v1, p0, Lcom/rockstargames/hal/a/e;->a:Lcom/rockstargames/hal/a/b;

    iget v1, v1, Lcom/rockstargames/hal/a/b;->a:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/a/e;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v0}, Lcom/rockstargames/hal/a/b;->a(Lcom/rockstargames/hal/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/a/e;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v0}, Lcom/rockstargames/hal/a/b;->a(Lcom/rockstargames/hal/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/a/e;->a:Lcom/rockstargames/hal/a/b;

    iget-object v1, p0, Lcom/rockstargames/hal/a/e;->a:Lcom/rockstargames/hal/a/b;

    iget v1, v1, Lcom/rockstargames/hal/a/b;->a:I

    invoke-static {v0, v1}, Lcom/rockstargames/hal/a/b;->a(Lcom/rockstargames/hal/a/b;I)I

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/view/U;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/rockstargames/hal/a/e;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v2}, Lcom/rockstargames/hal/a/b;->a(Lcom/rockstargames/hal/a/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/rockstargames/hal/a/e;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v2}, Lcom/rockstargames/hal/a/b;->a(Lcom/rockstargames/hal/a/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method
