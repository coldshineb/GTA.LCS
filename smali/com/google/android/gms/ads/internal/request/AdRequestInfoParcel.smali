.class public final Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/b/t;
.end annotation


# instance fields
.field public final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final B:J

.field public final C:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

.field public final D:Ljava/lang/String;

.field public final a:I

.field public final b:Landroid/os/Bundle;

.field public final c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field public final d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/content/pm/ApplicationInfo;

.field public final g:Landroid/content/pm/PackageInfo;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final l:Landroid/os/Bundle;

.field public final m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Landroid/os/Bundle;

.field public final p:Z

.field public final q:Landroid/os/Messenger;

.field public final r:I

.field public final s:I

.field public final t:F

.field public final u:Ljava/lang/String;

.field public final v:J

.field public final w:Ljava/lang/String;

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Ljava/lang/String;

.field public final z:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/c;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/c;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;ILjava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;JLcom/google/android/gms/ads/internal/request/CapabilityParcel;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/os/Messenger;",
            "IIF",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/google/android/gms/ads/internal/request/CapabilityParcel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->a:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->f:Landroid/content/pm/ApplicationInfo;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->g:Landroid/content/pm/PackageInfo;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->l:Landroid/os/Bundle;

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->m:I

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->n:Ljava/util/List;

    if-nez p28, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->A:Ljava/util/List;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->o:Landroid/os/Bundle;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->p:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->q:Landroid/os/Messenger;

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->r:I

    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->s:I

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->t:F

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->u:Ljava/lang/String;

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->v:J

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->w:Ljava/lang/String;

    if-nez p25, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->x:Ljava/util/List;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->y:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->z:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-wide/from16 v0, p29

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->B:J

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->C:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->D:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static/range {p28 .. p28}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static/range {p25 .. p25}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/c;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Parcel;I)V

    return-void
.end method
