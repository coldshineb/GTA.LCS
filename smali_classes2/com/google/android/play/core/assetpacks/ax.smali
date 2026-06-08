.class public final Lcom/google/android/play/core/assetpacks/ax;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/internal/as;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final b:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final c:Lcom/google/android/play/core/assetpacks/internal/as;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ax;->a:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/ax;->b:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/ax;->c:Lcom/google/android/play/core/assetpacks/internal/as;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ax;->a:Lcom/google/android/play/core/assetpacks/internal/as;

    check-cast v0, Lcom/google/android/play/core/assetpacks/u;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/u;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/ax;->b:Lcom/google/android/play/core/assetpacks/internal/as;

    .line 2
    invoke-interface {v1}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/ax;->c:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v2}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v2

    .line 3
    new-instance v3, Lcom/google/android/play/core/assetpacks/aw;

    check-cast v1, Lcom/google/android/play/core/assetpacks/co;

    check-cast v2, Lcom/google/android/play/core/assetpacks/eb;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/aw;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/co;Lcom/google/android/play/core/assetpacks/eb;)V

    return-object v3
.end method
