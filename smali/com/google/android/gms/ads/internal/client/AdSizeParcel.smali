.class public Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/b/t;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/ads/internal/client/f;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:I

.field public final h:I

.field public final i:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public final j:Z

.field public final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/f;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->a:Lcom/google/android/gms/ads/internal/client/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/4 v3, 0x0

    const/4 v1, 0x4

    const-string v2, "interstitial_mb"

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v4, v3

    move v6, v3

    move v7, v3

    move v9, v3

    move v10, v3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZ)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->b:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->c:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:I

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->f:Z

    iput p6, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    iput p7, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:I

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->i:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->j:Z

    iput-boolean p10, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->k:Z

    return-void
.end method

.method public static a(Landroid/util/DisplayMetrics;)I
    .locals 1

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static b(Landroid/util/DisplayMetrics;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->c(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static c(Landroid/util/DisplayMetrics;)I
    .locals 2

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    const/16 v0, 0x20

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x2d0

    if-gt v0, v1, :cond_1

    const/16 v0, 0x32

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/f;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Landroid/os/Parcel;I)V

    return-void
.end method
