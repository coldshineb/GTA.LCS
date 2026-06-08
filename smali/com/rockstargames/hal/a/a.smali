.class public final Lcom/rockstargames/hal/a/a;
.super Landroid/widget/HorizontalScrollView;

# interfaces
.implements Lcom/rockstargames/hal/F;


# instance fields
.field private final a:Lcom/rockstargames/hal/andScrollView;

.field private final b:Lcom/rockstargames/hal/ContainerLayout;

.field private c:Z

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rockstargames/hal/F;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andScrollView;)V
    .locals 4

    const/16 v3, 0x64

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/rockstargames/hal/a/a;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/a/a;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/rockstargames/hal/a/a;->a:Lcom/rockstargames/hal/andScrollView;

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/a/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/a/a;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Lcom/rockstargames/hal/ContainerLayout;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/hal/a/a;->b:Lcom/rockstargames/hal/ContainerLayout;

    iget-object v0, p0, Lcom/rockstargames/hal/a/a;->b:Lcom/rockstargames/hal/ContainerLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockstargames/hal/a/a;->b:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/a/a;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/rockstargames/hal/F;)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/rockstargames/hal/andImage;Z)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/rockstargames/hal/F;)V
    .locals 4

    invoke-interface {p1}, Lcom/rockstargames/hal/F;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/rockstargames/hal/ContainerLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/rockstargames/hal/ContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v1, v2}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d_()V
    .locals 0

    return-void
.end method

.method public final e_()V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/a/a;->b:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v0}, Lcom/rockstargames/hal/ContainerLayout;->removeAllViews()V

    return-void
.end method

.method public final getContainer()Lcom/rockstargames/hal/ContainerLayout;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/a/a;->b:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/rockstargames/hal/a/a;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    instance-of v0, v1, Lcom/rockstargames/hal/F;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/rockstargames/hal/F;

    invoke-interface {v0, p0}, Lcom/rockstargames/hal/F;->a(Lcom/rockstargames/hal/F;)V

    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final onScrollChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    iget-boolean v0, p0, Lcom/rockstargames/hal/a/a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/a/a;->a:Lcom/rockstargames/hal/andScrollView;

    iget-object v1, p0, Lcom/rockstargames/hal/a/a;->a:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andScrollView;->scrollViewDidScroll(I)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/rockstargames/hal/a/a;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/a/a;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/a/a;->getWidth()I

    move-result v1

    rem-int v2, v0, v1

    div-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/rockstargames/hal/a/a;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/rockstargames/hal/a/a;->scrollTo(II)V

    :cond_1
    :goto_0
    return v4

    :cond_2
    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/a/a;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/rockstargames/hal/a/a;->scrollTo(II)V

    goto :goto_0
.end method

.method public final setPage(I)V
    .locals 0

    return-void
.end method

.method public final setTouchEventsEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/rockstargames/hal/a/a;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
