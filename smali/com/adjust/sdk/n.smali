.class public final Lcom/adjust/sdk/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adjust/sdk/t;


# instance fields
.field private a:Ljava/util/concurrent/ScheduledExecutorService;

.field private b:Lcom/adjust/sdk/s;

.field private c:Lcom/adjust/sdk/u;

.field private d:Lcom/adjust/sdk/g;

.field private e:Lcom/adjust/sdk/F;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/s;Lcom/adjust/sdk/g;ZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/n;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/n;->c:Lcom/adjust/sdk/u;

    iget-object v0, p0, Lcom/adjust/sdk/n;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adjust/sdk/F;

    iget-object v1, p0, Lcom/adjust/sdk/n;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/adjust/sdk/o;

    invoke-direct {v2, p0}, Lcom/adjust/sdk/o;-><init>(Lcom/adjust/sdk/n;)V

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/F;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adjust/sdk/n;->e:Lcom/adjust/sdk/F;

    :goto_0
    iput-object p1, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/s;

    iput-object p2, p0, Lcom/adjust/sdk/n;->d:Lcom/adjust/sdk/g;

    iput-boolean p3, p0, Lcom/adjust/sdk/n;->f:Z

    iput-boolean p4, p0, Lcom/adjust/sdk/n;->g:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/n;->c:Lcom/adjust/sdk/u;

    const-string v1, "Timer not initialized, attribution handler is disabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 5

    iget-object v0, p0, Lcom/adjust/sdk/n;->e:Lcom/adjust/sdk/F;

    invoke-virtual {v0}, Lcom/adjust/sdk/F;->a()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/n;->c:Lcom/adjust/sdk/u;

    const-string v1, "Waiting to query attribution in %d milliseconds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/n;->e:Lcom/adjust/sdk/F;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/F;->a(J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adjust/sdk/n;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/adjust/sdk/n;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/adjust/sdk/n;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adjust/sdk/n;->c:Lcom/adjust/sdk/u;

    const-string v2, "Attribution handler is paused"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/n;->c:Lcom/adjust/sdk/u;

    const-string v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/n;->d:Lcom/adjust/sdk/g;

    invoke-virtual {v4}, Lcom/adjust/sdk/g;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/n;->d:Lcom/adjust/sdk/g;

    invoke-virtual {v1}, Lcom/adjust/sdk/g;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adjust/sdk/n;->d:Lcom/adjust/sdk/g;

    invoke-virtual {v2}, Lcom/adjust/sdk/g;->c()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "https"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "app.adjust.com"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/adjust/sdk/n;->c:Lcom/adjust/sdk/u;

    const-string v3, "Failed to get attribution (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adjust/sdk/n;->d:Lcom/adjust/sdk/g;

    invoke-virtual {v2}, Lcom/adjust/sdk/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adjust/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adjust/sdk/c;->a(Ljavax/net/ssl/HttpsURLConnection;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adjust/sdk/n;->b(Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/adjust/sdk/n;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adjust/sdk/n;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/i;->a(Lorg/json/JSONObject;)Lcom/adjust/sdk/i;

    move-result-object v0

    const-string v1, "ask_in"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/s;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/s;->a(Lcom/adjust/sdk/i;)Z

    iget-object v0, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/s;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adjust/sdk/s;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/s;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/s;->a(Z)V

    invoke-direct {p0, v2, v3}, Lcom/adjust/sdk/n;->a(J)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/n;->a(J)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/n;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adjust/sdk/p;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/p;-><init>(Lcom/adjust/sdk/n;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/n;->f:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/n;->f:Z

    return-void
.end method
