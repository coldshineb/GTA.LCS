.class public final synthetic Lcom/google/android/play/core/assetpacks/ej;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/ek;

.field public final synthetic b:Lcom/google/android/play/core/assetpacks/ei;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/ek;Lcom/google/android/play/core/assetpacks/ei;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ej;->a:Lcom/google/android/play/core/assetpacks/ek;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/ej;->b:Lcom/google/android/play/core/assetpacks/ei;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ej;->a:Lcom/google/android/play/core/assetpacks/ek;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/ej;->b:Lcom/google/android/play/core/assetpacks/ei;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/ek;->b(Lcom/google/android/play/core/assetpacks/ei;)V

    return-void
.end method
