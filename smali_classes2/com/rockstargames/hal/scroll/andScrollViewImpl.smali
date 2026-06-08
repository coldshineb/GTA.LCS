.class public Lcom/rockstargames/hal/scroll/andScrollViewImpl;
.super Landroid/widget/ScrollView;
.source "andScrollViewImpl.java"

# interfaces
.implements Lcom/rockstargames/hal/andScrollView$ScrollImpl;


# instance fields
.field private final andScrollView:Lcom/rockstargames/hal/andScrollView;

.field backgroundPackedImage:Lcom/rockstargames/hal/PackedImage;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private backgroundRect:Landroid/graphics/Rect;

.field private final container:Lcom/rockstargames/hal/ContainerLayout;

.field private lastBackgroundBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private lastBackgroundBitmapTiled:Landroid/graphics/drawable/BitmapDrawable;

.field private subScrolls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rockstargames/hal/andScrollView$ScrollImpl;",
            ">;"
        }
    .end annotation
.end field

.field private tileBackground:Z

.field private touchEventsDisabled:Z

.field touchStart:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andScrollView;)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchEventsDisabled:Z

    .line 54
    iput-boolean v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->tileBackground:Z

    .line 127
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchStart:Landroid/graphics/Point;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->subScrolls:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    .line 40
    new-instance p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v1, 0xc8

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->setId(I)V

    .line 45
    new-instance p1, Lcom/rockstargames/hal/ContainerLayout;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    .line 46
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addSubScroll(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->subScrolls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContainer()Lcom/rockstargames/hal/ContainerLayout;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 165
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 166
    invoke-virtual {p0}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 169
    instance-of v1, v0, Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    if-eqz v1, :cond_0

    .line 170
    move-object v1, v0

    check-cast v1, Lcom/rockstargames/hal/andScrollView$ScrollImpl;

    invoke-interface {v1, p0}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->addSubScroll(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V

    .line 171
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPackedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    iget-boolean v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->tileBackground:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->lastBackgroundBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 92
    :cond_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->lastBackgroundBitmap:Ljava/lang/ref/SoftReference;

    .line 93
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 94
    iget-object v3, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 101
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->lastBackgroundBitmapTiled:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 106
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->lastBackgroundBitmapTiled:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 108
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->lastBackgroundBitmapTiled:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchStart:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchStart:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchStart:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 136
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchStart:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 143
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 123
    iget-boolean p1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchEventsDisabled:Z

    if-nez p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {p1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/rockstargames/hal/andScrollView;->scrollViewDidScroll(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 149
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 150
    iget-boolean v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchEventsDisabled:Z

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->andScrollView:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1, p1}, Lcom/rockstargames/hal/andScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return v0
.end method

.method public removeAllSubviews()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v0}, Lcom/rockstargames/hal/ContainerLayout;->removeAllViews()V

    return-void
.end method

.method public setBackgroundAndImage(Lcom/rockstargames/hal/andImage;Z)V
    .locals 2

    .line 61
    invoke-virtual {p1}, Lcom/rockstargames/hal/andImage;->getPackedImage()Lcom/rockstargames/hal/PackedImage;

    move-result-object p1

    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPackedImage:Lcom/rockstargames/hal/PackedImage;

    .line 62
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundRect:Landroid/graphics/Rect;

    .line 63
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPaint:Landroid/graphics/Paint;

    .line 64
    iput-boolean p2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->tileBackground:Z

    .line 66
    iget-object p1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPackedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {p1}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 68
    iget-boolean p2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->tileBackground:Z

    if-nez p2, :cond_0

    .line 70
    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->lastBackgroundBitmap:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 74
    :cond_0
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->lastBackgroundBitmapTiled:Landroid/graphics/drawable/BitmapDrawable;

    .line 77
    :goto_0
    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 78
    iget-object p1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    return-void
.end method

.method public setToStartingPosition()V
    .locals 1

    .line 192
    new-instance v0, Lcom/rockstargames/hal/scroll/andScrollViewImpl$1;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/scroll/andScrollViewImpl$1;-><init>(Lcom/rockstargames/hal/scroll/andScrollViewImpl;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchEventsDisabled:Z

    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->touchEventsDisabled:Z

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/scroll/andScrollViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public transferContainerContents(Lcom/rockstargames/hal/andScrollView$ScrollImpl;)V
    .locals 3

    .line 208
    invoke-interface {p1}, Lcom/rockstargames/hal/andScrollView$ScrollImpl;->getContainer()Lcom/rockstargames/hal/ContainerLayout;

    move-result-object p1

    .line 209
    :goto_0
    invoke-virtual {p1}, Lcom/rockstargames/hal/ContainerLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/ContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 214
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 216
    :cond_0
    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method
