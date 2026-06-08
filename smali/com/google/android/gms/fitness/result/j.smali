.class public final Lcom/google/android/gms/fitness/result/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/fitness/result/SessionReadResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/fitness/result/SessionReadResult;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/result/SessionReadResult;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/result/SessionReadResult;->d()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/result/SessionReadResult;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/result/SessionReadResult;->c()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->C(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;)I

    move-result v5

    const/4 v4, 0x0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v5, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v6, 0xffff

    and-int/2addr v6, v1

    sparse-switch v6, :sswitch_data_0

    invoke-static {p1, v1}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    sget-object v3, Lcom/google/android/gms/fitness/data/Session;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v3}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v1}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    move v4, v1

    goto :goto_0

    :sswitch_2
    sget-object v2, Lcom/google/android/gms/fitness/data/SessionDataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v0}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eq v1, v5, :cond_1

    new-instance v0, Landroid/support/v4/app/k;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/k;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/google/android/gms/fitness/result/SessionReadResult;

    invoke-direct {v1, v4, v3, v2, v0}, Lcom/google/android/gms/fitness/result/SessionReadResult;-><init>(ILjava/util/List;Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/fitness/result/SessionReadResult;

    return-object v0
.end method
