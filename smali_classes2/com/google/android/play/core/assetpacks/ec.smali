.class public final Lcom/google/android/play/core/assetpacks/ec;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/internal/as;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final b:Lcom/google/android/play/core/assetpacks/internal/as;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ec;->a:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/ec;->b:Lcom/google/android/play/core/assetpacks/internal/as;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ec;->a:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v0}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/ec;->b:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v1}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/google/android/play/core/assetpacks/eb;

    check-cast v0, Lcom/google/android/play/core/assetpacks/bh;

    check-cast v1, Lcom/google/android/play/core/assetpacks/ed;

    invoke-direct {v2, v0, v1}, Lcom/google/android/play/core/assetpacks/eb;-><init>(Lcom/google/android/play/core/assetpacks/bh;Lcom/google/android/play/core/assetpacks/ed;)V

    return-object v2
.end method
