.class final Lcom/google/android/gms/analytics/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/analytics/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->a:Lcom/google/android/gms/analytics/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->a:Lcom/google/android/gms/analytics/b;

    iget-object v0, v0, Lcom/google/android/gms/analytics/b;->d:Lcom/google/android/gms/analytics/AnalyticsService;

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->a:Lcom/google/android/gms/analytics/b;

    iget v1, v1, Lcom/google/android/gms/analytics/b;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/AnalyticsService;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/common/internal/e;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->a:Lcom/google/android/gms/analytics/b;

    iget-object v0, v0, Lcom/google/android/gms/analytics/b;->c:Lcom/google/android/gms/analytics/internal/j;

    const-string v1, "Device AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/j;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->a:Lcom/google/android/gms/analytics/b;

    iget-object v0, v0, Lcom/google/android/gms/analytics/b;->c:Lcom/google/android/gms/analytics/internal/j;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/j;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
