.class public final Lcom/google/android/play/core/assetpacks/cm;
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

.field private final g:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final h:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final i:Lcom/google/android/play/core/assetpacks/internal/as;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cm;->a:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cm;->b:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/cm;->d:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/cm;->e:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/cm;->f:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/cm;->g:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/cm;->h:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/cm;->i:Lcom/google/android/play/core/assetpacks/internal/as;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cm;->a:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v0}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cm;->b:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/internal/aq;->c(Lcom/google/android/play/core/assetpacks/internal/as;)Lcom/google/android/play/core/assetpacks/internal/aq;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cm;->c:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v1}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/cm;->d:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v2}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/cm;->e:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v3}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/cm;->f:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v5}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/cm;->g:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v6}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/cm;->h:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v7}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/cm;->i:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v8}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v2

    .line 2
    new-instance v2, Lcom/google/android/play/core/assetpacks/cl;

    check-cast v0, Lcom/google/android/play/core/assetpacks/de;

    check-cast v1, Lcom/google/android/play/core/assetpacks/cf;

    check-cast v9, Lcom/google/android/play/core/assetpacks/es;

    check-cast v3, Lcom/google/android/play/core/assetpacks/du;

    check-cast v5, Lcom/google/android/play/core/assetpacks/dy;

    check-cast v6, Lcom/google/android/play/core/assetpacks/eg;

    move-object v10, v7

    check-cast v10, Lcom/google/android/play/core/assetpacks/ek;

    move-object v11, v8

    check-cast v11, Lcom/google/android/play/core/assetpacks/dh;

    move-object v7, v9

    move-object v9, v6

    move-object v6, v7

    move-object v7, v3

    move-object v8, v5

    move-object v3, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/play/core/assetpacks/cl;-><init>(Lcom/google/android/play/core/assetpacks/de;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/cf;Lcom/google/android/play/core/assetpacks/es;Lcom/google/android/play/core/assetpacks/du;Lcom/google/android/play/core/assetpacks/dy;Lcom/google/android/play/core/assetpacks/eg;Lcom/google/android/play/core/assetpacks/ek;Lcom/google/android/play/core/assetpacks/dh;)V

    return-object v2
.end method
