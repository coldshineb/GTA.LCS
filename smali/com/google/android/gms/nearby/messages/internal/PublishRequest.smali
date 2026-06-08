.class public final Lcom/google/android/gms/nearby/messages/internal/PublishRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/PublishRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field public final b:Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

.field public final c:Lcom/google/android/gms/nearby/messages/Strategy;

.field public final d:Lcom/google/android/gms/nearby/messages/internal/e;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Lcom/google/android/gms/nearby/messages/internal/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/s;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/internal/MessageWrapper;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->a:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->b:Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->c:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {p4}, Lcom/google/android/gms/nearby/messages/internal/f;->a(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->d:Lcom/google/android/gms/nearby/messages/internal/e;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->g:Z

    if-nez p8, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;->h:Lcom/google/android/gms/nearby/messages/internal/h;

    return-void

    :cond_0
    invoke-static {p8}, Lcom/google/android/gms/nearby/messages/internal/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/h;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/s;->a(Lcom/google/android/gms/nearby/messages/internal/PublishRequest;Landroid/os/Parcel;I)V

    return-void
.end method
