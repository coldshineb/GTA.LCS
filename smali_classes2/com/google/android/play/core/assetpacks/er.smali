.class final Lcom/google/android/play/core/assetpacks/er;
.super Lcom/google/android/play/core/assetpacks/dg;
.source "com.google.android.play:asset-delivery@@2.1.0"


# instance fields
.field final a:I

.field final b:J

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/dg;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/er;->a:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/er;->b:J

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/er;->c:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/er;->d:Ljava/lang/String;

    return-void
.end method
