.class public Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field private static b:Lcom/google/android/gms/nearby/bootstrap/request/f;


# instance fields
.field final a:I

.field private final c:Lcom/google/android/gms/nearby/bootstrap/Device;

.field private final d:[B

.field private final e:Lcom/google/android/gms/b/bL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/bootstrap/request/f;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/bootstrap/request/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;->b:Lcom/google/android/gms/nearby/bootstrap/request/f;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/bootstrap/Device;[BLandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;->a:I

    invoke-static {p2}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/bootstrap/Device;

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;->c:Lcom/google/android/gms/nearby/bootstrap/Device;

    invoke-static {p3}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;->d:[B

    invoke-static {p4}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/b/bM;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bL;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;->e:Lcom/google/android/gms/b/bL;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/nearby/bootstrap/Device;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;->c:Lcom/google/android/gms/nearby/bootstrap/Device;

    return-object v0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;->d:[B

    return-object v0
.end method

.method public final c()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;->e:Lcom/google/android/gms/b/bL;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;->e:Lcom/google/android/gms/b/bL;

    invoke-interface {v0}, Lcom/google/android/gms/b/bL;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/bootstrap/request/f;->a(Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;Landroid/os/Parcel;I)V

    return-void
.end method
