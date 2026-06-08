.class public Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field private static b:Lcom/google/android/gms/nearby/bootstrap/request/g;


# instance fields
.field final a:I

.field private final c:Lcom/google/android/gms/b/bO;

.field private final d:Lcom/google/android/gms/b/bL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/bootstrap/request/g;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/bootstrap/request/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;->b:Lcom/google/android/gms/nearby/bootstrap/request/g;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;->a:I

    invoke-static {p2}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/b/bP;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bO;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;->c:Lcom/google/android/gms/b/bO;

    invoke-static {p3}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/b/bM;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bL;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;->d:Lcom/google/android/gms/b/bL;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;->c:Lcom/google/android/gms/b/bO;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;->c:Lcom/google/android/gms/b/bO;

    invoke-interface {v0}, Lcom/google/android/gms/b/bO;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;->d:Lcom/google/android/gms/b/bL;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;->d:Lcom/google/android/gms/b/bL;

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

    invoke-static {p0, p1}, Lcom/google/android/gms/nearby/bootstrap/request/g;->a(Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;Landroid/os/Parcel;)V

    return-void
.end method
