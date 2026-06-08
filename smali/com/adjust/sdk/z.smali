.class final Lcom/adjust/sdk/z;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcom/adjust/sdk/u;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/adjust/sdk/i;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field private e:Lcom/adjust/sdk/j;

.field private f:Lcom/adjust/sdk/r;

.field private g:Lcom/adjust/sdk/h;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/z;->i:Lcom/adjust/sdk/u;

    return-void
.end method

.method public constructor <init>(Lcom/adjust/sdk/j;Lcom/adjust/sdk/r;Lcom/adjust/sdk/h;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adjust/sdk/z;->e:Lcom/adjust/sdk/j;

    iput-object p2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/adjust/sdk/z;->g:Lcom/adjust/sdk/h;

    iput-wide p4, p0, Lcom/adjust/sdk/z;->h:J

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/adjust/sdk/h;->a()Lcom/adjust/sdk/h;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/adjust/sdk/e;)Lcom/adjust/sdk/g;
    .locals 2

    new-instance v0, Lcom/adjust/sdk/g;

    invoke-direct {v0, p1}, Lcom/adjust/sdk/g;-><init>(Lcom/adjust/sdk/e;)V

    iget-object v1, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v1, v1, Lcom/adjust/sdk/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/g;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mac_sha1"

    iget-object v1, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v1, v1, Lcom/adjust/sdk/r;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mac_md5"

    iget-object v1, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v1, v1, Lcom/adjust/sdk/r;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android_id"

    iget-object v1, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v1, v1, Lcom/adjust/sdk/r;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "app_token"

    iget-object v1, p0, Lcom/adjust/sdk/z;->e:Lcom/adjust/sdk/j;

    iget-object v1, v1, Lcom/adjust/sdk/j;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "environment"

    iget-object v1, p0, Lcom/adjust/sdk/z;->e:Lcom/adjust/sdk/j;

    iget-object v1, v1, Lcom/adjust/sdk/j;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_known"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "needs_attribution_data"

    iget-object v1, p0, Lcom/adjust/sdk/z;->e:Lcom/adjust/sdk/j;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/adjust/sdk/z;->e:Lcom/adjust/sdk/j;

    iget-object v0, v0, Lcom/adjust/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps_adid"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adjust/sdk/z;->e:Lcom/adjust/sdk/j;

    iget-object v0, v0, Lcom/adjust/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/a;->b(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "tracking_enabled"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private b(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p3, p4}, Lcom/adjust/sdk/c;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;)V

    const-string v1, "fb_id"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_version"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_type"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_name"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_manufacturer"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os_name"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os_version"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "language"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "country"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "screen_size"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "screen_format"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "screen_density"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "display_width"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "display_height"

    iget-object v2, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v2, v2, Lcom/adjust/sdk/r;->s:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/z;->e(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/z;->b(Ljava/util/Map;)V

    const-string v1, "android_uuid"

    iget-object v2, p0, Lcom/adjust/sdk/z;->g:Lcom/adjust/sdk/h;

    iget-object v2, v2, Lcom/adjust/sdk/h;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "session_count"

    iget-object v2, p0, Lcom/adjust/sdk/z;->g:Lcom/adjust/sdk/h;

    iget v2, v2, Lcom/adjust/sdk/h;->e:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;J)V

    const-string v1, "subsession_count"

    iget-object v2, p0, Lcom/adjust/sdk/z;->g:Lcom/adjust/sdk/h;

    iget v2, v2, Lcom/adjust/sdk/h;->f:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;J)V

    const-string v1, "session_length"

    iget-object v2, p0, Lcom/adjust/sdk/z;->g:Lcom/adjust/sdk/h;

    iget-wide v2, v2, Lcom/adjust/sdk/h;->g:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/z;->c(Ljava/util/Map;Ljava/lang/String;J)V

    const-string v1, "time_spent"

    iget-object v2, p0, Lcom/adjust/sdk/z;->g:Lcom/adjust/sdk/h;

    iget-wide v2, v2, Lcom/adjust/sdk/h;->h:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/z;->c(Ljava/util/Map;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/z;->c(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/adjust/sdk/z;->d(Ljava/util/Map;)V

    return-object v0
.end method

.method private c(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "created_at"

    iget-wide v2, p0, Lcom/adjust/sdk/z;->h:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adjust/sdk/z;->b(Ljava/util/Map;Ljava/lang/String;J)V

    return-void
.end method

.method private c(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/z;->b(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/z;->c(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/adjust/sdk/z;->d(Ljava/util/Map;)V

    return-object v0
.end method

.method private static d(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mac_sha1"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mac_md5"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gps_adid"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adjust/sdk/z;->i:Lcom/adjust/sdk/u;

    const-string v1, "Missing device id\'s. Please check if Proguard is correctly set with Adjust SDK"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private e(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v0, v0, Lcom/adjust/sdk/r;->t:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/z;->f:Lcom/adjust/sdk/r;

    iget-object v0, v0, Lcom/adjust/sdk/r;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/adjust/sdk/g;
    .locals 4

    invoke-direct {p0}, Lcom/adjust/sdk/z;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "last_interval"

    iget-object v2, p0, Lcom/adjust/sdk/z;->g:Lcom/adjust/sdk/h;

    iget-wide v2, v2, Lcom/adjust/sdk/h;->j:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/z;->c(Ljava/util/Map;Ljava/lang/String;J)V

    const-string v1, "default_tracker"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/adjust/sdk/e;->b:Lcom/adjust/sdk/e;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/z;->a(Lcom/adjust/sdk/e;)Lcom/adjust/sdk/g;

    move-result-object v1

    const-string v2, "/session"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/g;->a(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/g;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/g;->a(Ljava/util/Map;)V

    return-object v1
.end method

.method public final a(Lcom/adjust/sdk/k;)Lcom/adjust/sdk/g;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/adjust/sdk/z;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "event_count"

    iget-object v2, p0, Lcom/adjust/sdk/z;->g:Lcom/adjust/sdk/h;

    iget v2, v2, Lcom/adjust/sdk/h;->d:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;J)V

    const-string v1, "event_token"

    iget-object v2, p1, Lcom/adjust/sdk/k;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "revenue"

    iget-object v2, p1, Lcom/adjust/sdk/k;->b:Ljava/lang/Double;

    if-eqz v2, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.5f"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "currency"

    iget-object v2, p1, Lcom/adjust/sdk/k;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callback_params"

    iget-object v2, p1, Lcom/adjust/sdk/k;->d:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "partner_params"

    iget-object v2, p1, Lcom/adjust/sdk/k;->e:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v1, Lcom/adjust/sdk/e;->c:Lcom/adjust/sdk/e;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/z;->a(Lcom/adjust/sdk/e;)Lcom/adjust/sdk/g;

    move-result-object v1

    const-string v2, "/event"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/g;->a(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/adjust/sdk/k;->b:Ljava/lang/Double;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\'%s\'"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/adjust/sdk/k;->a:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/g;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/g;->a(Ljava/util/Map;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;J)Lcom/adjust/sdk/g;
    .locals 4

    invoke-direct {p0}, Lcom/adjust/sdk/z;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "source"

    invoke-static {v0, v1, p1}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "click_time"

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/adjust/sdk/z;->b(Ljava/util/Map;Ljava/lang/String;J)V

    const-string v1, "reftag"

    iget-object v2, p0, Lcom/adjust/sdk/z;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "params"

    iget-object v2, p0, Lcom/adjust/sdk/z;->a:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "referrer"

    iget-object v2, p0, Lcom/adjust/sdk/z;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adjust/sdk/z;->b:Lcom/adjust/sdk/i;

    if-eqz v1, :cond_0

    const-string v1, "tracker"

    iget-object v2, p0, Lcom/adjust/sdk/z;->b:Lcom/adjust/sdk/i;

    iget-object v2, v2, Lcom/adjust/sdk/i;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "campaign"

    iget-object v2, p0, Lcom/adjust/sdk/z;->b:Lcom/adjust/sdk/i;

    iget-object v2, v2, Lcom/adjust/sdk/i;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adgroup"

    iget-object v2, p0, Lcom/adjust/sdk/z;->b:Lcom/adjust/sdk/i;

    iget-object v2, v2, Lcom/adjust/sdk/i;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "creative"

    iget-object v2, p0, Lcom/adjust/sdk/z;->b:Lcom/adjust/sdk/i;

    iget-object v2, v2, Lcom/adjust/sdk/i;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/z;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/adjust/sdk/e;->d:Lcom/adjust/sdk/e;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/z;->a(Lcom/adjust/sdk/e;)Lcom/adjust/sdk/g;

    move-result-object v1

    const-string v2, "/sdk_click"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/g;->a(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/g;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/g;->a(Ljava/util/Map;)V

    return-object v1
.end method

.method public final b()Lcom/adjust/sdk/g;
    .locals 3

    invoke-direct {p0}, Lcom/adjust/sdk/z;->d()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/adjust/sdk/e;->e:Lcom/adjust/sdk/e;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/z;->a(Lcom/adjust/sdk/e;)Lcom/adjust/sdk/g;

    move-result-object v1

    const-string v2, "attribution"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/g;->a(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/g;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/g;->a(Ljava/util/Map;)V

    return-object v1
.end method
