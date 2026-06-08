.class public final Lcom/rockstargames/hal/a/d;
.super Lcom/rockstargames/hal/ContainerLayout;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/a/b;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v0}, Lcom/rockstargames/hal/a/b;->a(Lcom/rockstargames/hal/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/rockstargames/hal/a/b;->a(Lcom/rockstargames/hal/a/b;I)I

    iget-object v0, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    invoke-virtual {v0}, Lcom/rockstargames/hal/a/b;->getAdapter()Landroid/support/v4/view/U;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    iget-object v1, v1, Lcom/rockstargames/hal/a/b;->b:Lcom/rockstargames/hal/a/e;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    iget-object v1, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    iget-object v1, v1, Lcom/rockstargames/hal/a/b;->b:Lcom/rockstargames/hal/a/e;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/a/b;->setAdapter(Landroid/support/v4/view/U;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    iget-object v0, v0, Lcom/rockstargames/hal/a/b;->b:Lcom/rockstargames/hal/a/e;

    invoke-virtual {v0}, Lcom/rockstargames/hal/a/e;->c()V

    goto :goto_0
.end method

.method public final removeAllViews()V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v0}, Lcom/rockstargames/hal/a/b;->a(Lcom/rockstargames/hal/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    invoke-static {v0}, Lcom/rockstargames/hal/a/b;->a(Lcom/rockstargames/hal/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/rockstargames/hal/a/b;->a(Lcom/rockstargames/hal/a/b;I)I

    iget-object v0, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    invoke-virtual {v0}, Lcom/rockstargames/hal/a/b;->getAdapter()Landroid/support/v4/view/U;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    iget-object v1, v1, Lcom/rockstargames/hal/a/b;->b:Lcom/rockstargames/hal/a/e;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    iget-object v1, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    iget-object v1, v1, Lcom/rockstargames/hal/a/b;->b:Lcom/rockstargames/hal/a/e;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/a/b;->setAdapter(Landroid/support/v4/view/U;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/a/d;->a:Lcom/rockstargames/hal/a/b;

    iget-object v0, v0, Lcom/rockstargames/hal/a/b;->b:Lcom/rockstargames/hal/a/e;

    invoke-virtual {v0}, Lcom/rockstargames/hal/a/e;->c()V

    goto :goto_0
.end method
