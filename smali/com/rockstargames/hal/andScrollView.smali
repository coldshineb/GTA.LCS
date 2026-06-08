.class public Lcom/rockstargames/hal/andScrollView;
.super Lcom/rockstargames/hal/andView;


# static fields
.field static staticCount:I


# instance fields
.field private impl:Lcom/rockstargames/hal/F;

.field private pageFromNative:I

.field public paging:Z

.field private touchEventsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    iput-boolean v1, p0, Lcom/rockstargames/hal/andScrollView;->touchEventsDisabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/rockstargames/hal/andScrollView;->pageFromNative:I

    iput-boolean v1, p0, Lcom/rockstargames/hal/andScrollView;->paging:Z

    new-instance v0, Lcom/rockstargames/hal/a/f;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/a/f;-><init>(Lcom/rockstargames/hal/andScrollView;)V

    iput-object v0, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    iput-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    invoke-virtual {v0}, Lcom/rockstargames/hal/a/f;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andScrollView;->container:Lcom/rockstargames/hal/ContainerLayout;

    sget v0, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andScrollView;
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/andScrollView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andScrollView;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public changeImplTo(Lcom/rockstargames/hal/F;)V
    .locals 3

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    invoke-interface {p1, v0}, Lcom/rockstargames/hal/F;->b(Lcom/rockstargames/hal/F;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    invoke-interface {v0}, Lcom/rockstargames/hal/F;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-interface {p1}, Lcom/rockstargames/hal/F;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andScrollView;->container:Lcom/rockstargames/hal/ContainerLayout;

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    iput-object p1, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    return-void
.end method

.method protected finalize()V
    .locals 1

    sget v0, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method protected getContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method protected getInnerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method protected getOuterView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    return-object v0
.end method

.method public native onTouchEvent(IIIFF)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/rockstargames/hal/andScrollView;->touchEventsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rockstargames/hal/andScrollView;->onTouchEvent(IIIFF)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllSubviews()V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    invoke-interface {v0}, Lcom/rockstargames/hal/F;->e_()V

    :cond_0
    return-void
.end method

.method public removeFromSuperview()V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

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

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    invoke-interface {v0, p1, p2}, Lcom/rockstargames/hal/F;->a(Lcom/rockstargames/hal/andImage;Z)V

    return-void
.end method

.method public setContentSize(II)V
    .locals 0

    return-void
.end method

.method public setHorizontal(ZZ)V
    .locals 3

    iput-boolean p2, p0, Lcom/rockstargames/hal/andScrollView;->paging:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :try_start_0
    new-instance v0, Lcom/rockstargames/hal/a/a;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/a/a;-><init>(Lcom/rockstargames/hal/andScrollView;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andScrollView;->changeImplTo(Lcom/rockstargames/hal/F;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/rockstargames/hal/a/b;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/a/b;-><init>(Lcom/rockstargames/hal/andScrollView;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andScrollView;->changeImplTo(Lcom/rockstargames/hal/F;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "andScrollView"

    const-string v2, "Exception changing view to horizontal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    invoke-interface {v0, p1}, Lcom/rockstargames/hal/F;->setPage(I)V

    :cond_0
    return-void
.end method

.method public setToStartingPosition()V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    invoke-interface {v0}, Lcom/rockstargames/hal/F;->d_()V

    :cond_0
    return-void
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/rockstargames/hal/andScrollView;->touchEventsDisabled:Z

    iget-object v0, p0, Lcom/rockstargames/hal/andScrollView;->impl:Lcom/rockstargames/hal/F;

    invoke-interface {v0, p1}, Lcom/rockstargames/hal/F;->setTouchEventsEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
