.class public Lcom/rockstargames/hal/andImage;
.super Ljava/lang/Object;
.source "andImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andImage$andImageReferencer;
    }
.end annotation


# static fields
.field private static caulk:Landroid/graphics/Bitmap;

.field private static hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
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

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/rockstargames/hal/andImage;->caulk:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/rockstargames/hal/andImage;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/rockstargames/hal/PackedImage;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/rockstargames/hal/andImage;->name:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    return-void
.end method

.method private static LoadImageFromBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/rockstargames/hal/TextureAtlas;
    .locals 2

    .line 63
    sget-object v0, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/TextureAtlas;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/rockstargames/hal/TextureAtlas;

    invoke-direct {v0}, Lcom/rockstargames/hal/TextureAtlas;-><init>()V

    .line 69
    sget-object v1, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/rockstargames/hal/TextureAtlas;->LoadImageFromBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createImage(Ljava/lang/String;)Lcom/rockstargames/hal/andImage;
    .locals 1

    .line 99
    new-instance v0, Lcom/rockstargames/hal/andImage;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andImage;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static dumpAllImages()V
    .locals 2

    .line 89
    sget-object v0, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/TextureAtlas;

    .line 91
    invoke-virtual {v1}, Lcom/rockstargames/hal/TextureAtlas;->dump()V

    goto :goto_0

    .line 94
    :cond_0
    sget-object v0, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static getCaulk()Landroid/graphics/Bitmap;
    .locals 7

    .line 26
    sget-object v0, Lcom/rockstargames/hal/andImage;->caulk:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    const/16 v0, 0x4000

    .line 29
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 31
    rem-int/lit8 v4, v3, 0x2

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    div-int/lit16 v6, v3, 0x80

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-ne v4, v5, :cond_2

    const/high16 v4, -0x1000000

    goto :goto_3

    :cond_2
    const v4, -0xff01

    :goto_3
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x80

    invoke-static {v1, v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/rockstargames/hal/andImage;->caulk:Landroid/graphics/Bitmap;

    .line 35
    :cond_4
    sget-object v0, Lcom/rockstargames/hal/andImage;->caulk:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static getTextureAtlas(Ljava/lang/String;IFZ)Lcom/rockstargames/hal/TextureAtlas;
    .locals 2

    .line 46
    sget-object v0, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/TextureAtlas;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/rockstargames/hal/TextureAtlas;

    invoke-direct {v0}, Lcom/rockstargames/hal/TextureAtlas;-><init>()V

    .line 52
    sget-object v1, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/rockstargames/hal/TextureAtlas;->setParameters(Ljava/lang/String;IFZ)V

    .line 56
    invoke-virtual {v0}, Lcom/rockstargames/hal/TextureAtlas;->getBitmap()Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static loadImageFromBytes(Ljava/lang/String;[BI)Lcom/rockstargames/hal/andImage;
    .locals 2

    const/4 v0, 0x0

    .line 145
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    new-instance p2, Lcom/rockstargames/hal/PackedImageAttributes;

    invoke-direct {p2}, Lcom/rockstargames/hal/PackedImageAttributes;-><init>()V

    .line 150
    iput v0, p2, Lcom/rockstargames/hal/PackedImageAttributes;->x:I

    .line 151
    iput v0, p2, Lcom/rockstargames/hal/PackedImageAttributes;->y:I

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p2, Lcom/rockstargames/hal/PackedImageAttributes;->packedWidth:I

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p2, Lcom/rockstargames/hal/PackedImageAttributes;->packedHeight:I

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p2, Lcom/rockstargames/hal/PackedImageAttributes;->width:I

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p2, Lcom/rockstargames/hal/PackedImageAttributes;->height:I

    .line 157
    invoke-static {p0, p1}, Lcom/rockstargames/hal/andImage;->LoadImageFromBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/rockstargames/hal/TextureAtlas;

    move-result-object p1

    iput-object p1, p2, Lcom/rockstargames/hal/PackedImageAttributes;->textureAtlas:Lcom/rockstargames/hal/TextureAtlas;

    .line 158
    iput v0, p2, Lcom/rockstargames/hal/PackedImageAttributes;->offsetX:I

    .line 159
    iput v0, p2, Lcom/rockstargames/hal/PackedImageAttributes;->offsetY:I

    .line 161
    new-instance p1, Lcom/rockstargames/hal/PackedImage;

    invoke-direct {p1, p2}, Lcom/rockstargames/hal/PackedImage;-><init>(Lcom/rockstargames/hal/PackedImageAttributes;)V

    .line 163
    new-instance p2, Lcom/rockstargames/hal/andImage;

    invoke-direct {p2, p0, p1}, Lcom/rockstargames/hal/andImage;-><init>(Ljava/lang/String;Lcom/rockstargames/hal/PackedImage;)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static unloadPackedImage(Lcom/rockstargames/hal/PackedImage;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/rockstargames/hal/PackedImage;->unload()Lcom/rockstargames/hal/TextureAtlas;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 83
    sget-object v0, Lcom/rockstargames/hal/andImage;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static unpackImage(Ljava/lang/String;Ljava/lang/String;IIIIIIIII)Lcom/rockstargames/hal/andImage;
    .locals 1

    .line 112
    :try_start_0
    new-instance v0, Lcom/rockstargames/hal/PackedImageAttributes;

    invoke-direct {v0}, Lcom/rockstargames/hal/PackedImageAttributes;-><init>()V

    .line 113
    iput p2, v0, Lcom/rockstargames/hal/PackedImageAttributes;->x:I

    .line 114
    iput p3, v0, Lcom/rockstargames/hal/PackedImageAttributes;->y:I

    .line 115
    iput p4, v0, Lcom/rockstargames/hal/PackedImageAttributes;->packedWidth:I

    .line 116
    iput p5, v0, Lcom/rockstargames/hal/PackedImageAttributes;->packedHeight:I

    .line 117
    iput p8, v0, Lcom/rockstargames/hal/PackedImageAttributes;->width:I

    .line 118
    iput p9, v0, Lcom/rockstargames/hal/PackedImageAttributes;->height:I

    .line 120
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getWindowWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getWindowHeight()I

    move-result p3

    int-to-float p3, p3

    int-to-float p4, p8

    div-float/2addr p2, p4

    int-to-float p4, p9

    div-float/2addr p3, p4

    .line 126
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/4 p3, 0x0

    .line 129
    invoke-static {p1, p10, p2, p3}, Lcom/rockstargames/hal/andImage;->getTextureAtlas(Ljava/lang/String;IFZ)Lcom/rockstargames/hal/TextureAtlas;

    move-result-object p1

    iput-object p1, v0, Lcom/rockstargames/hal/PackedImageAttributes;->textureAtlas:Lcom/rockstargames/hal/TextureAtlas;

    .line 130
    iput p6, v0, Lcom/rockstargames/hal/PackedImageAttributes;->offsetX:I

    .line 131
    iput p7, v0, Lcom/rockstargames/hal/PackedImageAttributes;->offsetY:I

    .line 133
    new-instance p1, Lcom/rockstargames/hal/PackedImage;

    invoke-direct {p1, v0}, Lcom/rockstargames/hal/PackedImage;-><init>(Lcom/rockstargames/hal/PackedImageAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    const-string p2, "andImage"

    const-string p3, "Exception thrown when creating image:"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 140
    :goto_0
    new-instance p2, Lcom/rockstargames/hal/andImage;

    invoke-direct {p2, p0, p1}, Lcom/rockstargames/hal/andImage;-><init>(Ljava/lang/String;Lcom/rockstargames/hal/PackedImage;)V

    return-object p2
.end method


# virtual methods
.method public getByteData()[B
    .locals 4

    .line 226
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    iget-object v1, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v1}, Lcom/rockstargames/hal/PackedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 229
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->getHeight()I

    move-result v0

    return v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackedImage()Lcom/rockstargames/hal/PackedImage;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->getWidth()I

    move-result v0

    return v0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    const/4 v0, -0x1

    return v0
.end method

.method public turnFilteringOff()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/rockstargames/hal/PackedImage;->turnOffFiltering()V

    return-void

    .line 240
    :cond_0
    const-string v0, "andImage"

    const-string v1, "Trying to make NULL packed image unfiltered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unload()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-nez v0, :cond_0

    .line 216
    const-string v0, "andImage"

    const-string v1, "Trying to recycle null bitmap!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 220
    :cond_0
    invoke-static {v0}, Lcom/rockstargames/hal/andImage;->unloadPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/rockstargames/hal/andImage;->packedImage:Lcom/rockstargames/hal/PackedImage;

    return-void
.end method
