.class public final Lcom/google/android/gms/plus/internal/model/people/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;Landroid/os/Parcel;I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;->b:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;->c:I

    invoke-static {p1, v3, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;->d:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity$CoverInfoEntity;

    invoke-static {p1, v4, v2, p2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;->e:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity$CoverPhotoEntity;

    invoke-static {p1, v5, v2, p2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;->f:I

    invoke-static {p1, v6, v1}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    :cond_3
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->C(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;)I

    move-result v7

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move v5, v0

    move-object v4, v6

    move-object v3, v6

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v7, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v6, 0xffff

    and-int/2addr v6, v0

    packed-switch v6, :pswitch_data_0

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity$CoverInfoEntity;->a:Lcom/google/android/gms/plus/internal/model/people/d;

    invoke-static {p1, v0, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity$CoverInfoEntity;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    goto :goto_0

    :pswitch_2
    sget-object v4, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity$CoverPhotoEntity;->a:Lcom/google/android/gms/plus/internal/model/people/e;

    invoke-static {p1, v0, v4}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity$CoverPhotoEntity;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v5

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v7, :cond_1

    new-instance v0, Landroid/support/v4/app/k;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/k;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;-><init>(Ljava/util/Set;ILcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity$CoverInfoEntity;Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity$CoverPhotoEntity;I)V

    return-object v0

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

    new-array v0, p1, [Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;

    return-object v0
.end method
