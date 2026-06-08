.class public final Lcom/rockstargames/hal/E;
.super Landroid/widget/TextView;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:Landroid/graphics/Bitmap;

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Landroid/graphics/Rect;

.field private synthetic h:Lcom/rockstargames/hal/andLabel;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andLabel;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/rockstargames/hal/E;->h:Lcom/rockstargames/hal/andLabel;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockstargames/hal/E;->b:F

    iput-boolean v2, p0, Lcom/rockstargames/hal/E;->d:Z

    iput-boolean v1, p0, Lcom/rockstargames/hal/E;->e:Z

    iput-boolean v2, p0, Lcom/rockstargames/hal/E;->f:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/E;->g:Landroid/graphics/Rect;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/E;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/E;->setTextSize(F)V

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/E;->setId(I)V

    invoke-virtual {p0, v1}, Lcom/rockstargames/hal/E;->setHorizontallyScrolling(Z)V

    invoke-static {}, Lcom/rockstargames/hal/andLabel;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/E;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/E;->d:Z

    invoke-virtual {p0}, Lcom/rockstargames/hal/E;->invalidate()V

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/rockstargames/hal/E;->h:Lcom/rockstargames/hal/andLabel;

    iget-object v1, p0, Lcom/rockstargames/hal/E;->h:Lcom/rockstargames/hal/andLabel;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andLabel;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andLabel;->onAttachedToWindow(I)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v3, -0x1000000

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/rockstargames/hal/E;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/rockstargames/hal/E;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/rockstargames/hal/E;->e:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/rockstargames/hal/E;->f:Z

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/rockstargames/hal/E;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/rockstargames/hal/E;->g:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lcom/rockstargames/hal/E;->d:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/rockstargames/hal/E;->c:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/rockstargames/hal/E;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/rockstargames/hal/E;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_1

    :cond_0
    const-string v3, "andLabel"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Creating canvas "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") max "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/E;->c:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/E;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/E;->e:Z

    const-string v0, "andLabel"

    const-string v1, "Unable to generate cache bitmap."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/rockstargames/hal/E;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-super {p0, v0}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/E;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/rockstargames/hal/E;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/rockstargames/hal/E;->b:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockstargames/hal/E;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/E;->d:Z

    :cond_3
    iget-object v0, p0, Lcom/rockstargames/hal/E;->c:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v6, p0, Lcom/rockstargames/hal/E;->e:Z

    const-string v1, "andLabel"

    const-string v2, "Exception caching / drawing cache."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iput-boolean v6, p0, Lcom/rockstargames/hal/E;->e:Z

    const-string v1, "andLabel"

    const-string v2, "Error caching / drawing cache."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/E;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/rockstargames/hal/E;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/rockstargames/hal/E;->b:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockstargames/hal/E;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final setCacheEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rockstargames/hal/E;->f:Z

    return-void
.end method

.method public final setOutlineWidth(F)V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/E;->a:Landroid/graphics/Paint;

    iput p1, p0, Lcom/rockstargames/hal/E;->b:F

    invoke-virtual {p0}, Lcom/rockstargames/hal/E;->invalidate()V

    return-void
.end method
