.class public Lcom/rockstargames/hal/andScreen;
.super Lcom/rockstargames/hal/andView;


# static fields
.field static staticCount:I


# instance fields
.field private loadingScreenView:Landroid/view/View;

.field private ph:F

.field private pw:F

.field private px:F

.field private py:F

.field private screenName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andScreen;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    sget v0, Lcom/rockstargames/hal/andScreen;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andScreen;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andScreen;
    .locals 3

    new-instance v0, Lcom/rockstargames/hal/andScreen;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andScreen;-><init>(I)V

    new-instance v1, Lcom/rockstargames/hal/W;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/rockstargames/hal/W;-><init>(Lcom/rockstargames/hal/andView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andScreen;->setView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public Quit()V
    .locals 1

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public addSubview(Lcom/rockstargames/hal/andView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/rockstargames/hal/andView;->addSubview(Lcom/rockstargames/hal/andView;)V

    return-void
.end method

.method public cleanup()V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "andScreen"

    const-string v2, "Cleaning up a (loading) screen..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v1, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockstargames/hal/andScreen;->px:F

    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->view:Landroid/view/View;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/rockstargames/hal/andScreen;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "andScreen"

    const-string v1, "Unable to remove screen from parent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public createLoadingScreen(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "andScreen"

    const-string v1, "Inflating loading screen..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/rockstargames/hal/andScreen;->screenName:Ljava/lang/String;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/rockstargames/hal/andScreen;->screenName:Ljava/lang/String;

    const-string v2, "LSCustomsPage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f030021

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    :goto_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/rockstargames/hal/andScreen;->screenName:Ljava/lang/String;

    const-string v2, "ChopPage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f03001a

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    goto :goto_0

    :cond_1
    const v1, 0x7f030020

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    sget v0, Lcom/rockstargames/hal/andScreen;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andScreen;->staticCount:I

    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 7

    add-float v1, p1, p3

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    iput v1, p0, Lcom/rockstargames/hal/andScreen;->px:F

    iput p2, p0, Lcom/rockstargames/hal/andScreen;->py:F

    iput p3, p0, Lcom/rockstargames/hal/andScreen;->pw:F

    iput p4, p0, Lcom/rockstargames/hal/andScreen;->ph:F

    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    float-to-int v3, p3

    float-to-int v4, p4

    float-to-int v1, v1

    float-to-int v5, p3

    sub-int/2addr v1, v5

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method public showLoadingGrid(Z)V
    .locals 6

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->screenName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andScreen;->createLoadingScreen(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/rockstargames/hal/andScreen;->pw:F

    float-to-int v2, v2

    iget v3, p0, Lcom/rockstargames/hal/andScreen;->ph:F

    float-to-int v3, v3

    iget v4, p0, Lcom/rockstargames/hal/andScreen;->px:F

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/rockstargames/hal/andScreen;->cleanup()V

    goto :goto_0
.end method
