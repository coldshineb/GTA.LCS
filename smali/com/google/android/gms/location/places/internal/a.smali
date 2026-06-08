.class public final Lcom/google/android/gms/location/places/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->a:I

    invoke-static {p1, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->d:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->e:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->f:I

    invoke-static {p1, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->h:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->i:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->j:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->C(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13

    const/4 v11, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;)I

    move-result v12

    move-object v10, v0

    move-object v9, v0

    move-object v8, v0

    move-object v7, v0

    move-object v6, v0

    move-object v5, v0

    move v4, v11

    move-object v3, v0

    move-object v2, v0

    move v1, v11

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v12, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v11, 0xffff

    and-int/2addr v11, v0

    sparse-switch v11, :sswitch_data_0

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->p(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->p(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->y(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :sswitch_4
    sget-object v6, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v6}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    :sswitch_5
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :sswitch_6
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->p(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :sswitch_7
    sget-object v8, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v8}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_0

    :sswitch_8
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->p(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :sswitch_9
    sget-object v10, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v10}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v12, :cond_1

    new-instance v0, Landroid/support/v4/app/k;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/k;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;-><init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

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
        0x9 -> :sswitch_9
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;

    return-object v0
.end method
