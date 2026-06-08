.class public final Lcom/google/android/gms/analytics/internal/E;
.super Lcom/google/android/gms/analytics/internal/y;


# instance fields
.field private final a:Lcom/google/android/gms/analytics/internal/G;

.field private b:Lcom/google/android/gms/analytics/internal/e;

.field private final c:Lcom/google/android/gms/analytics/internal/ab;

.field private d:Lcom/google/android/gms/analytics/internal/p;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/A;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/y;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    new-instance v0, Lcom/google/android/gms/analytics/internal/p;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/A;->c()Lcom/google/android/gms/b/al;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/p;-><init>(Lcom/google/android/gms/b/al;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/E;->d:Lcom/google/android/gms/analytics/internal/p;

    new-instance v0, Lcom/google/android/gms/analytics/internal/G;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/G;-><init>(Lcom/google/android/gms/analytics/internal/E;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/E;->a:Lcom/google/android/gms/analytics/internal/G;

    new-instance v0, Lcom/google/android/gms/analytics/internal/F;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/F;-><init>(Lcom/google/android/gms/analytics/internal/E;Lcom/google/android/gms/analytics/internal/A;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/E;->c:Lcom/google/android/gms/analytics/internal/ab;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/E;)Lcom/google/android/gms/analytics/internal/G;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/E;->a:Lcom/google/android/gms/analytics/internal/G;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/E;Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/E;->b:Lcom/google/android/gms/analytics/internal/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/E;->b:Lcom/google/android/gms/analytics/internal/e;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/E;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/E;->q()Lcom/google/android/gms/analytics/internal/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/s;->d()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/E;Lcom/google/android/gms/analytics/internal/e;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/E;->b:Lcom/google/android/gms/analytics/internal/e;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/E;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/E;->q()Lcom/google/android/gms/analytics/internal/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/s;->e()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/internal/E;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/E;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/E;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/E;->d()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/E;->d:Lcom/google/android/gms/analytics/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/p;->a()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/E;->c:Lcom/google/android/gms/analytics/internal/ab;

    sget-object v0, Lcom/google/android/gms/analytics/internal/ag;->A:Lcom/google/android/gms/analytics/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/analytics/internal/ab;->a(J)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/analytics/internal/d;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/E;->x()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/E;->b:Lcom/google/android/gms/analytics/internal/e;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/d;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/analytics/internal/Z;->h()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/d;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/d;->d()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/e;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/E;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/analytics/internal/Z;->i()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/E;->b(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/E;->x()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/E;->b:Lcom/google/android/gms/analytics/internal/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/E;->x()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/E;->b:Lcom/google/android/gms/analytics/internal/e;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/E;->a:Lcom/google/android/gms/analytics/internal/G;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/G;->a()Lcom/google/android/gms/analytics/internal/e;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/E;->b:Lcom/google/android/gms/analytics/internal/e;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/E;->e()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/E;->x()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/b;->a()Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/E;->m()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/E;->a:Lcom/google/android/gms/analytics/internal/G;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/b;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/E;->b:Lcom/google/android/gms/analytics/internal/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/E;->b:Lcom/google/android/gms/analytics/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/E;->q()Lcom/google/android/gms/analytics/internal/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/s;->d()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
