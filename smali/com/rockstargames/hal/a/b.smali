.class public final Lcom/rockstargames/hal/a/b;
.super Landroid/support/v4/view/ViewPager;

# interfaces
.implements Lcom/rockstargames/hal/F;


# instance fields
.field a:I

.field b:Lcom/rockstargames/hal/a/e;

.field private c:Z

.field private final d:Lcom/rockstargames/hal/andScrollView;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Lcom/rockstargames/hal/a/d;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andScrollView;)V
    .locals 3

    const/16 v2, 0x64

    const/4 v1, 0x0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/rockstargames/hal/a/b;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/a/b;->e:Ljava/util/ArrayList;

    iput v1, p0, Lcom/rockstargames/hal/a/b;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/rockstargames/hal/a/b;->f:I

    new-instance v0, Lcom/rockstargames/hal/a/d;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/a/d;-><init>(Lcom/rockstargames/hal/a/b;)V

    iput-object v0, p0, Lcom/rockstargames/hal/a/b;->g:Lcom/rockstargames/hal/a/d;

    new-instance v0, Lcom/rockstargames/hal/a/e;

    invoke-direct {v0, p0, v1}, Lcom/rockstargames/hal/a/e;-><init>(Lcom/rockstargames/hal/a/b;B)V

    iput-object v0, p0, Lcom/rockstargames/hal/a/b;->b:Lcom/rockstargames/hal/a/e;

    iput-object p1, p0, Lcom/rockstargames/hal/a/b;->d:Lcom/rockstargames/hal/andScrollView;

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/rockstargames/hal/a/c;

    invoke-direct {v0, p0, v1}, Lcom/rockstargames/hal/a/c;-><init>(Lcom/rockstargames/hal/a/b;B)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/a/b;->setOnPageChangeListener(Landroid/support/v4/view/aC;)V

    return-void
.end method

.method static synthetic a(Lcom/rockstargames/hal/a/b;I)I
    .locals 0

    iput p1, p0, Lcom/rockstargames/hal/a/b;->f:I

    return p1
.end method

.method static synthetic a(Lcom/rockstargames/hal/a/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/a/b;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/rockstargames/hal/a/b;)I
    .locals 1

    iget v0, p0, Lcom/rockstargames/hal/a/b;->f:I

    return v0
.end method

.method static synthetic b(Lcom/rockstargames/hal/a/b;I)I
    .locals 0

    return p1
.end method

.method static synthetic c(Lcom/rockstargames/hal/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/rockstargames/hal/a/b;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/rockstargames/hal/a/b;)Lcom/rockstargames/hal/andScrollView;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/a/b;->d:Lcom/rockstargames/hal/andScrollView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/rockstargames/hal/F;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/rockstargames/hal/andImage;Z)V
    .locals 0

    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/view/az;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/view/az;

    invoke-direct {v0}, Landroid/support/v4/view/az;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

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
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/rockstargames/hal/a/b;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/rockstargames/hal/a/b;->d:Lcom/rockstargames/hal/andScrollView;

    iget-object v1, p0, Lcom/rockstargames/hal/a/b;->d:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageWillChange(II)V

    iget v0, p0, Lcom/rockstargames/hal/a/b;->a:I

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/rockstargames/hal/a/b;->a:I

    iget-object v0, p0, Lcom/rockstargames/hal/a/b;->d:Lcom/rockstargames/hal/andScrollView;

    iget-object v1, p0, Lcom/rockstargames/hal/a/b;->d:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    iget v2, p0, Lcom/rockstargames/hal/a/b;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageDidChange(II)V

    :cond_0
    return-void
.end method

.method public final e_()V
    .locals 3

    iget-object v0, p0, Lcom/rockstargames/hal/a/b;->g:Lcom/rockstargames/hal/a/d;

    invoke-virtual {v0}, Lcom/rockstargames/hal/a/d;->removeAllViews()V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/a/b;->setAdapter(Landroid/support/v4/view/U;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "andPager"

    const-string v2, "Unable to remove adapter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getContainer()Lcom/rockstargames/hal/ContainerLayout;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/a/b;->g:Lcom/rockstargames/hal/a/d;

    return-object v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/rockstargames/hal/a/b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/a/b;->d:Lcom/rockstargames/hal/andScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/rockstargames/hal/andScrollView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onMeasure(II)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/a/b;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/a/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v4/view/az;

    if-nez v2, :cond_0

    const-string v2, "andPager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad view: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/support/v4/view/az;

    invoke-direct {v2}, Landroid/support/v4/view/az;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v2, Landroid/support/v4/view/az;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v2, Landroid/support/v4/view/az;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "andPager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This view\'s layoutparams: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/a/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "andPager"

    const-string v2, "Error measuring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/rockstargames/hal/a/b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/a/b;->d:Lcom/rockstargames/hal/andScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/rockstargames/hal/andScrollView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/rockstargames/hal/a/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final setPage(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/a/b;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/rockstargames/hal/a/b;->d:Lcom/rockstargames/hal/andScrollView;

    iget-object v1, p0, Lcom/rockstargames/hal/a/b;->d:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageWillChange(II)V

    iget v0, p0, Lcom/rockstargames/hal/a/b;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rockstargames/hal/a/b;->a:I

    iget-object v0, p0, Lcom/rockstargames/hal/a/b;->d:Lcom/rockstargames/hal/andScrollView;

    iget-object v1, p0, Lcom/rockstargames/hal/a/b;->d:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    iget v2, p0, Lcom/rockstargames/hal/a/b;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageDidChange(II)V

    :cond_0
    return-void
.end method

.method public final setTouchEventsEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/rockstargames/hal/a/b;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
