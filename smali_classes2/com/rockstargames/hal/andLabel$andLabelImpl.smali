.class public Lcom/rockstargames/hal/andLabel$andLabelImpl;
.super Landroid/widget/TextView;
.source "andLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andLabelImpl"
.end annotation


# instance fields
.field private cacheBmp:Landroid/graphics/Bitmap;

.field private cacheEnabled:Z

.field private cacheError:Z

.field private dirtyFlag:Z

.field private outlinePaint:Landroid/graphics/Paint;

.field private outlineStrokeWidth:F

.field private final tempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/rockstargames/hal/andLabel;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andLabel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->this$0:Lcom/rockstargames/hal/andLabel;

    .line 409
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 401
    iput p1, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->outlineStrokeWidth:F

    const/4 p1, 0x1

    .line 403
    iput-boolean p1, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->dirtyFlag:Z

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheError:Z

    .line 405
    iput-boolean p1, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheEnabled:Z

    .line 442
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->tempRect:Landroid/graphics/Rect;

    .line 410
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 411
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setTextSize(F)V

    .line 412
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setId(I)V

    .line 413
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setHorizontallyScrolling(Z)V

    .line 414
    invoke-static {}, Lcom/rockstargames/hal/andLabel;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 427
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 428
    iget-object v0, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->this$0:Lcom/rockstargames/hal/andLabel;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andLabel;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andLabel;->onAttachedToWindow(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 447
    const-string v0, "x"

    const-string v1, "andLabel"

    .line 0
    const-string v2, "Creating canvas "

    .line 447
    iget-object v3, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->outlinePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->outlineStrokeWidth:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 449
    iget-boolean v3, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheError:Z

    const/high16 v5, -0x1000000

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheEnabled:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    .line 453
    :try_start_0
    iget-object v6, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 454
    iget-object v6, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->tempRect:Landroid/graphics/Rect;

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    .line 457
    iget-boolean v9, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->dirtyFlag:Z

    if-eqz v9, :cond_3

    .line 459
    iget-object v9, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheBmp:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v7, :cond_0

    iget-object v9, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-eq v9, v8, :cond_1

    .line 461
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v9, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") max "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheBmp:Landroid/graphics/Bitmap;

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 467
    iput-boolean v3, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheError:Z

    .line 468
    const-string v0, "Unable to generate cache bitmap."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 472
    :cond_2
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheBmp:Landroid/graphics/Bitmap;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 473
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x0

    .line 474
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 476
    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v9, v2

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v10, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 481
    invoke-super {p0, v6}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 483
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 484
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 486
    iget-object v8, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 488
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 489
    iget v5, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->outlineStrokeWidth:F

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 490
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 492
    invoke-virtual {v2, v6}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 494
    iget-object v2, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 496
    iput-boolean v0, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->dirtyFlag:Z

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheBmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 508
    iput-boolean v3, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheError:Z

    .line 509
    const-string v2, "Error caching / drawing cache."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 502
    iput-boolean v3, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheError:Z

    .line 503
    const-string v2, "Exception caching / drawing cache."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    .line 515
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 517
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 520
    iget-object v2, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 522
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 523
    iget v2, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->outlineStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 524
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 526
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 528
    iget-object p1, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    return-void

    .line 533
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setCacheEnabled(Z)V
    .locals 0

    .line 439
    iput-boolean p1, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->cacheEnabled:Z

    return-void
.end method

.method public setDirty()V
    .locals 1

    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->dirtyFlag:Z

    .line 434
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->invalidate()V

    return-void
.end method

.method public setOutlineWidth(F)V
    .locals 1

    .line 419
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->outlinePaint:Landroid/graphics/Paint;

    .line 420
    iput p1, p0, Lcom/rockstargames/hal/andLabel$andLabelImpl;->outlineStrokeWidth:F

    .line 421
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->invalidate()V

    return-void
.end method
