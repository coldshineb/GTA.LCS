.class Lcom/rockstargames/hal/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/aC;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/a/b;


# direct methods
.method private constructor <init>(Lcom/rockstargames/hal/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/a/c;->a:Lcom/rockstargames/hal/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockstargames/hal/a/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockstargames/hal/a/c;-><init>(Lcom/rockstargames/hal/a/b;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/rockstargames/hal/a/c;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v0}, Lcom/rockstargames/hal/a/b;->c(Lcom/rockstargames/hal/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/a/c;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v0}, Lcom/rockstargames/hal/a/b;->d(Lcom/rockstargames/hal/a/b;)Lcom/rockstargames/hal/andScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/a/c;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v1}, Lcom/rockstargames/hal/a/b;->d(Lcom/rockstargames/hal/a/b;)Lcom/rockstargames/hal/andScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageWillChange(II)V

    iget-object v0, p0, Lcom/rockstargames/hal/a/c;->a:Lcom/rockstargames/hal/a/b;

    iget v0, v0, Lcom/rockstargames/hal/a/b;->a:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/a/c;->a:Lcom/rockstargames/hal/a/b;

    iput p1, v0, Lcom/rockstargames/hal/a/b;->a:I

    iget-object v0, p0, Lcom/rockstargames/hal/a/c;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v0}, Lcom/rockstargames/hal/a/b;->d(Lcom/rockstargames/hal/a/b;)Lcom/rockstargames/hal/andScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/a/c;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v1}, Lcom/rockstargames/hal/a/b;->d(Lcom/rockstargames/hal/a/b;)Lcom/rockstargames/hal/andScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    iget-object v2, p0, Lcom/rockstargames/hal/a/c;->a:Lcom/rockstargames/hal/a/b;

    iget v2, v2, Lcom/rockstargames/hal/a/b;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageDidChange(II)V

    iget-object v0, p0, Lcom/rockstargames/hal/a/c;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v0, p1}, Lcom/rockstargames/hal/a/b;->b(Lcom/rockstargames/hal/a/b;I)I

    :cond_0
    return-void
.end method
