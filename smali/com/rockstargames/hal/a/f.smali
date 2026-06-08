.class public final Lcom/rockstargames/hal/a/f;
.super Landroid/widget/ScrollView;

# interfaces
.implements Lcom/rockstargames/hal/F;


# instance fields
.field private final a:Lcom/rockstargames/hal/andScrollView;

.field private final b:Lcom/rockstargames/hal/ContainerLayout;

.field private c:Z

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/drawable/BitmapDrawable;

.field private g:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/rockstargames/hal/PackedImage;

.field private j:Landroid/graphics/Point;

.field private k:Ljava/util/ArrayList;
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

    const/16 v3, 0xc8

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/rockstargames/hal/a/f;->c:Z

    iput-boolean v1, p0, Lcom/rockstargames/hal/a/f;->h:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/a/f;->j:Landroid/graphics/Point;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/a/f;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/rockstargames/hal/a/f;->a:Lcom/rockstargames/hal/andScrollView;

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v3, v3, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/a/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/a/f;->setId(I)V

    new-instance v0, Lcom/rockstargames/hal/ContainerLayout;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/hal/a/f;->b:Lcom/rockstargames/hal/ContainerLayout;

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->b:Lcom/rockstargames/hal/ContainerLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->b:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/a/f;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/rockstargames/hal/F;)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/rockstargames/hal/andImage;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/rockstargames/hal/andImage;->getPackedImage()Lcom/rockstargames/hal/PackedImage;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/a/f;->i:Lcom/rockstargames/hal/PackedImage;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/a/f;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/a/f;->e:Landroid/graphics/Paint;

    iput-boolean p2, p0, Lcom/rockstargames/hal/a/f;->h:Z

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->i:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v1, p0, Lcom/rockstargames/hal/a/f;->h:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/rockstargames/hal/a/f;->g:Ljava/lang/ref/SoftReference;

    :goto_0
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/rockstargames/hal/a/f;->f:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
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
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/a/g;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/a/g;-><init>(Lcom/rockstargames/hal/a/f;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/a/f;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e_()V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->b:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v0}, Lcom/rockstargames/hal/ContainerLayout;->removeAllViews()V

    return-void
.end method

.method public final getContainer()Lcom/rockstargames/hal/ContainerLayout;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->b:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/rockstargames/hal/a/f;->getParent()Landroid/view/ViewParent;

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

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->i:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->i:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v1, p0, Lcom/rockstargames/hal/a/f;->h:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/rockstargames/hal/a/f;->g:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rockstargames/hal/a/f;->g:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/rockstargames/hal/a/f;->g:Ljava/lang/ref/SoftReference;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v2, p0, Lcom/rockstargames/hal/a/f;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    iget-object v1, p0, Lcom/rockstargames/hal/a/f;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/rockstargames/hal/a/f;->d:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/rockstargames/hal/a/f;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->f:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->f:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->f:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->j:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->j:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->j:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/rockstargames/hal/a/f;->j:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final onScrollChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-boolean v0, p0, Lcom/rockstargames/hal/a/f;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/a/f;->a:Lcom/rockstargames/hal/andScrollView;

    iget-object v1, p0, Lcom/rockstargames/hal/a/f;->a:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andScrollView;->scrollViewDidScroll(I)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/rockstargames/hal/a/f;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/rockstargames/hal/a/f;->a:Lcom/rockstargames/hal/andScrollView;

    invoke-virtual {v1, p1}, Lcom/rockstargames/hal/andScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return v0
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
    iput-boolean v0, p0, Lcom/rockstargames/hal/a/f;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
