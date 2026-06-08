.class public Lcom/rockstargames/hal/scroll/andPagerImpl;
.super Landroidx/viewpager/widget/ViewPager;
.source "andPagerImpl.java"

# interfaces
.implements Lcom/rockstargames/hal/andScrollView$ScrollImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;,
        Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;,
        Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;
    }
.end annotation


# instance fields
.field adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

.field private final andScrollView:Lcom/rockstargames/hal/andScrollView;

.field currentPage:I

.field public fakeContainer:Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdatePage:I

.field private pageFromNative:I

.field private touchEventsDisabled:Z


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andScrollView;)V
    .locals 3

    .line 205
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->touchEventsDisabled:Z

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->pageFromNative:I

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->items:Ljava/util/ArrayList;

    .line 190
    iput v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    .line 192
    iput v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->lastUpdatePage:I

    .line 194
    new-instance v1, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;-><init>(Lcom/rockstargames/hal/scroll/andPagerImpl;)V

    iput-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->fakeContainer:Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;

    .line 196
    new-instance v1, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;-><init>(Lcom/rockstargames/hal/scroll/andPagerImpl;Lcom/rockstargames/hal/scroll/andPagerImpl$1;)V

    iput-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    .line 206
    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    .line 214
    new-instance p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v1, 0x64

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance p1, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;

    invoke-direct {p1, p0, v2}, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;-><init>(Lcom/rockstargames/hal/scroll/andPagerImpl;Lcom/rockstargames/hal/scroll/andPagerImpl$1;)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rockstargames/hal/scroll/andPagerImpl;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->lastUpdatePage:I

    return p0
.end method

.method static synthetic access$102(Lcom/rockstargames/hal/scroll/andPagerImpl;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->lastUpdatePage:I

    return p1
.end method

.method static synthetic access$200(Lcom/rockstargames/hal/scroll/andPagerImpl;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->touchEventsDisabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/rockstargames/hal/scroll/andPagerImpl;)Lcom/rockstargames/hal/andScrollView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/rockstargames/hal/scroll/andPagerImpl;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->pageFromNative:I

    return p1
.end method


# virtual methods
.method public addSubScroll(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 0

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getContainer()Lcom/rockstargames/hal/ContainerLayout;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->fakeContainer:Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 232
    iget-boolean v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->touchEventsDisabled:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/rockstargames/hal/andScrollView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 234
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v0, 0x0

    .line 256
    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->getChildCount()I

    move-result v1

    const-string v2, "andPager"

    if-ge v0, v1, :cond_1

    .line 258
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-nez v3, :cond_0

    .line 261
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

    .line 262
    new-instance v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-direct {v2}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    .line 263
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    .line 264
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    .line 265
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This view\'s layoutparams: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 277
    const-string p2, "Error measuring"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 240
    iget-boolean v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->touchEventsDisabled:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/rockstargames/hal/andScrollView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 244
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 248
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeAllSubviews()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->fakeContainer:Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;

    invoke-virtual {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->removeAllViews()V

    const/4 v0, 0x0

    .line 362
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 366
    const-string v1, "andPager"

    const-string v2, "Unable to remove adapter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setBackgroundAndImage(Lcom/rockstargames/hal/andImage;Z)V
    .locals 0

    return-void
.end method

.method public setPage(I)V
    .locals 3

    .line 302
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setCurrentItem(I)V

    .line 304
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageWillChange(II)V

    .line 306
    iget v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    if-eq v0, p1, :cond_0

    .line 308
    iput p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    .line 309
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    iget v2, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageDidChange(II)V

    .line 312
    iput p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->pageFromNative:I

    :cond_0
    return-void
.end method

.method public setToStartingPosition()V
    .locals 4

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setCurrentItem(I)V

    .line 322
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageWillChange(II)V

    .line 324
    iget v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    if-eqz v1, :cond_0

    .line 326
    iput v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    .line 327
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v2

    iget v3, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    invoke-virtual {v1, v2, v3}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageDidChange(II)V

    .line 330
    iput v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->pageFromNative:I

    :cond_0
    return-void
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 226
    iput-boolean p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl;->touchEventsDisabled:Z

    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public transferContainerContents(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 3

    .line 343
    invoke-interface {p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object p1

    .line 344
    :goto_0
    invoke-virtual {p1}, Lcom/rockstargames/hal/ContainerLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/ContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 349
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 351
    :cond_0
    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method
