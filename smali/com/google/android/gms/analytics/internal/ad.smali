.class public final Lcom/google/android/gms/analytics/internal/ad;
.super Lcom/google/android/gms/analytics/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/A;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/y;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    return-void
.end method

.method public final b()Lcom/google/android/gms/b/by;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ad;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/ad;->p()Lcom/google/android/gms/measurement/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/f;->b()Lcom/google/android/gms/b/by;

    move-result-object v0

    return-object v0
.end method
