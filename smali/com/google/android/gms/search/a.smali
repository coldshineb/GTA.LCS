.class public final Lcom/google/android/gms/search/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/search/GoogleNowAuthState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/search/GoogleNowAuthState;Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/search/GoogleNowAuthState;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/search/GoogleNowAuthState;->a:I

    invoke-static {p1, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/search/GoogleNowAuthState;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/search/GoogleNowAuthState;->d:J

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->C(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;)I

    move-result v6

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v3, v0

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v6, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v7, 0xffff

    and-int/2addr v7, v0

    sparse-switch v7, :sswitch_data_0

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->p(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->p(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v6, :cond_1

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
    new-instance v0, Lcom/google/android/gms/search/GoogleNowAuthState;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/search/GoogleNowAuthState;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    return-object v0

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

    new-array v0, p1, [Lcom/google/android/gms/search/GoogleNowAuthState;

    return-object v0
.end method
