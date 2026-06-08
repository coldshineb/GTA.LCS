.class public Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field private static b:Lcom/google/android/gms/nearby/bootstrap/request/a;


# instance fields
.field final a:I

.field private final c:Lcom/google/android/gms/nearby/bootstrap/Device;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/b/bF;

.field private final g:Lcom/google/android/gms/b/bI;

.field private final h:Lcom/google/android/gms/b/bL;

.field private final i:B

.field private final j:J

.field private final k:Ljava/lang/String;

.field private final l:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/bootstrap/request/a;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/bootstrap/request/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->b:Lcom/google/android/gms/nearby/bootstrap/request/a;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/bootstrap/Device;Ljava/lang/String;Ljava/lang/String;BJLjava/lang/String;BLandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->a:I

    invoke-static {p2}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/bootstrap/Device;

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->c:Lcom/google/android/gms/nearby/bootstrap/Device;

    invoke-static {p3}, Landroid/support/v4/app/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->d:Ljava/lang/String;

    invoke-static {p4}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->e:Ljava/lang/String;

    iput-byte p5, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->i:B

    iput-wide p6, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->j:J

    iput-byte p9, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->l:B

    iput-object p8, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->k:Ljava/lang/String;

    invoke-static {p10}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p10}, Lcom/google/android/gms/b/bG;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bF;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->f:Lcom/google/android/gms/b/bF;

    invoke-static {p11}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p11}, Lcom/google/android/gms/b/bJ;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->g:Lcom/google/android/gms/b/bI;

    invoke-static {p12}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p12}, Lcom/google/android/gms/b/bM;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bL;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->h:Lcom/google/android/gms/b/bL;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/nearby/bootstrap/Device;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->c:Lcom/google/android/gms/nearby/bootstrap/Device;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->i:B

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->j:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final g()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->l:B

    return v0
.end method

.method public final h()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->f:Lcom/google/android/gms/b/bF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->f:Lcom/google/android/gms/b/bF;

    invoke-interface {v0}, Lcom/google/android/gms/b/bF;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final i()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->g:Lcom/google/android/gms/b/bI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->g:Lcom/google/android/gms/b/bI;

    invoke-interface {v0}, Lcom/google/android/gms/b/bI;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->h:Lcom/google/android/gms/b/bL;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->h:Lcom/google/android/gms/b/bL;

    invoke-interface {v0}, Lcom/google/android/gms/b/bL;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/bootstrap/request/a;->a(Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;Landroid/os/Parcel;I)V

    return-void
.end method
