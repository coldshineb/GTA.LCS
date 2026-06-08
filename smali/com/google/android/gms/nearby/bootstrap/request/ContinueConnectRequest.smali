.class public Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field private static b:Lcom/google/android/gms/nearby/bootstrap/request/b;


# instance fields
.field final a:I

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/b/bL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/bootstrap/request/b;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/bootstrap/request/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;->b:Lcom/google/android/gms/nearby/bootstrap/request/b;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;->a:I

    invoke-static {p2}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;->c:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/b/bM;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bL;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;->d:Lcom/google/android/gms/b/bL;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;->d:Lcom/google/android/gms/b/bL;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;->d:Lcom/google/android/gms/b/bL;

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

    invoke-static {p0, p1}, Lcom/google/android/gms/nearby/bootstrap/request/b;->a(Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;Landroid/os/Parcel;)V

    return-void
.end method
