.class public final Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field public final b:Lcom/google/android/gms/nearby/messages/internal/e;

.field public final c:Lcom/google/android/gms/nearby/messages/internal/k;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/t;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->a:I

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/f;->a(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->b:Lcom/google/android/gms/nearby/messages/internal/e;

    invoke-static {p3}, Lcom/google/android/gms/nearby/messages/internal/l;->a(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->c:Lcom/google/android/gms/nearby/messages/internal/k;

    iput-boolean p4, p0, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->d:Z

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

    invoke-static {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/t;->a(Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;Landroid/os/Parcel;)V

    return-void
.end method
