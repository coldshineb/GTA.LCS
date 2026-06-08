.class public final Lcom/google/android/gms/ads/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/ads/b;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x140

    new-instance v0, Lcom/google/android/gms/ads/b;

    const/16 v1, 0x32

    const-string v2, "320x50_mb"

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/ads/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/b;->a:Lcom/google/android/gms/ads/b;

    new-instance v0, Lcom/google/android/gms/ads/b;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    const-string v3, "468x60_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/b;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/b;

    const/16 v1, 0x64

    const-string v2, "320x100_as"

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/ads/b;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/b;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    const-string v3, "728x90_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/b;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/b;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    const-string v3, "300x250_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/b;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/b;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    const-string v3, "160x600_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/b;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/b;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string v3, "smart_banner"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/b;-><init>(IILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/b;

    const/4 v1, -0x3

    const/4 v2, -0x4

    const-string v3, "fluid"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/b;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid width for AdSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x4

    if-eq p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid height for AdSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/google/android/gms/ads/b;->b:I

    iput p2, p0, Lcom/google/android/gms/ads/b;->c:I

    iput-object p3, p0, Lcom/google/android/gms/ads/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/ads/b;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/g;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/b;->c:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->b(Landroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/content/Context;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/ads/b;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/g;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/b;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->a(Landroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/ads/b;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/ads/b;

    iget v2, p0, Lcom/google/android/gms/ads/b;->b:I

    iget v3, p1, Lcom/google/android/gms/ads/b;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/ads/b;->c:I

    iget v3, p1, Lcom/google/android/gms/ads/b;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/ads/b;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/ads/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/b;->d:Ljava/lang/String;

    return-object v0
.end method
