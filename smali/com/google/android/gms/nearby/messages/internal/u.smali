.class public final Lcom/google/android/gms/nearby/messages/internal/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;)I

    move-result v2

    const/4 v0, 0x1

    iget v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->a:I

    invoke-static {p1, v0, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->b:Lcom/google/android/gms/nearby/messages/internal/b;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p1, v3, v0, v4}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->c:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {p1, v0, v3, p2, v4}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->d:Lcom/google/android/gms/nearby/messages/internal/e;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-static {p1, v3, v0, v4}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->e:Lcom/google/android/gms/nearby/messages/MessageFilter;

    invoke-static {p1, v0, v3, p2, v4}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->f:Landroid/app/PendingIntent;

    invoke-static {p1, v0, v3, p2, v4}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x7

    iget v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->g:I

    invoke-static {p1, v0, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->h:Ljava/lang/String;

    invoke-static {p1, v0, v3, v4}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x9

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->i:Ljava/lang/String;

    invoke-static {p1, v0, v3, v4}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xa

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->j:[B

    invoke-static {p1, v0, v3, v4}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;I[BZ)V

    const/16 v0, 0xb

    iget-boolean v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->k:Z

    invoke-static {p1, v0, v3}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xc

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->l:Lcom/google/android/gms/nearby/messages/internal/n;

    if-nez v3, :cond_2

    :goto_2
    invoke-static {p1, v0, v1, v4}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v2}, Landroid/support/v4/app/a;->C(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->b:Lcom/google/android/gms/nearby/messages/internal/b;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->d:Lcom/google/android/gms/nearby/messages/internal/e;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/e;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->l:Lcom/google/android/gms/nearby/messages/internal/n;

    invoke-interface {v1}, Lcom/google/android/gms/nearby/messages/internal/n;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 16

    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;)I

    move-result v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v15, 0xffff

    and-int/2addr v15, v1

    packed-switch v15, :pswitch_data_0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->q(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    sget-object v4, Lcom/google/android/gms/nearby/messages/Strategy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v4}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/nearby/messages/Strategy;

    move-object v4, v1

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->q(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v5

    goto :goto_0

    :pswitch_4
    sget-object v6, Lcom/google/android/gms/nearby/messages/MessageFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v6}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/nearby/messages/MessageFilter;

    move-object v6, v1

    goto :goto_0

    :pswitch_5
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v7}, Landroid/support/v4/app/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    move-object v7, v1

    goto :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->g(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->p(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->p(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :pswitch_9
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->s(Landroid/os/Parcel;I)[B

    move-result-object v11

    goto :goto_0

    :pswitch_a
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->c(Landroid/os/Parcel;I)Z

    move-result v12

    goto :goto_0

    :pswitch_b
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->q(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v13

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eq v1, v14, :cond_1

    new-instance v1, Landroid/support/v4/app/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Overread allowed size end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/k;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;

    return-object v0
.end method
