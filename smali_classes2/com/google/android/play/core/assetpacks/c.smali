.class public final Lcom/google/android/play/core/assetpacks/c;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/internal/as;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final b:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final c:Lcom/google/android/play/core/assetpacks/internal/as;

.field private final d:Lcom/google/android/play/core/assetpacks/internal/as;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;Lcom/google/android/play/core/assetpacks/internal/as;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/c;->a:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/c;->b:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/c;->c:Lcom/google/android/play/core/assetpacks/internal/as;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/c;->d:Lcom/google/android/play/core/assetpacks/internal/as;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/c;->a:Lcom/google/android/play/core/assetpacks/internal/as;

    check-cast v0, Lcom/google/android/play/core/assetpacks/u;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/u;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/c;->b:Lcom/google/android/play/core/assetpacks/internal/as;

    .line 2
    invoke-interface {v1}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/c;->c:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v2}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/c;->d:Lcom/google/android/play/core/assetpacks/internal/as;

    invoke-interface {v3}, Lcom/google/android/play/core/assetpacks/internal/as;->a()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/b;

    .line 3
    check-cast v1, Lcom/google/android/play/core/assetpacks/bh;

    check-cast v2, Lcom/google/android/play/core/assetpacks/l;

    check-cast v3, Lcom/google/android/play/core/assetpacks/ci;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/play/core/assetpacks/b;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/bh;Lcom/google/android/play/core/assetpacks/l;Lcom/google/android/play/core/assetpacks/ci;)V

    return-object v4
.end method
