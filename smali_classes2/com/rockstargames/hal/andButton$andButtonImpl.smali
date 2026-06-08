.class public Lcom/rockstargames/hal/andButton$andButtonImpl;
.super Landroid/widget/ImageButton;
.source "andButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andButtonImpl"
.end annotation


# instance fields
.field private attached:Z

.field packedImage:Lcom/rockstargames/hal/PackedImage;

.field pressedFilter:Landroid/graphics/ColorFilter;

.field final synthetic this$0:Lcom/rockstargames/hal/andButton;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andButton;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    .line 208
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->pressedFilter:Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 216
    iput-boolean p1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->attached:Z

    .line 209
    invoke-virtual {p0, p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->setId(I)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andButton$andButtonImpl;->setAdjustViewBounds(Z)V

    .line 213
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andButton$andButtonImpl;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public HighlightView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 302
    new-instance p1, Landroid/graphics/LightingColorFilter;

    const v0, -0x666667

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 304
    iput-object p1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->pressedFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 309
    iput-object p1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->pressedFilter:Landroid/graphics/ColorFilter;

    .line 313
    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->invalidate()V

    return-void
.end method

.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 296
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 241
    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 244
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 246
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 245
    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    const-string v1, "andDropDownList"

    const-string v2, "Trying to hide keyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    :cond_1
    const/4 v1, 0x0

    .line 257
    iput-object v1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->pressedFilter:Landroid/graphics/ColorFilter;

    .line 258
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->invalidate()V

    .line 261
    :cond_2
    iget-object v1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget-boolean v1, v1, Lcom/rockstargames/hal/andButton;->userInteractionEnabled:Z

    if-eqz v1, :cond_7

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget v1, v0, Lcom/rockstargames/hal/andButton;->handle:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andButton;->onTouchCancel(I)V

    goto :goto_1

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget v1, v0, Lcom/rockstargames/hal/andButton;->handle:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andButton;->onTouchMove(I)V

    goto :goto_1

    .line 274
    :cond_5
    iget-object v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget v1, v0, Lcom/rockstargames/hal/andButton;->handle:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andButton;->onTouchUp(I)V

    goto :goto_1

    .line 266
    :cond_6
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, -0x666667

    invoke-direct {v1, v2, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 268
    iput-object v1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->pressedFilter:Landroid/graphics/ColorFilter;

    .line 269
    iget-object v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget v1, v0, Lcom/rockstargames/hal/andButton;->handle:I

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andButton;->onTouchDown(I)V

    .line 270
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->invalidate()V

    .line 287
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method isAttached()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->attached:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 220
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->attached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 226
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->attached:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 349
    iget-object v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->invalidate()V

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->pressedFilter:Landroid/graphics/ColorFilter;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/rockstargames/hal/PackedImage;->Draw(Landroid/graphics/Canvas;IIZLandroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 319
    iget-object p1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget-boolean p1, p1, Lcom/rockstargames/hal/andButton;->userInteractionEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 335
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 336
    iget-object v0, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->this$0:Lcom/rockstargames/hal/andButton;

    iget v1, v0, Lcom/rockstargames/hal/andButton;->handle:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 337
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 336
    invoke-virtual/range {v0 .. v5}, Lcom/rockstargames/hal/andButton;->onTouchEvent(IIIFF)V

    const/4 p1, 0x1

    return p1
.end method

.method public setPackedImage(Lcom/rockstargames/hal/PackedImage;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/rockstargames/hal/andButton$andButtonImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    .line 344
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->invalidate()V

    return-void
.end method
