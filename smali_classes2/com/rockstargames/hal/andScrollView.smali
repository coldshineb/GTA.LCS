.class public Lcom/rockstargames/hal/andScrollView;
.super Lcom/rockstargames/hal/andView;
.source "andScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andScrollView$ScrollImpl;
    }
.end annotation


# static fields
.field static staticCount:I


# instance fields
.field private impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

.field private pageFromNative:I

.field public paging:Z

.field private touchEventsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/rockstargames/hal/andScrollView;->touchEventsDisabled:Z

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/rockstargames/hal/andScrollView;->pageFromNative:I

    .line 68
    iput-boolean p1, p0, Lcom/rockstargames/hal/andScrollView;->paging:Z

    .line 49
    new-instance p1, Lcom/rockstargames/hal/scroll/andScrollViewImpl;

    invoke-direct {p1, p0}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;-><init>(Lcom/rockstargames/hal/andScrollView;)V

    .line 50
    iput-object p1, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    .line 51
    iput-object p1, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    .line 52
    invoke-virtual {p1}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/rockstargames/hal/andScrollView;->container:Lcom/rockstargames/hal/ContainerLayout;

    .line 53
    sget p1, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andScrollView;
    .locals 1

    .line 65
    new-instance v0, Lcom/rockstargames/hal/andScrollView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andScrollView;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public changeImplTo(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {p1, v0}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->transferContainerContents(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V

    .line 101
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {v0}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 105
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    :cond_0
    invoke-interface {p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andScrollView;->container:Lcom/rockstargames/hal/ContainerLayout;

    .line 110
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    .line 111
    iput-object p1, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    sget v0, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    .line 60
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method protected getContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method protected getInnerView()Landroid/view/View;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method protected getOuterView()Landroid/view/View;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    return-object v0
.end method

.method public native onTouchEvent(IIIFF)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 178
    iget-boolean v0, p0, Lcom/rockstargames/hal/andScrollView;->touchEventsDisabled:Z

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 182
    invoke-virtual {p0}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/rockstargames/hal/andScrollView;->onTouchEvent(IIIFF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public removeAllSubviews()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->removeAllSubviews()V

    :cond_0
    return-void
.end method

.method public removeFromSuperview()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 160
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public native scrollViewDidScroll(I)V
.end method

.method public native scrollViewPageDidChange(II)V
.end method

.method public native scrollViewPageWillChange(II)V
.end method

.method public setBackgroundImage(Lcom/rockstargames/hal/andImage;Z)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {v0, p1, p2}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->setBackgroundAndImage(Lcom/rockstargames/hal/andImage;Z)V

    return-void
.end method

.method public setContentSize(II)V
    .locals 0

    return-void
.end method

.method public setHorizontal(ZZ)V
    .locals 1

    .line 72
    iput-boolean p2, p0, Lcom/rockstargames/hal/andScrollView;->paging:Z

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 82
    :try_start_0
    new-instance p1, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;

    invoke-direct {p1, p0}, Lcom/rockstargames/hal/scroll/andHorizScrollViewImpl;-><init>(Lcom/rockstargames/hal/andScrollView;)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andScrollView;->changeImplTo(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V

    return-void

    .line 84
    :cond_0
    new-instance p1, Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-direct {p1, p0}, Lcom/rockstargames/hal/scroll/andPagerImpl;-><init>(Lcom/rockstargames/hal/andScrollView;)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andScrollView;->changeImplTo(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 91
    const-string p2, "andScrollView"

    const-string v0, "Exception changing view to horizontal"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public setPage(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->setPage(I)V

    :cond_0
    return-void
.end method

.method public setToStartingPosition()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->setToStartingPosition()V

    :cond_0
    return-void
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/rockstargames/hal/andScrollView;->touchEventsDisabled:Z

    .line 133
    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {v0, p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->setTouchEventsEnabled(Z)V

    return-void
.end method
