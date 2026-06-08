.class public Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field private static b:Lcom/google/android/gms/nearby/bootstrap/request/e;


# instance fields
.field final a:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/b/bF;

.field private final f:Lcom/google/android/gms/b/bI;

.field private final g:Lcom/google/android/gms/b/bL;

.field private final h:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/bootstrap/request/e;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/bootstrap/request/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->b:Lcom/google/android/gms/nearby/bootstrap/request/e;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;BLandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->a:I

    invoke-static {p2}, Landroid/support/v4/app/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->c:Ljava/lang/String;

    invoke-static {p3}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->d:Ljava/lang/String;

    iput-byte p4, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->h:B

    invoke-static {p5}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Lcom/google/android/gms/b/bG;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bF;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->e:Lcom/google/android/gms/b/bF;

    invoke-static {p6}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lcom/google/android/gms/b/bJ;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->f:Lcom/google/android/gms/b/bI;

    invoke-static {p7}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p7}, Lcom/google/android/gms/b/bM;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bL;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->g:Lcom/google/android/gms/b/bL;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->h:B

    return v0
.end method

.method public final d()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->e:Lcom/google/android/gms/b/bF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->e:Lcom/google/android/gms/b/bF;

    invoke-interface {v0}, Lcom/google/android/gms/b/bF;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->f:Lcom/google/android/gms/b/bI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->f:Lcom/google/android/gms/b/bI;

    invoke-interface {v0}, Lcom/google/android/gms/b/bI;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->g:Lcom/google/android/gms/b/bL;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->g:Lcom/google/android/gms/b/bL;

    invoke-interface {v0}, Lcom/google/android/gms/b/bL;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/nearby/bootstrap/request/e;->a(Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;Landroid/os/Parcel;)V

    return-void
.end method
