.class public final Lcom/rockstargames/hal/k;
.super Landroid/widget/ImageButton;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Lcom/rockstargames/hal/PackedImage;

.field b:Landroid/graphics/ColorFilter;

.field private synthetic c:Lcom/rockstargames/hal/andButton;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andButton;)V
    .locals 1

    iput-object p1, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/k;->b:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, p0}, Lcom/rockstargames/hal/k;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/k;->setId(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/k;->setAdjustViewBounds(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/k;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public final addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/k;->b:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/rockstargames/hal/k;->invalidate()V

    :cond_2
    iget-object v0, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    iget-boolean v0, v0, Lcom/rockstargames/hal/andButton;->userInteractionEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_2
    return v0

    :catch_0
    move-exception v0

    const-string v0, "andDropDownList"

    const-string v2, "Trying to hide keyboard"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v2, -0x666667

    invoke-direct {v0, v2, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/rockstargames/hal/k;->b:Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    iget-object v1, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    iget v1, v1, Lcom/rockstargames/hal/andButton;->handle:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andButton;->onTouchDown(I)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/k;->invalidate()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    iget-object v1, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    iget v1, v1, Lcom/rockstargames/hal/andButton;->handle:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andButton;->onTouchUp(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    iget-object v1, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    iget v1, v1, Lcom/rockstargames/hal/andButton;->handle:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andButton;->onTouchCancel(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    iget-object v1, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    iget v1, v1, Lcom/rockstargames/hal/andButton;->handle:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andButton;->onTouchMove(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/rockstargames/hal/k;->a:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockstargames/hal/k;->a:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/k;->invalidate()V

    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/k;->a:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {p0}, Lcom/rockstargames/hal/k;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/rockstargames/hal/k;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/rockstargames/hal/k;->b:Landroid/graphics/ColorFilter;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/rockstargames/hal/PackedImage;->Draw(Landroid/graphics/Canvas;IIZLandroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    iget-boolean v0, v0, Lcom/rockstargames/hal/andButton;->userInteractionEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    iget-object v0, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    iget-object v1, p0, Lcom/rockstargames/hal/k;->c:Lcom/rockstargames/hal/andButton;

    iget v1, v1, Lcom/rockstargames/hal/andButton;->handle:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/rockstargames/hal/andButton;->onTouchEvent(IIIFF)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setPackedImage(Lcom/rockstargames/hal/PackedImage;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/k;->a:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {p0}, Lcom/rockstargames/hal/k;->invalidate()V

    return-void
.end method
