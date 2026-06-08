.class public final Lcom/adjust/sdk/a;
.super Landroid/os/HandlerThread;

# interfaces
.implements Lcom/adjust/sdk/s;


# static fields
.field private static a:J

.field private static b:J

.field private static c:J

.field private static d:J


# instance fields
.field private e:Lcom/adjust/sdk/d;

.field private f:Lcom/adjust/sdk/v;

.field private g:Lcom/adjust/sdk/h;

.field private h:Lcom/adjust/sdk/u;

.field private i:Lcom/adjust/sdk/E;

.field private j:Z

.field private k:Lcom/adjust/sdk/r;

.field private l:Lcom/adjust/sdk/j;

.field private m:Lcom/adjust/sdk/i;

.field private n:Lcom/adjust/sdk/t;


# direct methods
.method private constructor <init>(Lcom/adjust/sdk/j;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Adjust"

    invoke-direct {p0, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/adjust/sdk/a;->setDaemon(Z)V

    invoke-virtual {p0}, Lcom/adjust/sdk/a;->start()V

    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    new-instance v0, Lcom/adjust/sdk/d;

    invoke-virtual {p0}, Lcom/adjust/sdk/a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/adjust/sdk/d;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/a;)V

    iput-object v0, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/d;

    iput-boolean v2, p0, Lcom/adjust/sdk/a;->j:Z

    iput-object p1, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x11bb7

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/d;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/d;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(Lcom/adjust/sdk/j;)Lcom/adjust/sdk/a;
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v1

    const-string v3, "AdjustConfig missing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/j;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v1

    const-string v3, "AdjustConfig not initialized correctly"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/adjust/sdk/a;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/a;-><init>(Lcom/adjust/sdk/j;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)Lcom/adjust/sdk/g;
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v8, Lcom/adjust/sdk/i;

    invoke-direct {v8}, Lcom/adjust/sdk/i;-><init>()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v2, "Reading query string (%s) from %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_b

    aget-object v1, v3, v2

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string v6, "adjust_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x7

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const-string v1, "tracker"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-object v6, v8, Lcom/adjust/sdk/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const-string v1, "campaign"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v6, v8, Lcom/adjust/sdk/i;->b:Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const-string v1, "adgroup"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput-object v6, v8, Lcom/adjust/sdk/i;->c:Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    const-string v1, "creative"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v6, v8, Lcom/adjust/sdk/i;->d:Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    const-string v0, "reftag"

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Lcom/adjust/sdk/z;

    iget-object v1, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v2, p0, Lcom/adjust/sdk/a;->k:Lcom/adjust/sdk/r;

    iget-object v3, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/z;-><init>(Lcom/adjust/sdk/j;Lcom/adjust/sdk/r;Lcom/adjust/sdk/h;J)V

    iput-object v7, v0, Lcom/adjust/sdk/z;->a:Ljava/util/Map;

    iput-object v8, v0, Lcom/adjust/sdk/z;->b:Lcom/adjust/sdk/i;

    iput-object v6, v0, Lcom/adjust/sdk/z;->c:Ljava/lang/String;

    const-string v1, "reftag"

    if-ne p2, v1, :cond_d

    iput-object p1, v0, Lcom/adjust/sdk/z;->d:Ljava/lang/String;

    :cond_d
    invoke-virtual {v0, p2, p3, p4}, Lcom/adjust/sdk/z;->a(Ljava/lang/String;J)Lcom/adjust/sdk/g;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/adjust/sdk/a;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/adjust/sdk/l;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/a;->a:J

    invoke-static {}, Lcom/adjust/sdk/l;->c()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/a;->b:J

    invoke-static {}, Lcom/adjust/sdk/l;->d()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/a;->c:J

    invoke-static {}, Lcom/adjust/sdk/l;->e()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/a;->d:J

    new-instance v0, Lcom/adjust/sdk/r;

    iget-object v1, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v1, v1, Lcom/adjust/sdk/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Lcom/adjust/sdk/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/a;->k:Lcom/adjust/sdk/r;

    const-string v0, "production"

    iget-object v1, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v1, v1, Lcom/adjust/sdk/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    sget-object v1, Lcom/adjust/sdk/x;->b:Lcom/adjust/sdk/x;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/u;->a(Lcom/adjust/sdk/x;)V

    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v0, v0, Lcom/adjust/sdk/j;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v1, "Event buffering is enabled"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v0, v0, Lcom/adjust/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v1, "Unable to get Google Play Services Advertising ID at start time"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v0, v0, Lcom/adjust/sdk/j;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v0, v0, Lcom/adjust/sdk/j;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-wide v2, v1, Lcom/adjust/sdk/j;->g:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/adjust/sdk/a;->a(Ljava/lang/String;J)V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v0, v0, Lcom/adjust/sdk/j;->a:Landroid/content/Context;

    const-string v1, "AdjustAttribution"

    const-string v2, "Attribution"

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/i;

    iput-object v0, p0, Lcom/adjust/sdk/a;->m:Lcom/adjust/sdk/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v0, v0, Lcom/adjust/sdk/j;->a:Landroid/content/Context;

    const-string v1, "AdjustIoActivityState"

    const-string v2, "Activity state"

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/h;

    iput-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v0, v0, Lcom/adjust/sdk/j;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/adjust/sdk/a;->f()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/adjust/sdk/l;->a(Lcom/adjust/sdk/a;Landroid/content/Context;Z)Lcom/adjust/sdk/v;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/a;->f:Lcom/adjust/sdk/v;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Lcom/adjust/sdk/z;

    iget-object v1, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v2, p0, Lcom/adjust/sdk/a;->k:Lcom/adjust/sdk/r;

    iget-object v3, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/z;-><init>(Lcom/adjust/sdk/j;Lcom/adjust/sdk/r;Lcom/adjust/sdk/h;J)V

    invoke-virtual {v0}, Lcom/adjust/sdk/z;->b()Lcom/adjust/sdk/g;

    move-result-object v0

    invoke-direct {p0}, Lcom/adjust/sdk/a;->f()Z

    move-result v1

    iget-object v2, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    invoke-static {p0, v0, v1, v6}, Lcom/adjust/sdk/l;->a(Lcom/adjust/sdk/s;Lcom/adjust/sdk/g;ZZ)Lcom/adjust/sdk/t;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/a;->n:Lcom/adjust/sdk/t;

    new-instance v0, Lcom/adjust/sdk/E;

    new-instance v1, Lcom/adjust/sdk/b;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/b;-><init>(Lcom/adjust/sdk/a;)V

    sget-wide v2, Lcom/adjust/sdk/a;->b:J

    sget-wide v4, Lcom/adjust/sdk/a;->a:J

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/E;-><init>(Ljava/lang/Runnable;JJ)V

    iput-object v0, p0, Lcom/adjust/sdk/a;->i:Lcom/adjust/sdk/E;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    iget-object v1, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v1, v1, Lcom/adjust/sdk/j;->d:Lcom/adjust/sdk/x;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/u;->a(Lcom/adjust/sdk/x;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v2, "Failed to read %s file (%s)"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Attribution"

    aput-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/adjust/sdk/a;->m:Lcom/adjust/sdk/i;

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v2, "Failed to read %s file (%s)"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Activity state"

    aput-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    goto :goto_2
.end method

.method static synthetic a(Lcom/adjust/sdk/a;Landroid/net/Uri;J)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deeplink"

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/adjust/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/adjust/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adjust/sdk/a;->f:Lcom/adjust/sdk/v;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/v;->a(Lcom/adjust/sdk/g;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/adjust/sdk/a;Lcom/adjust/sdk/k;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adjust/sdk/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v1, "Event missing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v1, "Event not initialized correctly"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adjust/sdk/a;Ljava/lang/String;J)V
    .locals 2

    const-string v0, "reftag"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/adjust/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/adjust/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adjust/sdk/a;->f:Lcom/adjust/sdk/v;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/v;->a(Lcom/adjust/sdk/g;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/adjust/sdk/a;Lorg/json/JSONObject;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v0, "deeplink"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v0, v0, Lcom/adjust/sdk/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v4, "Unable to open deep link (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-interface {v0, v4, v1}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/adjust/sdk/a;->n:Lcom/adjust/sdk/t;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/t;->a(Lorg/json/JSONObject;)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v5, "Open deep link (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-interface {v0, v5, v1}, Lcom/adjust/sdk/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v0, v0, Lcom/adjust/sdk/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private a(J)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/h;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget-wide v2, v1, Lcom/adjust/sdk/h;->i:J

    sub-long v2, p1, v2

    sget-wide v4, Lcom/adjust/sdk/a;->c:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iput-wide p1, v1, Lcom/adjust/sdk/h;->i:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v2, "Time travel!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget-wide v4, v0, Lcom/adjust/sdk/h;->g:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/adjust/sdk/h;->g:J

    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget-wide v4, v0, Lcom/adjust/sdk/h;->h:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/adjust/sdk/h;->h:J

    goto :goto_1
.end method

.method private a(Lcom/adjust/sdk/h;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v2, "Missing activity state."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(J)V
    .locals 7

    new-instance v0, Lcom/adjust/sdk/z;

    iget-object v1, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v2, p0, Lcom/adjust/sdk/a;->k:Lcom/adjust/sdk/r;

    iget-object v3, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/z;-><init>(Lcom/adjust/sdk/j;Lcom/adjust/sdk/r;Lcom/adjust/sdk/h;J)V

    invoke-virtual {v0}, Lcom/adjust/sdk/z;->a()Lcom/adjust/sdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/a;->f:Lcom/adjust/sdk/v;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/v;->a(Lcom/adjust/sdk/g;)V

    iget-object v0, p0, Lcom/adjust/sdk/a;->f:Lcom/adjust/sdk/v;

    invoke-interface {v0}, Lcom/adjust/sdk/v;->a()V

    return-void
.end method

.method static synthetic b(Lcom/adjust/sdk/a;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget-boolean v0, v0, Lcom/adjust/sdk/h;->b:Z

    if-eqz v0, :cond_4

    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/a;->d()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    if-nez v2, :cond_5

    new-instance v2, Lcom/adjust/sdk/h;

    invoke-direct {v2}, Lcom/adjust/sdk/h;-><init>()V

    iput-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iput v8, v2, Lcom/adjust/sdk/h;->e:I

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/a;->b(J)V

    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    invoke-virtual {v2, v0, v1}, Lcom/adjust/sdk/h;->a(J)V

    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget-boolean v1, p0, Lcom/adjust/sdk/a;->j:Z

    iput-boolean v1, v0, Lcom/adjust/sdk/h;->b:Z

    invoke-direct {p0}, Lcom/adjust/sdk/a;->e()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget v0, v0, Lcom/adjust/sdk/h;->f:I

    if-le v0, v8, :cond_3

    iget-object v0, p0, Lcom/adjust/sdk/a;->m:Lcom/adjust/sdk/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget-boolean v0, v0, Lcom/adjust/sdk/h;->c:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/a;->n:Lcom/adjust/sdk/t;

    invoke-interface {v0}, Lcom/adjust/sdk/t;->a()V

    :cond_3
    invoke-direct {p0}, Lcom/adjust/sdk/a;->f()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adjust/sdk/a;->i:Lcom/adjust/sdk/E;

    invoke-virtual {v0}, Lcom/adjust/sdk/E;->a()V

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget-wide v2, v2, Lcom/adjust/sdk/h;->i:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_6

    iget-object v2, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v3, "Time travel!"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iput-wide v0, v2, Lcom/adjust/sdk/h;->i:J

    invoke-direct {p0}, Lcom/adjust/sdk/a;->e()V

    goto :goto_0

    :cond_6
    sget-wide v4, Lcom/adjust/sdk/a;->c:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget v5, v4, Lcom/adjust/sdk/h;->e:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/h;->e:I

    iget-object v4, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iput-wide v2, v4, Lcom/adjust/sdk/h;->j:J

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/a;->b(J)V

    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    invoke-virtual {v2, v0, v1}, Lcom/adjust/sdk/h;->a(J)V

    invoke-direct {p0}, Lcom/adjust/sdk/a;->e()V

    goto :goto_0

    :cond_7
    sget-wide v4, Lcom/adjust/sdk/a;->d:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget v5, v4, Lcom/adjust/sdk/h;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/h;->f:I

    iget-object v4, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget-wide v6, v4, Lcom/adjust/sdk/h;->g:J

    add-long/2addr v2, v6

    iput-wide v2, v4, Lcom/adjust/sdk/h;->g:J

    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iput-wide v0, v2, Lcom/adjust/sdk/h;->i:J

    invoke-direct {p0}, Lcom/adjust/sdk/a;->e()V

    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v1, "Started subsession %d of session %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget v3, v3, Lcom/adjust/sdk/h;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget v3, v3, Lcom/adjust/sdk/h;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/adjust/sdk/a;)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/a;->f:Lcom/adjust/sdk/v;

    invoke-interface {v0}, Lcom/adjust/sdk/v;->d()V

    iget-object v0, p0, Lcom/adjust/sdk/a;->n:Lcom/adjust/sdk/t;

    invoke-interface {v0}, Lcom/adjust/sdk/t;->b()V

    iget-object v0, p0, Lcom/adjust/sdk/a;->i:Lcom/adjust/sdk/E;

    invoke-virtual {v0}, Lcom/adjust/sdk/E;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adjust/sdk/a;->e()V

    :cond_0
    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget-boolean v0, v0, Lcom/adjust/sdk/h;->b:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/adjust/sdk/a;->j:Z

    goto :goto_0
.end method

.method private d()V
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/a;->n:Lcom/adjust/sdk/t;

    invoke-interface {v0}, Lcom/adjust/sdk/t;->b()V

    :goto_0
    invoke-direct {p0}, Lcom/adjust/sdk/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/a;->f:Lcom/adjust/sdk/v;

    invoke-interface {v0}, Lcom/adjust/sdk/v;->d()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->n:Lcom/adjust/sdk/t;

    invoke-interface {v0}, Lcom/adjust/sdk/t;->c()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/a;->f:Lcom/adjust/sdk/v;

    invoke-interface {v0}, Lcom/adjust/sdk/v;->e()V

    goto :goto_1
.end method

.method static synthetic d(Lcom/adjust/sdk/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/a;->d()V

    return-void
.end method

.method private declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iget-object v1, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v1, v1, Lcom/adjust/sdk/j;->a:Landroid/content/Context;

    const-string v2, "AdjustIoActivityState"

    const-string v3, "Activity state"

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/c;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/adjust/sdk/a;)V
    .locals 3

    invoke-direct {p0}, Lcom/adjust/sdk/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/a;->i:Lcom/adjust/sdk/E;

    invoke-virtual {v0}, Lcom/adjust/sdk/E;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/u;

    const-string v1, "Session timer fired"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/a;->f:Lcom/adjust/sdk/v;

    invoke-interface {v0}, Lcom/adjust/sdk/v;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adjust/sdk/a;->e()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/adjust/sdk/a;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x11bbf

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/d;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/d;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private f()Z
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x11bb8

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/d;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/d;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x11bbd

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lcom/adjust/sdk/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adjust/sdk/c;-><init>(Lcom/adjust/sdk/a;Ljava/lang/String;J)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/d;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/d;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x11bbb

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/d;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/d;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/h;

    iput-boolean p1, v0, Lcom/adjust/sdk/h;->c:Z

    invoke-direct {p0}, Lcom/adjust/sdk/a;->e()V

    return-void
.end method

.method public final a(Lcom/adjust/sdk/i;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/a;->m:Lcom/adjust/sdk/i;

    invoke-virtual {p1, v1}, Lcom/adjust/sdk/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/adjust/sdk/a;->m:Lcom/adjust/sdk/i;

    iget-object v0, p0, Lcom/adjust/sdk/a;->m:Lcom/adjust/sdk/i;

    iget-object v1, p0, Lcom/adjust/sdk/a;->l:Lcom/adjust/sdk/j;

    iget-object v1, v1, Lcom/adjust/sdk/j;->a:Landroid/content/Context;

    const-string v2, "AdjustAttribution"

    const-string v3, "Attribution"

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/c;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x11bb9

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/d;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/d;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
