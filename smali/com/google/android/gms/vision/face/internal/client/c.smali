.class public final Lcom/google/android/gms/vision/face/internal/client/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;Landroid/os/Parcel;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->b:I

    invoke-static {p1, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->c:F

    invoke-static {p1, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->d:F

    invoke-static {p1, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->e:I

    invoke-static {p1, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->C(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;)I

    move-result v6

    move v0, v1

    move v2, v3

    move v4, v3

    move v5, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v6, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v3, 0xffff

    and-int/2addr v3, v1

    packed-switch v3, :pswitch_data_0

    invoke-static {p1, v1}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v1}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    move v5, v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v1}, Landroid/support/v4/app/a;->l(Landroid/os/Parcel;I)F

    move-result v3

    move v4, v3

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/app/a;->l(Landroid/os/Parcel;I)F

    move-result v1

    move v2, v1

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v1}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eq v1, v6, :cond_1

    new-instance v0, Landroid/support/v4/app/k;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/k;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    invoke-direct {v1, v5, v4, v2, v0}, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;-><init>(IFFI)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    return-object v0
.end method
