.class public Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;
.super Landroid/widget/HorizontalScrollView;
.source "andHorizScrollViewImpl.java"

# interfaces
.implements Lcom/rockstargames/hal/andScrollView$ScrollImpl;


# instance fields
.field private final andScrollView:Lcom/rockstargames/hal/andScrollView;

.field private final container:Lcom/rockstargames/hal/ContainerLayout;

.field private subScrolls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rockstargames/hal/andScrollView$ScrollImpl;",
            ">;"
        }
    .end annotation
.end field

.field private touchEventsDisabled:Z


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andScrollView;)V
    .locals 2

    .line 30
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->touchEventsDisabled:Z

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->subScrolls:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    .line 33
    new-instance p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v1, 0x64

    invoke-direct {p1, v0, v0, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 36
    new-instance p1, Lcom/rockstargames/hal/ContainerLayout;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    .line 37
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addSubScroll(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->subScrolls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContainer()Lcom/rockstargames/hal/ContainerLayout;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 93
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 96
    instance-of v1, v0, Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    if-eqz v1, :cond_0

    .line 97
    move-object v1, v0

    check-cast v1, Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {v1, p0}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->addSubScroll(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V

    .line 98
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 55
    iget-boolean p1, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->touchEventsDisabled:Z

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {p1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/rockstargames/hal/andScrollView;->scrollViewDidScroll(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 62
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 66
    iget-boolean v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->touchEventsDisabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->getWidth()I

    move-result v0

    .line 72
    rem-int v2, p1, v0

    .line 73
    div-int/lit8 v3, v0, 0x2

    if-ge p1, v3, :cond_1

    sub-int/2addr p1, v2

    .line 74
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->scrollTo(II)V

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v2

    add-int/2addr p1, v0

    .line 76
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->scrollTo(II)V

    :cond_2
    :goto_0
    return v1
.end method

.method public removeAllSubviews()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v0}, Lcom/rockstargames/hal/ContainerLayout;->removeAllViews()V

    return-void
.end method

.method public setBackgroundAndImage(Lcom/rockstargames/hal/andImage;Z)V
    .locals 0

    return-void
.end method

.method public setPage(I)V
    .locals 0

    return-void
.end method

.method public setToStartingPosition()V
    .locals 0

    return-void
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->touchEventsDisabled:Z

    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->touchEventsDisabled:Z

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public transferContainerContents(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 3

    .line 129
    invoke-interface {p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object p1

    .line 130
    :goto_0
    invoke-virtual {p1}, Lcom/rockstargames/hal/ContainerLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/ContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 135
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    :cond_0
    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method
