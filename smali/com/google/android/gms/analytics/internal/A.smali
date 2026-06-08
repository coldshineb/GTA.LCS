.class public Lcom/google/android/gms/analytics/internal/A;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/analytics/internal/A;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/b/al;

.field private final e:Lcom/google/android/gms/analytics/internal/Z;

.field private final f:Lcom/google/android/gms/analytics/internal/j;

.field private final g:Lcom/google/android/gms/measurement/f;

.field private final h:Lcom/google/android/gms/analytics/internal/s;

.field private final i:Lcom/google/android/gms/analytics/internal/ae;

.field private final j:Lcom/google/android/gms/analytics/internal/r;

.field private final k:Lcom/google/android/gms/analytics/internal/n;

.field private final l:Lcom/google/android/gms/analytics/i;

.field private final m:Lcom/google/android/gms/analytics/internal/S;

.field private final n:Lcom/google/android/gms/analytics/internal/b;

.field private final o:Lcom/google/android/gms/analytics/internal/L;

.field private final p:Lcom/google/android/gms/analytics/internal/ad;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/internal/C;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/C;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Application;

    const-string v2, "getApplicationContext didn\'t return the application"

    invoke-static {v1, v2}, Landroid/support/v4/app/f;->b(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/C;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/A;->c:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/b/am;->c()Lcom/google/android/gms/b/al;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/A;->d:Lcom/google/android/gms/b/al;

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/C;->b(Lcom/google/android/gms/analytics/internal/A;)Lcom/google/android/gms/analytics/internal/Z;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/A;->e:Lcom/google/android/gms/analytics/internal/Z;

    new-instance v1, Lcom/google/android/gms/analytics/internal/j;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/j;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/j;->y()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/A;->f:Lcom/google/android/gms/analytics/internal/j;

    sget-boolean v1, Lcom/google/android/gms/common/internal/e;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/A;->e()Lcom/google/android/gms/analytics/internal/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Google Analytics "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/analytics/internal/z;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/j;->d(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/C;->f(Lcom/google/android/gms/analytics/internal/A;)Lcom/google/android/gms/analytics/internal/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/n;->y()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/A;->k:Lcom/google/android/gms/analytics/internal/n;

    new-instance v1, Lcom/google/android/gms/analytics/internal/r;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/r;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/r;->y()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/A;->j:Lcom/google/android/gms/analytics/internal/r;

    new-instance v1, Lcom/google/android/gms/analytics/internal/s;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/s;-><init>(Lcom/google/android/gms/analytics/internal/A;Lcom/google/android/gms/analytics/internal/C;)V

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/C;->a(Lcom/google/android/gms/analytics/internal/A;)Lcom/google/android/gms/analytics/internal/S;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/analytics/internal/b;

    invoke-direct {v3, p0}, Lcom/google/android/gms/analytics/internal/b;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    new-instance v4, Lcom/google/android/gms/analytics/internal/L;

    invoke-direct {v4, p0}, Lcom/google/android/gms/analytics/internal/L;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    new-instance v5, Lcom/google/android/gms/analytics/internal/ad;

    invoke-direct {v5, p0}, Lcom/google/android/gms/analytics/internal/ad;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    invoke-static {v0}, Lcom/google/android/gms/measurement/f;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/f;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/analytics/internal/B;

    invoke-direct {v6, p0}, Lcom/google/android/gms/analytics/internal/B;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/f;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->g:Lcom/google/android/gms/measurement/f;

    new-instance v0, Lcom/google/android/gms/analytics/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/i;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/S;->y()V

    iput-object v2, p0, Lcom/google/android/gms/analytics/internal/A;->m:Lcom/google/android/gms/analytics/internal/S;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/b;->y()V

    iput-object v3, p0, Lcom/google/android/gms/analytics/internal/A;->n:Lcom/google/android/gms/analytics/internal/b;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/L;->y()V

    iput-object v4, p0, Lcom/google/android/gms/analytics/internal/A;->o:Lcom/google/android/gms/analytics/internal/L;

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/internal/ad;->y()V

    iput-object v5, p0, Lcom/google/android/gms/analytics/internal/A;->p:Lcom/google/android/gms/analytics/internal/ad;

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/C;->e(Lcom/google/android/gms/analytics/internal/A;)Lcom/google/android/gms/analytics/internal/ae;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/ae;->y()V

    iput-object v2, p0, Lcom/google/android/gms/analytics/internal/A;->i:Lcom/google/android/gms/analytics/internal/ae;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/s;->y()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/A;->h:Lcom/google/android/gms/analytics/internal/s;

    sget-boolean v2, Lcom/google/android/gms/common/internal/e;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/A;->e()Lcom/google/android/gms/analytics/internal/j;

    move-result-object v2

    const-string v3, "Device AnalyticsService version"

    sget-object v4, Lcom/google/android/gms/analytics/internal/z;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/analytics/internal/j;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/i;->a()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->l:Lcom/google/android/gms/analytics/i;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/s;->b()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/A;->e()Lcom/google/android/gms/analytics/internal/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Google Analytics "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/analytics/internal/z;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up. To enable debug logging on a device run:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/j;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/A;
    .locals 8

    invoke-static {p0}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/internal/A;->a:Lcom/google/android/gms/analytics/internal/A;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/analytics/internal/A;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/internal/A;->a:Lcom/google/android/gms/analytics/internal/A;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/b/am;->c()Lcom/google/android/gms/b/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/al;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/analytics/internal/C;

    invoke-direct {v5, v4}, Lcom/google/android/gms/analytics/internal/C;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/analytics/internal/A;

    invoke-direct {v4, v5}, Lcom/google/android/gms/analytics/internal/A;-><init>(Lcom/google/android/gms/analytics/internal/C;)V

    sput-object v4, Lcom/google/android/gms/analytics/internal/A;->a:Lcom/google/android/gms/analytics/internal/A;

    invoke-static {}, Lcom/google/android/gms/analytics/i;->c()V

    invoke-interface {v0}, Lcom/google/android/gms/b/al;->b()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v0, Lcom/google/android/gms/analytics/internal/ag;->E:Lcom/google/android/gms/analytics/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/A;->e()Lcom/google/android/gms/analytics/internal/j;

    move-result-object v0

    const-string v4, "Slow initialization (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/analytics/internal/j;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/analytics/internal/A;->a:Lcom/google/android/gms/analytics/internal/A;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcom/google/android/gms/analytics/internal/y;)V
    .locals 2

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p0, v0}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/y;->w()Z

    move-result v0

    const-string v1, "Analytics service not initialized"

    invoke-static {v0, v1}, Landroid/support/v4/app/f;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public static r()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/measurement/f;->d()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/b/al;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->d:Lcom/google/android/gms/b/al;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/analytics/internal/Z;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->e:Lcom/google/android/gms/analytics/internal/Z;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/analytics/internal/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->f:Lcom/google/android/gms/analytics/internal/j;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/A;->a(Lcom/google/android/gms/analytics/internal/y;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->f:Lcom/google/android/gms/analytics/internal/j;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/analytics/internal/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->f:Lcom/google/android/gms/analytics/internal/j;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/measurement/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->g:Lcom/google/android/gms/measurement/f;

    invoke-static {v0}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->g:Lcom/google/android/gms/measurement/f;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/analytics/internal/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->h:Lcom/google/android/gms/analytics/internal/s;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/A;->a(Lcom/google/android/gms/analytics/internal/y;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->h:Lcom/google/android/gms/analytics/internal/s;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/analytics/internal/ae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->i:Lcom/google/android/gms/analytics/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/A;->a(Lcom/google/android/gms/analytics/internal/y;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->i:Lcom/google/android/gms/analytics/internal/ae;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/analytics/i;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->l:Lcom/google/android/gms/analytics/i;

    invoke-static {v0}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->l:Lcom/google/android/gms/analytics/i;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/i;->b()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Landroid/support/v4/app/f;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->l:Lcom/google/android/gms/analytics/i;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/analytics/internal/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->j:Lcom/google/android/gms/analytics/internal/r;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/A;->a(Lcom/google/android/gms/analytics/internal/y;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->j:Lcom/google/android/gms/analytics/internal/r;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/analytics/internal/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->k:Lcom/google/android/gms/analytics/internal/n;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/A;->a(Lcom/google/android/gms/analytics/internal/y;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->k:Lcom/google/android/gms/analytics/internal/n;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/analytics/internal/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->k:Lcom/google/android/gms/analytics/internal/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->k:Lcom/google/android/gms/analytics/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/n;->w()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->k:Lcom/google/android/gms/analytics/internal/n;

    goto :goto_0
.end method

.method public final n()Lcom/google/android/gms/analytics/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->n:Lcom/google/android/gms/analytics/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/A;->a(Lcom/google/android/gms/analytics/internal/y;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->n:Lcom/google/android/gms/analytics/internal/b;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/analytics/internal/S;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->m:Lcom/google/android/gms/analytics/internal/S;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/A;->a(Lcom/google/android/gms/analytics/internal/y;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->m:Lcom/google/android/gms/analytics/internal/S;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/analytics/internal/L;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->o:Lcom/google/android/gms/analytics/internal/L;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/A;->a(Lcom/google/android/gms/analytics/internal/y;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->o:Lcom/google/android/gms/analytics/internal/L;

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/analytics/internal/ad;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/A;->p:Lcom/google/android/gms/analytics/internal/ad;

    return-object v0
.end method
