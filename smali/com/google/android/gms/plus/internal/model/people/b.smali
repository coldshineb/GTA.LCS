.class public final Lcom/google/android/gms/plus/internal/model/people/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;Landroid/os/Parcel;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;->b:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;->c:I

    invoke-static {p1, v3, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;->d:I

    invoke-static {p1, v4, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;->e:I

    invoke-static {p1, v5, v1}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    :cond_2
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->C(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;)I

    move-result v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v4, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v6, 0xffff

    and-int/2addr v6, v1

    packed-switch v6, :pswitch_data_0

    invoke-static {p1, v1}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v1}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v1}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eq v1, v4, :cond_1

    new-instance v0, Landroid/support/v4/app/k;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/k;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;

    invoke-direct {v1, v5, v3, v2, v0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;-><init>(Ljava/util/Set;III)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;

    return-object v0
.end method
