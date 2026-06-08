.class public final Lcom/google/android/gms/analytics/internal/L;
.super Lcom/google/android/gms/analytics/internal/y;


# instance fields
.field private final a:Lcom/google/android/gms/b/bw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/A;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/y;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    new-instance v0, Lcom/google/android/gms/b/bw;

    invoke-direct {v0}, Lcom/google/android/gms/b/bw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/L;->a:Lcom/google/android/gms/b/bw;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/L;->p()Lcom/google/android/gms/measurement/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/f;->a()Lcom/google/android/gms/b/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/L;->a:Lcom/google/android/gms/b/bw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/bw;->a(Lcom/google/android/gms/b/bw;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/L;->s()Lcom/google/android/gms/analytics/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/r;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/L;->a:Lcom/google/android/gms/b/bw;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/b/bw;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/r;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/L;->a:Lcom/google/android/gms/b/bw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/bw;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b()Lcom/google/android/gms/b/bw;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/L;->x()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/L;->a:Lcom/google/android/gms/b/bw;

    return-object v0
.end method
