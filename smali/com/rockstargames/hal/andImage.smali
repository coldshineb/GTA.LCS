.class public Lcom/rockstargames/hal/andImage;
.super Ljava/lang/Object;


# static fields
.field private static caulk:Landroid/graphics/Bitmap;

.field private static hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/rockstargames/hal/TextureAtlas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;

.field private packedImage:Lcom/rockstargames/hal/PackedImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/rockstargames/hal/andImage;->caulk:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/andImage;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/rockstargames/hal/PackedImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/andImage;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    return-void
.end method

.method private static LoadImageFromBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/rockstargames/hal/TextureAtlas;
    .locals 2

    sget-object v0, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/TextureAtlas;

    if-nez v0, :cond_0

    new-instance v0, Lcom/rockstargames/hal/TextureAtlas;

    invoke-direct {v0}, Lcom/rockstargames/hal/TextureAtlas;-><init>()V

    sget-object v1, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/rockstargames/hal/TextureAtlas;->LoadImageFromBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createImage(Ljava/lang/String;)Lcom/rockstargames/hal/andImage;
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/andImage;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andImage;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static dumpAllImages()V
    .locals 2

    sget-object v0, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/TextureAtlas;

    invoke-virtual {v0}, Lcom/rockstargames/hal/TextureAtlas;->dump()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static getCaulk()Landroid/graphics/Bitmap;
    .locals 8

    const/16 v7, 0x4000

    const/16 v6, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/rockstargames/hal/andImage;->caulk:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    new-array v5, v7, [I

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_3

    rem-int/lit8 v0, v4, 0x2

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    div-int/lit16 v3, v4, 0x80

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    move v3, v1

    :goto_2
    if-ne v0, v3, :cond_2

    const/high16 v0, -0x1000000

    :goto_3
    aput v0, v5, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    const v0, -0xff01

    goto :goto_3

    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v6, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockstargames/hal/andImage;->caulk:Landroid/graphics/Bitmap;

    :cond_4
    sget-object v0, Lcom/rockstargames/hal/andImage;->caulk:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static getTextureAtlas(Ljava/lang/String;IFZ)Lcom/rockstargames/hal/TextureAtlas;
    .locals 2

    sget-object v0, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/TextureAtlas;

    if-nez v0, :cond_0

    new-instance v0, Lcom/rockstargames/hal/TextureAtlas;

    invoke-direct {v0}, Lcom/rockstargames/hal/TextureAtlas;-><init>()V

    sget-object v1, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/rockstargames/hal/TextureAtlas;->setParameters(Ljava/lang/String;IFZ)V

    invoke-virtual {v0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmap()Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static loadImageFromBytes(Ljava/lang/String;[BI)Lcom/rockstargames/hal/andImage;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/rockstargames/hal/e;

    invoke-direct {v1}, Lcom/rockstargames/hal/e;-><init>()V

    iput v3, v1, Lcom/rockstargames/hal/e;->a:I

    iput v3, v1, Lcom/rockstargames/hal/e;->b:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/rockstargames/hal/e;->e:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/rockstargames/hal/e;->f:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/rockstargames/hal/e;->c:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/rockstargames/hal/e;->d:I

    invoke-static {p0, v0}, Lcom/rockstargames/hal/andImage;->LoadImageFromBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/rockstargames/hal/TextureAtlas;

    move-result-object v0

    iput-object v0, v1, Lcom/rockstargames/hal/e;->i:Lcom/rockstargames/hal/TextureAtlas;

    iput v3, v1, Lcom/rockstargames/hal/e;->g:I

    iput v3, v1, Lcom/rockstargames/hal/e;->h:I

    new-instance v2, Lcom/rockstargames/hal/PackedImage;

    invoke-direct {v2, v1}, Lcom/rockstargames/hal/PackedImage;-><init>(Lcom/rockstargames/hal/e;)V

    new-instance v0, Lcom/rockstargames/hal/andImage;

    invoke-direct {v0, p0, v2}, Lcom/rockstargames/hal/andImage;-><init>(Ljava/lang/String;Lcom/rockstargames/hal/PackedImage;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static unloadPackedImage(Lcom/rockstargames/hal/PackedImage;)V
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->unload()Lcom/rockstargames/hal/TextureAtlas;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static unpackImage(Ljava/lang/String;Ljava/lang/String;IIIIIIIII)Lcom/rockstargames/hal/andImage;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/rockstargames/hal/e;

    invoke-direct {v2}, Lcom/rockstargames/hal/e;-><init>()V

    iput p2, v2, Lcom/rockstargames/hal/e;->a:I

    iput p3, v2, Lcom/rockstargames/hal/e;->b:I

    iput p4, v2, Lcom/rockstargames/hal/e;->e:I

    iput p5, v2, Lcom/rockstargames/hal/e;->f:I

    iput p8, v2, Lcom/rockstargames/hal/e;->c:I

    iput p9, v2, Lcom/rockstargames/hal/e;->d:I

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getWindowWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getWindowHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p8

    div-float/2addr v0, v4

    int-to-float v4, p9

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v3, 0x0

    invoke-static {p1, p10, v0, v3}, Lcom/rockstargames/hal/andImage;->getTextureAtlas(Ljava/lang/String;IFZ)Lcom/rockstargames/hal/TextureAtlas;

    move-result-object v0

    iput-object v0, v2, Lcom/rockstargames/hal/e;->i:Lcom/rockstargames/hal/TextureAtlas;

    iput p6, v2, Lcom/rockstargames/hal/e;->g:I

    iput p7, v2, Lcom/rockstargames/hal/e;->h:I

    new-instance v0, Lcom/rockstargames/hal/PackedImage;

    invoke-direct {v0, v2}, Lcom/rockstargames/hal/PackedImage;-><init>(Lcom/rockstargames/hal/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/rockstargames/hal/andImage;

    invoke-direct {v1, p0, v0}, Lcom/rockstargames/hal/andImage;-><init>(Ljava/lang/String;Lcom/rockstargames/hal/PackedImage;)V

    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "andImage"

    const-string v3, "Exception thrown when creating image:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getByteData()[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v1}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackedImage()Lcom/rockstargames/hal/PackedImage;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public turnFilteringOff()V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->turnOffFiltering()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "andImage"

    const-string v1, "Trying to make NULL packed image unfiltered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unload()V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-nez v0, :cond_0

    const-string v0, "andImage"

    const-string v1, "Trying to recycle null bitmap!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-static {v0}, Lcom/rockstargames/hal/andImage;->unloadPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    goto :goto_0
.end method
