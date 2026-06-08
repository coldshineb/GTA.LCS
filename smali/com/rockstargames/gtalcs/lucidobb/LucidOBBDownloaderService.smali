.class public Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderService;
.super Lcom/google/android/vending/expansion/downloader/a/j;


# static fields
.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderService;->b:[B

    return-void

    :array_0
    .array-data 1
        0x2t
        0x16t
        -0xct
        -0x1t
        0x36t
        0x62t
        -0x7bt
        -0x7bt
        0x2bt
        0x2t
        -0x8t
        -0x5t
        0x9t
        0x5t
        -0x66t
        -0x6bt
        -0x21t
        0x2dt
        -0x1t
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkgAWr95RFDSHDBnBeBoFaSHxMyBVLnxC5ZHNl4mQXYqH5Hy1AQXofUsCtxWmStAadso10G0n1dt9boOkWVl7FBXOJLXfWftkrQS7n7Jp5zstmnl6jqH3tdoc5ptIfMgpcjwZC01PL1I9GAzSKLAuRZxi/GvkAlj2WWzM2M4QGD6c3xOQBu+j7eEdBwyadoQy1uswCpBQqi00bRu0uezPZszeKEMtnn2IgR9oDbCRoBw+29tQp/7rYWzGObGun1o5JyGkQtm8pLDifJePbkvlfla3ntN0OyhqytBkhspaT31/s9aiQZPy1sDpdI1QG+z47J/HSqL1ha3XjDCXUwynvwIDAQAB"

    return-object v0
.end method

.method public final h()[B
    .locals 1

    sget-object v0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderService;->b:[B

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBAlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
