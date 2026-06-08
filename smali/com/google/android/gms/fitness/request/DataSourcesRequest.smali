.class public Lcom/google/android/gms/fitness/request/DataSourcesRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/DataSourcesRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lcom/google/android/gms/b/aR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/l;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;ZLandroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->a:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->c:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->d:Z

    invoke-static {p5}, Lcom/google/android/gms/b/aS;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/aR;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->e:Lcom/google/android/gms/b/aR;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->c:Ljava/util/List;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->d:Z

    return v0
.end method

.method public final d()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->e:Lcom/google/android/gms/b/aR;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->e:Lcom/google/android/gms/b/aR;

    invoke-interface {v0}, Lcom/google/android/gms/b/aR;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final e()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/z;

    move-result-object v0

    const-string v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/z;

    move-result-object v0

    const-string v1, "sourceTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/z;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "includeDbOnlySources"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/z;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/z;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/request/l;->a(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Landroid/os/Parcel;)V

    return-void
.end method
