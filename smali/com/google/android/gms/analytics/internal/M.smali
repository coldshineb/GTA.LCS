.class final Lcom/google/android/gms/analytics/internal/M;
.super Lcom/google/android/gms/analytics/internal/y;


# instance fields
.field private a:Z

.field private final b:Lcom/google/android/gms/analytics/internal/J;

.field private final c:Lcom/google/android/gms/analytics/internal/l;

.field private final d:Lcom/google/android/gms/analytics/internal/k;

.field private final e:Lcom/google/android/gms/analytics/internal/E;

.field private f:J

.field private final g:Lcom/google/android/gms/analytics/internal/ab;

.field private final h:Lcom/google/android/gms/analytics/internal/ab;

.field private final i:Lcom/google/android/gms/analytics/internal/p;

.field private j:J

.field private k:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/A;Lcom/google/android/gms/analytics/internal/C;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/y;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    invoke-static {p2}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/M;->f:J

    new-instance v0, Lcom/google/android/gms/analytics/internal/k;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/k;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->d:Lcom/google/android/gms/analytics/internal/k;

    new-instance v0, Lcom/google/android/gms/analytics/internal/J;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/J;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    new-instance v0, Lcom/google/android/gms/analytics/internal/l;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/l;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->c:Lcom/google/android/gms/analytics/internal/l;

    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/C;->d(Lcom/google/android/gms/analytics/internal/A;)Lcom/google/android/gms/analytics/internal/E;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->e:Lcom/google/android/gms/analytics/internal/E;

    new-instance v0, Lcom/google/android/gms/analytics/internal/p;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->l()Lcom/google/android/gms/b/al;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/p;-><init>(Lcom/google/android/gms/b/al;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->i:Lcom/google/android/gms/analytics/internal/p;

    new-instance v0, Lcom/google/android/gms/analytics/internal/N;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/N;-><init>(Lcom/google/android/gms/analytics/internal/M;Lcom/google/android/gms/analytics/internal/A;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->g:Lcom/google/android/gms/analytics/internal/ab;

    new-instance v0, Lcom/google/android/gms/analytics/internal/O;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/internal/O;-><init>(Lcom/google/android/gms/analytics/internal/M;Lcom/google/android/gms/analytics/internal/A;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->h:Lcom/google/android/gms/analytics/internal/ab;

    return-void
.end method

.method private A()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->r()Lcom/google/android/gms/analytics/internal/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ae;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ae;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->z()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->l()Lcom/google/android/gms/b/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/al;->a()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v0, Lcom/google/android/gms/analytics/internal/ag;->h:Lcom/google/android/gms/analytics/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/analytics/internal/Z;->e()J

    move-result-wide v2

    const-string v0, "Dispatch alarm scheduled (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/analytics/internal/M;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ae;->d()V

    goto :goto_0
.end method

.method private B()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->g:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->g:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ab;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->r()Lcom/google/android/gms/analytics/internal/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ae;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ae;->e()V

    :cond_1
    return-void
.end method

.method private C()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/M;->f:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/M;->f:J

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/analytics/internal/ag;->e:Lcom/google/android/gms/analytics/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->s()Lcom/google/android/gms/analytics/internal/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/r;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->s()Lcom/google/android/gms/analytics/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/r;->g()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method private D()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->x()V

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/M;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->e:Lcom/google/android/gms/analytics/internal/E;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/E;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->g()V

    return-void
.end method

.method private a(Lcom/google/android/gms/analytics/internal/D;Lcom/google/android/gms/b/bx;)V
    .locals 8

    invoke-static {p1}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/m;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->j()Lcom/google/android/gms/analytics/internal/A;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/m;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/D;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/m;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/D;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/m;->a(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/m;->g()Lcom/google/android/gms/measurement/c;

    move-result-object v5

    const-class v0, Lcom/google/android/gms/b/aa;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/c;->b(Ljava/lang/Class;)Lcom/google/android/gms/measurement/d;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/aa;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/aa;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/aa;->b(Z)V

    invoke-virtual {v5, p2}, Lcom/google/android/gms/measurement/c;->a(Lcom/google/android/gms/measurement/d;)V

    const-class v1, Lcom/google/android/gms/b/Z;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/measurement/c;->b(Ljava/lang/Class;)Lcom/google/android/gms/measurement/d;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/b/Z;

    const-class v2, Lcom/google/android/gms/b/bw;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/c;->b(Ljava/lang/Class;)Lcom/google/android/gms/measurement/d;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/b/bw;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/D;->f()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "an"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/b/bw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "av"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/b/bw;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "aid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/b/bw;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "aiid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/b/bw;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/b/aa;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/b/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "Sending installation campaign to"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/D;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->t()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/n;->b()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/measurement/c;->a(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/c;->e()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/M;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/internal/Q;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/Q;-><init>(Lcom/google/android/gms/analytics/internal/M;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->a(Lcom/google/android/gms/analytics/internal/af;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/internal/M;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->f()I

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->g()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->h:Lcom/google/android/gms/analytics/internal/ab;

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/ab;->a(J)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/M;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/analytics/internal/Z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->e:Lcom/google/android/gms/analytics/internal/E;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/E;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/analytics/internal/ag;->C:Lcom/google/android/gms/analytics/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/M;->i:Lcom/google/android/gms/analytics/internal/p;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/p;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->i:Lcom/google/android/gms/analytics/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/p;->a()V

    const-string v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->e:Lcom/google/android/gms/analytics/internal/E;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/E;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connected to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->i:Lcom/google/android/gms/analytics/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/p;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->e()V

    goto :goto_0
.end method

.method private i()Z
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/measurement/f;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->x()V

    const-string v0, "Dispatching a batch of local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->e:Lcom/google/android/gms/analytics/internal/E;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/E;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/common/internal/e;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/M;->c:Lcom/google/android/gms/analytics/internal/l;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/l;->b()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;)V

    :goto_2
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/analytics/internal/Z;->f()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/analytics/internal/Z;->g()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    move-wide v4, v0

    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->b()V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/analytics/internal/J;->a(J)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->c()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->d()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v0, "Hits loaded from store. count"

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/M;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/d;->c()J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-nez v0, :cond_4

    const-string v0, "Database contains successfully uploaded hit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/analytics/internal/M;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->c()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->d()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "Failed to read hits from persisted store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->c()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->d()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    goto/16 :goto_2

    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->e:Lcom/google/android/gms/analytics/internal/E;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/E;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/google/android/gms/common/internal/e;->a:Z

    if-nez v0, :cond_6

    const-string v0, "Service connected, sending hits to the service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;)V

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/d;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/M;->e:Lcom/google/android/gms/analytics/internal/E;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/E;->a(Lcom/google/android/gms/analytics/internal/d;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/d;->c()J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/d;->c()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/analytics/internal/J;->b(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/d;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_a
    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->c()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->d()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    goto/16 :goto_2

    :cond_6
    move-wide v0, v4

    :try_start_c
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/M;->c:Lcom/google/android/gms/analytics/internal/l;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/l;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/M;->c:Lcom/google/android/gms/analytics/internal/l;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/analytics/internal/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v4, v0

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_5

    :cond_7
    invoke-interface {v8, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/analytics/internal/J;->a(Ljava/util/List;)V

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-wide v0, v4

    :cond_8
    :try_start_e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v4

    if-eqz v4, :cond_9

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->c()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->d()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    goto/16 :goto_2

    :catch_7
    move-exception v0

    :try_start_10
    const-string v1, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->c()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->d()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    goto/16 :goto_2

    :cond_9
    :try_start_12
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/J;->c()V

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/J;->d()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9

    move-wide v4, v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_13
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/J;->c()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/J;->d()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_a

    throw v0

    :catch_a
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    goto/16 :goto_2
.end method

.method private z()J
    .locals 2

    invoke-static {}, Lcom/google/android/gms/measurement/f;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->x()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->g()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/analytics/internal/D;Z)J
    .locals 5

    invoke-static {p1}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->x()V

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->b()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/D;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/D;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/analytics/internal/J;->a(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/D;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/D;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/D;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/google/android/gms/analytics/internal/J;->a(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/analytics/internal/D;->a(J)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/internal/J;->a(Lcom/google/android/gms/analytics/internal/D;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/J;->c()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/J;->d()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-string v3, "Failed to end transaction"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "Failed to update Analytics property"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->d()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Failed to end transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/J;->d()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "Failed to end transaction"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->y()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->c:Lcom/google/android/gms/analytics/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/l;->y()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->e:Lcom/google/android/gms/analytics/internal/E;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/E;->y()V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/analytics/internal/D;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    const-string v0, "Sending first hit to property"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/D;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->t()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/n;->c()Lcom/google/android/gms/analytics/internal/p;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/analytics/internal/Z;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/p;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->t()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/n;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->n()Lcom/google/android/gms/analytics/internal/j;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/analytics/internal/q;->a(Lcom/google/android/gms/analytics/internal/j;Ljava/lang/String;)Lcom/google/android/gms/b/bx;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/M;->a(Lcom/google/android/gms/analytics/internal/D;Lcom/google/android/gms/b/bx;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/analytics/internal/af;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/M;->j:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/analytics/internal/M;->a(Lcom/google/android/gms/analytics/internal/af;J)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/analytics/internal/af;J)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/measurement/f;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->x()V

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->t()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/n;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->l()Lcom/google/android/gms/b/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/al;->a()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_0
    const-string v2, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean v0, Lcom/google/android/gms/common/internal/e;->a:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->h()V

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->i()Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->t()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/n;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->g()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/analytics/internal/af;->a()V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/M;->j:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->d:Lcom/google/android/gms/analytics/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/k;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->t()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/n;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->g()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/analytics/internal/af;->a()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/analytics/internal/d;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/measurement/f;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->x()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/M;->k:Z

    if-eqz v0, :cond_1

    const-string v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->c(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->h()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->e:Lcom/google/android/gms/analytics/internal/E;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/E;->a(Lcom/google/android/gms/analytics/internal/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->c(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    const-string v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/M;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->t()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/n;->g()Lcom/google/android/gms/analytics/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/o;->a()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/d;->b()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "_m"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/analytics/internal/d;->a(Lcom/google/android/gms/analytics/internal/x;Lcom/google/android/gms/analytics/internal/d;Ljava/util/Map;)Lcom/google/android/gms/analytics/internal/d;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/google/android/gms/common/internal/e;->a:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->n()Lcom/google/android/gms/analytics/internal/j;

    move-result-object v0

    const-string v1, "Service unavailable on package side"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/j;->a(Lcom/google/android/gms/analytics/internal/d;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/J;->a(Lcom/google/android/gms/analytics/internal/d;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->g()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->n()Lcom/google/android/gms/analytics/internal/j;

    move-result-object v0

    const-string v1, "deliver: failed to insert hit to database"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/j;->a(Lcom/google/android/gms/analytics/internal/d;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/support/v4/app/f;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->n()Lcom/google/android/gms/analytics/internal/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/internal/q;->a(Lcom/google/android/gms/analytics/internal/j;Ljava/lang/String;)Lcom/google/android/gms/b/bx;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/M;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->t()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/n;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Ignoring duplicate install campaign"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/analytics/internal/M;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->t()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/internal/n;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->t()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/n;->c()Lcom/google/android/gms/analytics/internal/p;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/analytics/internal/Z;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/p;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Campaign received too late, ignoring"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/M;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "Received installation campaign"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/J;->c(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/D;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/M;->a(Lcom/google/android/gms/analytics/internal/D;Lcom/google/android/gms/b/bx;)V

    goto :goto_1
.end method

.method final b()V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->x()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/M;->a:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Landroid/support/v4/app/f;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/internal/M;->a:Z

    sget-boolean v0, Lcom/google/android/gms/common/internal/e;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->j()Lcom/google/android/gms/analytics/internal/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/A;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/analytics/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->p()Lcom/google/android/gms/measurement/f;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/P;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/P;-><init>(Lcom/google/android/gms/analytics/internal/M;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/f;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/M;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/analytics/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected final c()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->t()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/n;->b()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->D()V

    :cond_0
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->D()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/M;->k:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/google/android/gms/common/internal/e;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->h()V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->g()V

    return-void

    :cond_3
    sget-boolean v0, Lcom/google/android/gms/common/internal/e;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "Device AnalyticsService not registered! Hits will not be delivered reliably."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final d()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->l()Lcom/google/android/gms/b/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/al;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/M;->j:J

    return-void
.end method

.method protected final e()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    sget-boolean v0, Lcom/google/android/gms/common/internal/e;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/measurement/f;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->x()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->k()V

    invoke-static {}, Lcom/google/android/gms/analytics/internal/Z;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->e:Lcom/google/android/gms/analytics/internal/E;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/E;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Service not connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-static {}, Lcom/google/android/gms/analytics/internal/Z;->f()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/J;->a(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->g()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    goto :goto_0

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/d;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/internal/J;->b(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/d;

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/M;->e:Lcom/google/android/gms/analytics/internal/E;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/internal/E;->a(Lcom/google/android/gms/analytics/internal/d;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->g()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/M;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/measurement/f;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->x()V

    const-string v0, "Service disconnected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/M;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 8

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/internal/A;->r()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->x()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/M;->k:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/google/android/gms/common/internal/e;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->o()Lcom/google/android/gms/analytics/internal/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Z;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->C()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->d:Lcom/google/android/gms/analytics/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/k;->b()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->b:Lcom/google/android/gms/analytics/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/J;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->d:Lcom/google/android/gms/analytics/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/k;->b()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/gms/analytics/internal/ag;->z:Lcom/google/android/gms/analytics/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->d:Lcom/google/android/gms/analytics/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/k;->a()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/M;->d:Lcom/google/android/gms/analytics/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/k;->d()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->A()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->C()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->t()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/n;->d()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/M;->l()Lcom/google/android/gms/b/al;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/b/al;->a()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v4, v0, v6

    if-lez v4, :cond_5

    :goto_3
    const-string v2, "Dispatch scheduled (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/internal/M;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/M;->g:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/ab;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    const-wide/16 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/M;->g:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/ab;->b()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/M;->g:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/ab;->b(J)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/android/gms/analytics/internal/Z;->d()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/google/android/gms/analytics/internal/Z;->d()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/M;->g:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/internal/ab;->a(J)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->B()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/M;->A()V

    goto/16 :goto_1
.end method
