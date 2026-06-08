.class public final Lcom/google/android/gms/nearby/sharing/internal/TrustedDevicesRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/sharing/internal/TrustedDevicesRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field public b:Ljava/lang/String;

.field public c:[B

.field public d:Lcom/google/android/gms/nearby/sharing/internal/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/sharing/internal/m;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/sharing/internal/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/sharing/internal/TrustedDevicesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[BLandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/sharing/internal/TrustedDevicesRequest;->a:I

    invoke-static {p2}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/nearby/sharing/internal/TrustedDevicesRequest;->b:Ljava/lang/String;

    invoke-static {p3}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/nearby/sharing/internal/TrustedDevicesRequest;->c:[B

    invoke-static {p4}, Lcom/google/android/gms/nearby/sharing/internal/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/sharing/internal/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/sharing/internal/TrustedDevicesRequest;->d:Lcom/google/android/gms/nearby/sharing/internal/g;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/nearby/sharing/internal/m;->a(Lcom/google/android/gms/nearby/sharing/internal/TrustedDevicesRequest;Landroid/os/Parcel;)V

    return-void
.end method
