.class public final Lcom/google/android/gms/fitness/request/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/fitness/request/DataDeleteRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Landroid/os/Parcel;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->h()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->d()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->g()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->e()Z

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->f()Z

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->i()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->C(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14

    invoke-static {p1}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-ge v12, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const v13, 0xffff

    and-int/2addr v13, v12

    sparse-switch v13, :sswitch_data_0

    invoke-static {p1, v12}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v12}, Landroid/support/v4/app/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v2

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v12}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v12}, Landroid/support/v4/app/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v4

    goto :goto_0

    :sswitch_3
    sget-object v6, Lcom/google/android/gms/fitness/data/DataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v12, v6}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    :sswitch_4
    sget-object v7, Lcom/google/android/gms/fitness/data/DataType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v12, v7}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0

    :sswitch_5
    sget-object v8, Lcom/google/android/gms/fitness/data/Session;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v12, v8}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_0

    :sswitch_6
    invoke-static {p1, v12}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_0

    :sswitch_7
    invoke-static {p1, v12}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_0

    :sswitch_8
    invoke-static {p1, v12}, Landroid/support/v4/app/a;->q(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v11

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-eq v12, v0, :cond_1

    new-instance v1, Landroid/support/v4/app/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Overread allowed size end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Landroid/support/v4/app/k;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(IJJLjava/util/List;Ljava/util/List;Ljava/util/List;ZZLandroid/os/IBinder;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    return-object v0
.end method
