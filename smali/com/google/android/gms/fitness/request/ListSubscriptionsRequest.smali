.class public Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/DataType;

.field private final c:Lcom/google/android/gms/b/aX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/v;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->a:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p3}, Lcom/google/android/gms/b/aY;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/aX;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->c:Lcom/google/android/gms/b/aX;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final b()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->c:Lcom/google/android/gms/b/aX;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->c:Lcom/google/android/gms/b/aX;

    invoke-interface {v0}, Lcom/google/android/gms/b/aX;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/v;->a(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
