.class public final Lcom/adjust/sdk/C;
.super Landroid/os/HandlerThread;

# interfaces
.implements Lcom/adjust/sdk/w;


# instance fields
.field private a:Lcom/adjust/sdk/D;

.field private b:Lcom/adjust/sdk/v;

.field private c:Lcom/adjust/sdk/u;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/v;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "Adjust"

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/adjust/sdk/C;->setDaemon(Z)V

    invoke-virtual {p0}, Lcom/adjust/sdk/C;->start()V

    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/C;->c:Lcom/adjust/sdk/u;

    new-instance v0, Lcom/adjust/sdk/D;

    invoke-virtual {p0}, Lcom/adjust/sdk/C;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/adjust/sdk/D;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/C;)V

    iput-object v0, p0, Lcom/adjust/sdk/C;->a:Lcom/adjust/sdk/D;

    iput-object p1, p0, Lcom/adjust/sdk/C;->b:Lcom/adjust/sdk/v;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/adjust/sdk/C;Lcom/adjust/sdk/g;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://app.adjust.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adjust/sdk/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/adjust/sdk/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adjust/sdk/g;->c()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/c;->a(Ljavax/net/ssl/HttpsURLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/C;->b:Lcom/adjust/sdk/v;

    invoke-interface {v0}, Lcom/adjust/sdk/v;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/C;->b:Lcom/adjust/sdk/v;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/v;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/adjust/sdk/C;->b:Lcom/adjust/sdk/v;

    invoke-interface {v0}, Lcom/adjust/sdk/v;->b()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to encode parameters"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/C;->b(Lcom/adjust/sdk/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Request timed out"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/C;->a(Lcom/adjust/sdk/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Request failed"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/C;->a(Lcom/adjust/sdk/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "Runtime exception"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/C;->b(Lcom/adjust/sdk/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/adjust/sdk/g;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, Lcom/adjust/sdk/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/adjust/sdk/C;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adjust/sdk/C;->c:Lcom/adjust/sdk/u;

    const-string v3, "%s. (%s) Will retry later"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/C;->b:Lcom/adjust/sdk/v;

    invoke-interface {v0}, Lcom/adjust/sdk/v;->c()V

    return-void
.end method

.method private b(Lcom/adjust/sdk/g;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, Lcom/adjust/sdk/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/adjust/sdk/C;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adjust/sdk/C;->c:Lcom/adjust/sdk/u;

    const-string v3, "%s. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/C;->b:Lcom/adjust/sdk/v;

    invoke-interface {v0}, Lcom/adjust/sdk/v;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/adjust/sdk/g;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x11ad0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/adjust/sdk/C;->a:Lcom/adjust/sdk/D;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/D;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
