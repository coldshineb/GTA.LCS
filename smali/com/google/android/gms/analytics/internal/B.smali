.class final Lcom/google/android/gms/analytics/internal/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private synthetic a:Lcom/google/android/gms/analytics/internal/A;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/A;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/B;->a:Lcom/google/android/gms/analytics/internal/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/B;->a:Lcom/google/android/gms/analytics/internal/A;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/A;->f()Lcom/google/android/gms/analytics/internal/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Job execution failed"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/analytics/internal/j;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
