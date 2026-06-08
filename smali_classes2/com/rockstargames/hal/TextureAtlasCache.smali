.class public Lcom/rockstargames/hal/TextureAtlasCache;
.super Landroidx/collection/LruCache;
.source "TextureAtlasCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Lcom/rockstargames/hal/TextureAtlas;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Lcom/rockstargames/hal/TextureAtlas;)Landroid/graphics/Bitmap;
    .locals 0

    .line 14
    invoke-virtual {p1}, Lcom/rockstargames/hal/TextureAtlas;->loadImage()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    check-cast p1, Lcom/rockstargames/hal/TextureAtlas;

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/TextureAtlasCache;->create(Lcom/rockstargames/hal/TextureAtlas;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected entryRemoved(ZLcom/rockstargames/hal/TextureAtlas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 7
    check-cast p2, Lcom/rockstargames/hal/TextureAtlas;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rockstargames/hal/TextureAtlasCache;->entryRemoved(ZLcom/rockstargames/hal/TextureAtlas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected sizeOf(Lcom/rockstargames/hal/TextureAtlas;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 7
    check-cast p1, Lcom/rockstargames/hal/TextureAtlas;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/rockstargames/hal/TextureAtlasCache;->sizeOf(Lcom/rockstargames/hal/TextureAtlas;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
