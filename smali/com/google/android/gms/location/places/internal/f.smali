.class public final Lcom/google/android/gms/location/places/internal/f;
.super Lcom/google/android/gms/location/places/internal/h;

# interfaces
.implements Landroid/support/v4/a/c;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/h;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string v0, "photo_fife_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/internal/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic c()Ljava/lang/Object;
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/location/places/internal/e;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/f;->c:Ljava/lang/String;

    const-string v2, "photo_max_width"

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/location/places/internal/f;->a(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "photo_max_height"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/location/places/internal/f;->a(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "photo_attributions"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/location/places/internal/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/location/places/internal/f;->b:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/e;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;I)V

    return-object v0
.end method
