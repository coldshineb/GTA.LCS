.class final Lcom/google/android/gms/analytics/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/af;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/analytics/internal/A;

.field final synthetic c:Lcom/google/android/gms/analytics/internal/j;

.field final synthetic d:Lcom/google/android/gms/analytics/AnalyticsService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/AnalyticsService;ILcom/google/android/gms/analytics/internal/A;Lcom/google/android/gms/analytics/internal/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/b;->d:Lcom/google/android/gms/analytics/AnalyticsService;

    iput p2, p0, Lcom/google/android/gms/analytics/b;->a:I

    iput-object p3, p0, Lcom/google/android/gms/analytics/b;->b:Lcom/google/android/gms/analytics/internal/A;

    iput-object p4, p0, Lcom/google/android/gms/analytics/b;->c:Lcom/google/android/gms/analytics/internal/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/b;->d:Lcom/google/android/gms/analytics/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Lcom/google/android/gms/analytics/AnalyticsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/c;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/c;-><init>(Lcom/google/android/gms/analytics/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
