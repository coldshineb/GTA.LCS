.class public Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/b/t;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/ads/internal/formats/a;


# instance fields
.field public final b:I

.field public final c:Z

.field public final d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/formats/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->a:Lcom/google/android/gms/ads/internal/formats/a;

    return-void
.end method

.method public constructor <init>(IZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->b:I

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->c:Z

    iput p3, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->d:I

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->e:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/formats/a;->a(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Landroid/os/Parcel;)V

    return-void
.end method
