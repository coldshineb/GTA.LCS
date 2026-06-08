.class public Lcom/rockstargames/hal/TextureAtlas;
.super Ljava/lang/Object;
.source "TextureAtlas.java"


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
            "Ljava/util/List<",
            "Lcom/rockstargames/hal/PackedImage;",
            ">;"
        }
    .end annotation
.end field

.field private scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    return-void
.end method

.method public static getBitmapStats()Ljava/lang/String;
    .locals 4

    .line 50
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v0

    .line 52
    const-string v1, "bmps: "

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {v0}, Lcom/rockstargames/hal/TextureAtlasCache;->size()I

    move-result v0

    const/16 v2, 0x400

    if-ge v0, v2, :cond_0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/high16 v3, 0x100000

    if-ge v0, v3, :cond_1

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v0, v0

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.2fMB"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public LoadImageFromBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 209
    iput-object p2, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public addReference(Lcom/rockstargames/hal/PackedImage;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public dump()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 35
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v0

    if-nez v0, :cond_1

    .line 37
    const-string v0, "TextureAtlas"

    const-string v1, "ActivityWrapper.getTextureAtlasCache() == Null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_1
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rockstargames/hal/TextureAtlasCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const-string v0, ".jpg"

    .line 0
    const-string v1, "images/"

    const/4 v2, 0x0

    .line 91
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/rockstargames/hal/andFile;->getAssetInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/rockstargames/hal/andFile;->getAssetInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/rockstargames/hal/andFile;->getAssetInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v3

    :cond_0
    return-object v3
.end method

.method public loadImage()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/TextureAtlas;->loadImage(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Z)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "Scale in: "

    .line 108
    iget-object v1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 118
    :try_start_0
    iget v4, p0, Lcom/rockstargames/hal/TextureAtlas;->flags:I

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 124
    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 126
    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 128
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 130
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 132
    iget v6, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    cmpg-float v7, v6, v1

    if-gtz v7, :cond_2

    const/4 v6, 0x4

    .line 134
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 135
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    const/4 v6, 0x2

    .line 139
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 140
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmapInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 145
    :goto_0
    const-string v7, "TextureAtlas"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " scale, density: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 148
    :goto_1
    sget-boolean v4, Lcom/rockstargames/hal/TextureAtlas;->FORCE_ARGB4444:Z

    if-eqz v4, :cond_4

    .line 150
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TextureAtlas: Out of memory trying to create image: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "andImage"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getTextureAtlasCache()Lcom/rockstargames/hal/TextureAtlasCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/TextureAtlasCache;->evictAll()V

    .line 168
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->invalidateHierarchy()V

    .line 169
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v6, 0x32

    .line 173
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-nez p1, :cond_5

    .line 181
    invoke-virtual {p0, v3}, Lcom/rockstargames/hal/TextureAtlas;->loadImage(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 183
    :cond_5
    iget p1, p0, Lcom/rockstargames/hal/TextureAtlas;->flags:I

    if-ne p1, v3, :cond_6

    iget p1, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_6

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "TextureAtlas: Trying again with scale = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    iget v0, p0, Lcom/rockstargames/hal/TextureAtlas;->flags:I

    or-int/2addr v0, v3

    iget v2, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    div-float/2addr v2, v1

    iget-boolean v1, p0, Lcom/rockstargames/hal/TextureAtlas;->isFromDLC:Z

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rockstargames/hal/TextureAtlas;->setParameters(Ljava/lang/String;IFZ)V

    .line 187
    invoke-virtual {p0, v3}, Lcom/rockstargames/hal/TextureAtlas;->loadImage(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 191
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "TextureAtlas: Unable to free enough memory to load image "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception p1

    .line 161
    invoke-static {p1}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    :goto_2
    return-object v2
.end method

.method public removeReference(Lcom/rockstargames/hal/PackedImage;)Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    iget-object p1, p0, Lcom/rockstargames/hal/TextureAtlas;->references:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/rockstargames/hal/TextureAtlas;->dump()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setParameters(Ljava/lang/String;IFZ)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/rockstargames/hal/TextureAtlas;->bitmapName:Ljava/lang/String;

    .line 76
    iput p2, p0, Lcom/rockstargames/hal/TextureAtlas;->flags:I

    .line 77
    iput p3, p0, Lcom/rockstargames/hal/TextureAtlas;->scale:F

    .line 78
    iput-boolean p4, p0, Lcom/rockstargames/hal/TextureAtlas;->isFromDLC:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 250
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
