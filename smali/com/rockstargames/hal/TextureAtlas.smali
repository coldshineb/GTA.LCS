.class public Lcom/rockstargames/hal/TextureAtlas;
.super Ljava/lang/Object;


# static fields
.field private static FORCE_ARGB4444:Z


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field private bitmapName:Ljava/lang/String;

.field private flags:I

.field private isFromDLC:Z

.field private references:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rockstargames/hal/PackedImage;",
            ">;"
        }
    .end annotation
.end field

.field private scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/hal/TextureAtlas;->FORCE_ARGB4444:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    return-void
.end method

.method public static getBitmapStats()Ljava/lang/String;
    .locals 6

    const-string v0, "bmps: "

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/rockstargames/hal/TextureAtlasCache;->size()I

    move-result v1

    const/16 v2, 0x400

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/high16 v2, 0x100000

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%.2fMB"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-float v1, v1

    const/high16 v5, 0x49800000    # 1048576.0f

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public LoadImageFromBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p2, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public addReference(Lcom/rockstargames/hal/PackedImage;)V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    iget-object v1, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public dump()V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TextureAtlas"

    const-string v1, "ActivityWrapper.getTextureAtlasCache() == Null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rockstargames/hal/TextureAtlasCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getBitmapInputStream()Ljava/io/InputStream;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "images/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rockstargames/hal/andFile;->getAssetInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "images/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/rockstargames/hal/andFile;->getAssetInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "images/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/rockstargames/hal/andFile;->getAssetInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public loadImage()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/TextureAtlas;->loadImage(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Z)Landroid/graphics/Bitmap;
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3e800000    # 0.25f

    const/4 v0, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget v1, p0, Lcom/rockstargames/hal/TextureAtlas;->flags:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    sget-boolean v2, Lcom/rockstargames/hal/TextureAtlas;->FORCE_ARGB4444:Z

    if-eqz v2, :cond_4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v1, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_2

    const/4 v1, 0x4

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    const-string v3, "TextureAtlas"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Scale in: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scale, density: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "andImage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TextureAtlas: Out of memory trying to create image: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockstargames/hal/TextureAtlasCache;->evictAll()V

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->invalidateHierarchy()V

    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x32

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    if-nez p1, :cond_5

    invoke-virtual {p0, v6}, Lcom/rockstargames/hal/TextureAtlas;->loadImage(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    :try_start_3
    iget v1, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3

    const/4 v1, 0x2

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/rockstargames/hal/TextureAtlas;->flags:I

    if-ne v1, v6, :cond_6

    iget v1, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_6

    const-string v0, "andImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TextureAtlas: Trying again with scale = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    div-float/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    iget v1, p0, Lcom/rockstargames/hal/TextureAtlas;->flags:I

    or-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    div-float/2addr v2, v8

    iget-boolean v3, p0, Lcom/rockstargames/hal/TextureAtlas;->isFromDLC:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/rockstargames/hal/TextureAtlas;->setParameters(Ljava/lang/String;IFZ)V

    invoke-virtual {p0, v6}, Lcom/rockstargames/hal/TextureAtlas;->loadImage(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v1, "andImage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TextureAtlas: Unable to free enough memory to load image "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public removeReference(Lcom/rockstargames/hal/PackedImage;)Z
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->dump()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParameters(Ljava/lang/String;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    iput p2, p0, Lcom/rockstargames/hal/TextureAtlas;->flags:I

    iput p3, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    iput-boolean p4, p0, Lcom/rockstargames/hal/TextureAtlas;->isFromDLC:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
