.class public Lcom/rockstargames/hal/andScreen;
.super Lcom/rockstargames/hal/andView;
.source "andScreen.java"


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
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    .line 25
    sget p1, Lcom/rockstargames/hal/andScreen;->staticCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/rockstargames/hal/andScreen;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andScreen;
    .locals 2

    .line 57
    new-instance v0, Lcom/rockstargames/hal/andScreen;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andScreen;-><init>(I)V

    .line 58
    new-instance p0, Lcom/rockstargames/hal/andView$andViewImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/rockstargames/hal/andView$andViewImpl;-><init>(Lcom/rockstargames/hal/andView;Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/rockstargames/hal/andScreen;->setView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public Quit()V
    .locals 1

    .line 147
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public addSubview(Lcom/rockstargames/hal/andView;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/rockstargames/hal/andView;->addSubview(Lcom/rockstargames/hal/andView;)V

    return-void
.end method

.method public cleanup()V
    .locals 4

    .line 117
    const-string v0, "Cleaning up a (loading) screen..."

    const-string v1, "andScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 122
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 124
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    :cond_0
    iput-object v2, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/rockstargames/hal/andScreen;->px:F

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->view:Landroid/view/View;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    .line 134
    instance-of v0, v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 136
    check-cast v2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    .line 140
    :cond_3
    const-string v0, "Unable to remove screen from parent!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public createLoadingScreen(Ljava/lang/String;)V
    .locals 2

    .line 42
    const-string v0, "andScreen"

    const-string v1, "Inflating loading screen..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object p1, p0, Lcom/rockstargames/hal/andScreen;->screenName:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 48
    sget v0, Lcom/rockstargames/socialclub/R$layout;->loadingscreen:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    .line 50
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 51
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    sget v0, Lcom/rockstargames/hal/andScreen;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andScreen;->staticCount:I

    .line 31
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

    .line 77
    invoke-super/range {v0 .. v6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    .line 79
    iput v1, v0, Lcom/rockstargames/hal/andScreen;->px:F

    .line 80
    iput v2, v0, Lcom/rockstargames/hal/andScreen;->py:F

    .line 81
    iput v3, v0, Lcom/rockstargames/hal/andScreen;->pw:F

    .line 82
    iput v4, v0, Lcom/rockstargames/hal/andScreen;->ph:F

    .line 84
    iget-object p1, v0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 86
    new-instance p2, Landroid/widget/AbsoluteLayout$LayoutParams;

    float-to-int p3, v3

    float-to-int p4, v4

    float-to-int p5, v1

    sub-int/2addr p5, p3

    const/4 p6, 0x0

    invoke-direct {p2, p3, p4, p5, p6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object p1, v0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method public showLoadingGrid(Z)V
    .locals 5

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/rockstargames/hal/andScreen;->screenName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andScreen;->createLoadingScreen(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v1, p0, Lcom/rockstargames/hal/andScreen;->pw:F

    float-to-int v1, v1

    iget v2, p0, Lcom/rockstargames/hal/andScreen;->ph:F

    float-to-int v2, v2

    iget v3, p0, Lcom/rockstargames/hal/andScreen;->px:F

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object p1, p0, Lcom/rockstargames/hal/andScreen;->loadingScreenView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/rockstargames/hal/andScreen;->cleanup()V

    return-void
.end method
