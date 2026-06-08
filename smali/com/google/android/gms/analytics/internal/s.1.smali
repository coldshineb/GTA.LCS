.class public final Lcom/google/android/gms/analytics/internal/s;
.super Lcom/google/android/gms/analytics/internal/y;


# instance fields
.field private final a:Lcom/google/android/gms/analytics/internal/M;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/A;Lcom/google/android/gms/analytics/internal/C;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/y;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    invoke-static {p2}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/C;->c(Lcom/google/android/gms/analytics/internal/A;)Lcom/google/android/gms/analytics/internal/M;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->a:Lcom/google/android/gms/analytics/internal/M;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/s;)Lcom/google/android/gms/analytics/internal/M;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->a:Lcom/google/android/gms/analytics/internal/M;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/analytics/internal/D;)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/s;->x()V

    invoke-static {p1}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->a:Lcom/google/android/gms/analytics/internal/M;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/M;->a(Lcom/google/android/gms/analytics/internal/D;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/s;->a:Lcom/google/android/gms/analytics/internal/M;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/internal/M;->a(Lcom/google/android/gms/analytics/internal/D;)V

    :cond_0
    return-wide v0
.end method

.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->a:Lcom/google/android/gms/analytics/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/M;->y()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/analytics/internal/af;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/s;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/s;->p()Lcom/google/android/gms/measurement/f;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/w;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/w;-><init>(Lcom/google/android/gms/analytics/internal/s;Lcom/google/android/gms/analytics/internal/af;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/analytics/internal/d;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/s;->x()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/s;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/s;->p()Lcom/google/android/gms/measurement/f;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/v;-><init>(Lcom/google/android/gms/analytics/internal/s;Lcom/google/android/gms/analytics/internal/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Landroid/support/v4/app/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/s;->p()Lcom/google/android/gms/measurement/f;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/analytics/internal/u;-><init>(Lcom/google/android/gms/analytics/internal/s;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    const-string v0, "Network connectivity status changed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/s;->p()Lcom/google/android/gms/measurement/f;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/t;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/t;-><init>(Lcom/google/android/gms/analytics/internal/s;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->a:Lcom/google/android/gms/analytics/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/M;->b()V

    return-void
.end method

.method public final c()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/s;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/s;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/analytics/AnalyticsService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/s;->a(Lcom/google/android/gms/analytics/internal/af;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/s;->x()V

    invoke-static {}, Lcom/google/android/gms/measurement/f;->d()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->a:Lcom/google/android/gms/analytics/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/M;->f()V

    return-void
.end method

.method final e()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->a:Lcom/google/android/gms/analytics/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/M;->e()V

    return-void
.end method

.method final f()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->a:Lcom/google/android/gms/analytics/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/M;->d()V

    return-void
.end method
