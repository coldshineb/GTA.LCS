.class public final synthetic Lcom/google/android/play/core/assetpacks/aa;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/aw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/aw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/aa;->a:Lcom/google/android/play/core/assetpacks/aw;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/aa;->a:Lcom/google/android/play/core/assetpacks/aw;

    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackStates;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/aw;->f()V

    return-void
.end method
