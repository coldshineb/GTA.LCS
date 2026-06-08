.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUCCESS:I


# instance fields
.field final a:I

.field private final b:I

.field private final c:Landroid/app/PendingIntent;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    new-instance v0, Lcom/google/android/gms/common/g;

    invoke-direct {v0}, Lcom/google/android/gms/common/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->a:I

    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/common/ConnectionResult;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    return v0
.end method

.method public final b()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
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
    instance-of v2, p1, Lcom/google/android/gms/common/ConnectionResult;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/z;

    move-result-object v1

    const-string v2, "statusCode"

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UNKNOWN_ERROR_CODE("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/z;

    move-result-object v0

    const-string v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/z;

    move-result-object v0

    const-string v1, "message"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/z;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "SERVICE_MISSING"

    goto :goto_0

    :pswitch_3
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_0

    :pswitch_4
    const-string v0, "SERVICE_DISABLED"

    goto :goto_0

    :pswitch_5
    const-string v0, "SIGN_IN_REQUIRED"

    goto :goto_0

    :pswitch_6
    const-string v0, "INVALID_ACCOUNT"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESOLUTION_REQUIRED"

    goto :goto_0

    :pswitch_8
    const-string v0, "NETWORK_ERROR"

    goto :goto_0

    :pswitch_9
    const-string v0, "INTERNAL_ERROR"

    goto :goto_0

    :pswitch_a
    const-string v0, "SERVICE_INVALID"

    goto :goto_0

    :pswitch_b
    const-string v0, "DEVELOPER_ERROR"

    goto :goto_0

    :pswitch_c
    const-string v0, "LICENSE_CHECK_FAILED"

    goto :goto_0

    :pswitch_d
    const-string v0, "CANCELED"

    goto :goto_0

    :pswitch_e
    const-string v0, "TIMEOUT"

    goto :goto_0

    :pswitch_f
    const-string v0, "INTERRUPTED"

    goto :goto_0

    :pswitch_10
    const-string v0, "API_UNAVAILABLE"

    goto :goto_0

    :pswitch_11
    const-string v0, "SIGN_IN_FAILED"

    goto :goto_0

    :pswitch_12
    const-string v0, "SERVICE_UPDATING"

    goto :goto_0

    :pswitch_13
    const-string v0, "SERVICE_MISSING_PERMISSION"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/g;->a(Lcom/google/android/gms/common/ConnectionResult;Landroid/os/Parcel;I)V

    return-void
.end method
