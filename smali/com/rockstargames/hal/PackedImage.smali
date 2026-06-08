.class public Lcom/rockstargames/hal/PackedImage;
.super Ljava/lang/Object;


# instance fields
.field attributes:Lcom/rockstargames/hal/e;

.field bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field filteringTurnedOff:Z

.field myPaint:Landroid/graphics/Paint;

.field private previousDrawHeight:I

.field private previousDrawWidth:I

.field private previousFilter:Landroid/graphics/ColorFilter;

.field private scaleX:F

.field private scaleY:F

.field sourceRect:Landroid/graphics/Rect;

.field targetRect:Landroid/graphics/RectF;

.field tiledBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/e;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/PackedImage;->filteringTurnedOff:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/PackedImage;->previousFilter:Landroid/graphics/ColorFilter;

    iput v1, p0, Lcom/rockstargames/hal/PackedImage;->previousDrawWidth:I

    iput v1, p0, Lcom/rockstargames/hal/PackedImage;->previousDrawHeight:I

    iput-object p1, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget-object v0, v0, Lcom/rockstargames/hal/e;->i:Lcom/rockstargames/hal/TextureAtlas;

    invoke-virtual {v0, p0}, Lcom/rockstargames/hal/TextureAtlas;->addReference(Lcom/rockstargames/hal/PackedImage;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/PackedImage;->targetRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getPackedWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getY()I

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getPackedHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public Draw(Landroid/graphics/Canvas;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rockstargames/hal/PackedImage;->Draw(Landroid/graphics/Canvas;IIZLandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public Draw(Landroid/graphics/Canvas;IIZLandroid/graphics/ColorFilter;)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/rockstargames/hal/PackedImage;->previousDrawWidth:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/rockstargames/hal/PackedImage;->previousDrawHeight:I

    if-eq p3, v0, :cond_9

    :cond_0
    int-to-float v0, p2

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/rockstargames/hal/PackedImage;->scaleX:F

    int-to-float v0, p3

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/rockstargames/hal/PackedImage;->scaleY:F

    iput p2, p0, Lcom/rockstargames/hal/PackedImage;->previousDrawWidth:I

    iput p3, p0, Lcom/rockstargames/hal/PackedImage;->previousDrawHeight:I

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/rockstargames/hal/PackedImage;->previousFilter:Landroid/graphics/ColorFilter;

    if-eq p5, v3, :cond_1

    iget-object v3, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iput-object p5, p0, Lcom/rockstargames/hal/PackedImage;->previousFilter:Landroid/graphics/ColorFilter;

    :cond_1
    if-nez v2, :cond_2

    const-string v0, "PackedImage"

    const-string v2, "PackedImage attempting to draw null bitmap!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "PackedImage"

    const-string v3, "PackedImage attempting to draw recycled bitmap!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rockstargames/hal/TextureAtlasCache;->evictAll()V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v0, "PackedImage"

    const-string v2, "PackedImage unable to reload recycled bitmap!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_7

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->tiledBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getHeight()I

    move-result v5

    invoke-static {v2, v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/PackedImage;->tiledBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/rockstargames/hal/PackedImage;->tiledBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/rockstargames/hal/PackedImage;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_6
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/rockstargames/hal/PackedImage;->scaleX:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/rockstargames/hal/PackedImage;->scaleY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :cond_7
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getOffsetX()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/rockstargames/hal/PackedImage;->scaleX:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getOffsetY()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/rockstargames/hal/PackedImage;->scaleY:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getOffsetX()I

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getPackedWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/rockstargames/hal/PackedImage;->scaleX:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getOffsetY()I

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->getPackedHeight()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/rockstargames/hal/PackedImage;->scaleY:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_8
    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/rockstargames/hal/PackedImage;->targetRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget-object v0, v0, Lcom/rockstargames/hal/e;->i:Lcom/rockstargames/hal/TextureAtlas;

    invoke-virtual {v0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget v0, v0, Lcom/rockstargames/hal/e;->d:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget v0, v0, Lcom/rockstargames/hal/e;->g:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget v0, v0, Lcom/rockstargames/hal/e;->h:I

    return v0
.end method

.method public getPackedHeight()I
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget v0, v0, Lcom/rockstargames/hal/e;->f:I

    return v0
.end method

.method public getPackedWidth()I
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget v0, v0, Lcom/rockstargames/hal/e;->e:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget v0, v0, Lcom/rockstargames/hal/e;->c:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget v0, v0, Lcom/rockstargames/hal/e;->a:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget v0, v0, Lcom/rockstargames/hal/e;->b:I

    return v0
.end method

.method public turnOffFiltering()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/rockstargames/hal/PackedImage;->filteringTurnedOff:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/PackedImage;->filteringTurnedOff:Z

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->myPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->sourceRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public unload()Lcom/rockstargames/hal/TextureAtlas;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget-object v0, v0, Lcom/rockstargames/hal/e;->i:Lcom/rockstargames/hal/TextureAtlas;

    invoke-virtual {v0, p0}, Lcom/rockstargames/hal/TextureAtlas;->removeReference(Lcom/rockstargames/hal/PackedImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/PackedImage;->attributes:Lcom/rockstargames/hal/e;

    iget-object v0, v0, Lcom/rockstargames/hal/e;->i:Lcom/rockstargames/hal/TextureAtlas;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
