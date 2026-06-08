.class public final Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/b/t;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/ads/internal/a;


# instance fields
.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->a:Lcom/google/android/gms/ads/internal/a;

    return-void
.end method

.method constructor <init>(IZZLjava/lang/String;ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->b:I

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->c:Z

    iput-boolean p3, p0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->d:Z

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->f:Z

    iput p6, p0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->g:F

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

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;Landroid/os/Parcel;)V

    return-void
.end method
