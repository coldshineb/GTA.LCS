.class public Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;


# instance fields
.field final b:I

.field private final c:Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/nearby/messages/devices/f;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/devices/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    sget-object v1, Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;->a:Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;-><init>(Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;)V

    sput-object v0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->a:Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->b:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->c:Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;-><init>(ILcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->c:Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->c:Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    iget-object v1, p1, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->c:Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->c:Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NearbyDevice{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->c:Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/devices/f;->a(Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;Landroid/os/Parcel;I)V

    return-void
.end method
