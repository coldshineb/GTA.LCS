.class public final Lcom/google/android/play/core/assetpacks/dz;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/internal/as;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final b:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final c:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final d:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final e:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final f:Lcom/google/android/play/core/assetpacks/internal/as;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/dz;->a:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/dz;->b:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/dz;->c:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/dz;->d:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/dz;->e:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/dz;->f:Lcom/google/android/play/core/assetpacks/internal/as;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/dz;->a:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v0}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/dz;->b:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/internal/aq;->c(Lcom/google/android/play/core/assetpacks/internal/as;)Lcom/google/android/play/core/assetpacks/internal/aq;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/dz;->c:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v1}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/dz;->d:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/internal/aq;->c(Lcom/google/android/play/core/assetpacks/internal/as;)Lcom/google/android/play/core/assetpacks/internal/aq;

    move-result-object v6

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/dz;->e:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v2}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/dz;->f:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v3}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v2

    new-instance v2, Lcom/google/android/play/core/assetpacks/dy;

    .line 2
    check-cast v0, Lcom/google/android/play/core/assetpacks/bh;

    check-cast v1, Lcom/google/android/play/core/assetpacks/de;

    move-object v7, v5

    check-cast v7, Lcom/google/android/play/core/assetpacks/co;

    move-object v8, v3

    check-cast v8, Lcom/google/android/play/core/assetpacks/eb;

    move-object v3, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/play/core/assetpacks/dy;-><init>(Lcom/google/android/play/core/assetpacks/bh;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/de;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/co;Lcom/google/android/play/core/assetpacks/eb;)V

    return-object v2
.end method
