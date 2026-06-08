.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/gms/maps/model/a/a;

.field private c:Z

.field private d:F

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/r;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:Z

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;ZFZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:I

    invoke-static {p2}, Lcom/google/android/gms/maps/model/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/maps/model/a/a;

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/maps/model/a/a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/c;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    :cond_0
    iput-boolean p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Z

    iput p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:F

    iput-boolean p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/maps/model/a/a;

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:I

    return v0
.end method

.method final b()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/maps/model/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:F

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Z

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/r;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;)V

    return-void
.end method
