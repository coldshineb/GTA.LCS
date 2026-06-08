.class public final Lcom/google/android/play/core/assetpacks/m;
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

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/m;->a:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/m;->b:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/m;->c:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/m;->d:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/m;->e:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/m;->f:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/m;->g:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/m;->h:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/m;->i:Lcom/google/android/play/core/assetpacks/internal/as;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m;->a:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v0}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/m;->b:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/internal/aq;->c(Lcom/google/android/play/core/assetpacks/internal/as;)Lcom/google/android/play/core/assetpacks/internal/aq;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/m;->c:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v1}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/m;->d:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v2}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/play/core/assetpacks/internal/ad;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/m;->e:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v2}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/m;->f:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v3}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/m;->g:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v5}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/m;->h:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-static {v7}, Lcom/google/android/play/core/assetpacks/internal/aq;->c(Lcom/google/android/play/core/assetpacks/internal/as;)Lcom/google/android/play/core/assetpacks/internal/aq;

    move-result-object v10

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/m;->i:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v7}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v2

    .line 2
    new-instance v2, Lcom/google/android/play/core/assetpacks/l;

    check-cast v0, Lcom/google/android/play/core/assetpacks/bh;

    check-cast v1, Lcom/google/android/play/core/assetpacks/bb;

    check-cast v8, Lcom/google/android/play/core/assetpacks/de;

    check-cast v3, Lcom/google/android/play/core/assetpacks/co;

    move-object v9, v5

    check-cast v9, Lcom/google/android/play/core/assetpacks/bx;

    move-object v11, v7

    check-cast v11, Lcom/google/android/play/core/assetpacks/eb;

    move-object v5, v1

    move-object v7, v8

    move-object v8, v3

    move-object v3, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/play/core/assetpacks/l;-><init>(Lcom/google/android/play/core/assetpacks/bh;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/assetpacks/internal/ad;Lcom/google/android/play/core/assetpacks/de;Lcom/google/android/play/core/assetpacks/co;Lcom/google/android/play/core/assetpacks/bx;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/eb;)V

    return-object v2
.end method
