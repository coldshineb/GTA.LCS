.class public Lcom/google/android/gms/b/av;
.super Lcom/google/android/gms/drive/metadata/internal/r;

# interfaces
.implements Landroid/support/v4/a/c;
.implements Lcom/google/android/gms/drive/metadata/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/r;",
        "Landroid/support/v4/a/c",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/drive/metadata/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string v0, "mimeType"

    const v1, 0x3e8fa0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/drive/metadata/internal/r;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const v0, 0x3e8fa0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/metadata/internal/r;-><init>(Ljava/lang/String;I)V

    return-void
.end method
