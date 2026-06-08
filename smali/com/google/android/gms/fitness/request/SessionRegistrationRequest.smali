.class public Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Landroid/app/PendingIntent;

.field private final c:Lcom/google/android/gms/b/bm;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/C;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/C;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/app/PendingIntent;Landroid/os/IBinder;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->a:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->b:Landroid/app/PendingIntent;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->c:Lcom/google/android/gms/b/bm;

    iput p4, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->d:I

    return-void

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/b/bn;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bm;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->b:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final b()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->c:Lcom/google/android/gms/b/bm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->c:Lcom/google/android/gms/b/bm;

    invoke-interface {v0}, Lcom/google/android/gms/b/bm;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->d:I

    return v0
.end method

.method final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;

    iget v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->d:I

    iget v3, p1, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->d:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->b:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->b:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->b:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/z;

    move-result-object v0

    const-string v1, "pendingIntent"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/z;

    move-result-object v0

    const-string v1, "sessionRegistrationOption"

    iget v2, p0, Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/z;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/C;->a(Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;Landroid/os/Parcel;I)V

    return-void
.end method
