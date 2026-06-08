.class public Lcom/rockstargames/hal/andHttp;
.super Ljava/lang/Object;


# static fields
.field private static connections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/rockstargames/hal/andHttp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cancelled:Z

.field private id:I

.field private presenceConnection:Lcom/rockstargames/hal/PresenceConnection;

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andHttp;->connections:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(ILorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    iput p1, p0, Lcom/rockstargames/hal/andHttp;->id:I

    iput-object p2, p0, Lcom/rockstargames/hal/andHttp;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    return-void
.end method

.method public static AsyncGET(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncGET: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ":\n"

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/rockstargames/hal/andHttp;->processRequest(ILorg/apache/http/client/methods/HttpRequestBase;Z)V

    return-void
.end method

.method public static GET(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GET: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ":\n"

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/rockstargames/hal/andHttp;->processRequest(ILorg/apache/http/client/methods/HttpRequestBase;Z)V

    return-void
.end method

.method public static HEAD(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HEAD: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/rockstargames/hal/andHttp;->processRequest(ILorg/apache/http/client/methods/HttpRequestBase;Z)V

    return-void
.end method

.method public static IsNetworkReachable()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exceoption"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public static POST(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "POST: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ":\n"

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "Presence.asmx/WaitMessage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "with data:"

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/rockstargames/hal/andHttp;->logDataSafe([B)V

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/rockstargames/hal/andHttp;->processRequest(ILorg/apache/http/client/methods/HttpRequestBase;Z)V

    :goto_1
    return-void

    :cond_1
    new-instance v1, Lcom/rockstargames/hal/andHttp;

    invoke-direct {v1, p0, v0}, Lcom/rockstargames/hal/andHttp;-><init>(ILorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-static {p0, v1}, Lcom/rockstargames/hal/andHttp;->addConnection(ILcom/rockstargames/hal/andHttp;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/rockstargames/hal/PresenceConnection;

    invoke-direct {v3, v1, v0, p3}, Lcom/rockstargames/hal/PresenceConnection;-><init>(Lcom/rockstargames/hal/andHttp;Lorg/apache/http/client/methods/HttpRequestBase;[B)V

    const-string v0, "Presence Connection Thread"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method static synthetic access$000(I)Lcom/rockstargames/hal/andHttp;
    .locals 1

    invoke-static {p0}, Lcom/rockstargames/hal/andHttp;->getConnection(I)Lcom/rockstargames/hal/andHttp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/rockstargames/hal/andHttp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/rockstargames/hal/andHttp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/rockstargames/hal/andHttp;)Lcom/rockstargames/hal/PresenceConnection;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andHttp;->presenceConnection:Lcom/rockstargames/hal/PresenceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rockstargames/hal/andHttp;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andHttp;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/rockstargames/hal/andHttp;)I
    .locals 1

    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    return v0
.end method

.method private static declared-synchronized addConnection(ILcom/rockstargames/hal/andHttp;)V
    .locals 2

    const-class v1, Lcom/rockstargames/hal/andHttp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/rockstargames/hal/andHttp;->connections:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static cancelConnection(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockstargames/hal/r;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/r;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static declared-synchronized getConnection(I)Lcom/rockstargames/hal/andHttp;
    .locals 2

    const-class v1, Lcom/rockstargames/hal/andHttp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/rockstargames/hal/andHttp;->connections:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andHttp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getHeadersAsString([Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "Headers:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "------------"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "------------"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static logDataSafe([B)V
    .locals 7

    const/16 v6, 0x1000

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_6

    if-ge v0, v6, :cond_6

    aget-byte v3, p0, v0

    int-to-char v3, v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0x20

    if-ge v3, v4, :cond_3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    :cond_3
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_5

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    array-length v0, p0

    if-le v0, v6, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    ...plus "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    add-int/lit16 v1, v1, -0x1000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " more bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private static processRequest(ILorg/apache/http/client/methods/HttpRequestBase;Z)V
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/andHttp;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/andHttp;-><init>(ILorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-static {p0, v0}, Lcom/rockstargames/hal/andHttp;->addConnection(ILcom/rockstargames/hal/andHttp;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/rockstargames/hal/andHttp;->executeAsync()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/rockstargames/hal/andHttp;->execute()V

    goto :goto_0
.end method

.method public static declared-synchronized removeConnection(I)V
    .locals 2

    const-class v1, Lcom/rockstargames/hal/andHttp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/rockstargames/hal/andHttp;->connections:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected doInBackground()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "[B>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iget-object v3, p0, Lcom/rockstargames/hal/andHttp;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Presence.asmx/WaitMessage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x7530

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x7530

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :cond_0
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    const-string v0, "Executing request..."

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andHttp;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicHttpResponse;

    const-string v3, "Response obtained."

    invoke-static {v3}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Status line: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/message/BasicHttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/message/BasicHttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/message/BasicHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    move-object v3, v1

    :goto_1
    invoke-static {v3}, Lcom/rockstargames/hal/andHttp;->logDataSafe([B)V

    iget-boolean v1, p0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    if-nez v1, :cond_3

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "HTTP"

    const-string v3, "Exception!"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "HTTP"

    const-string v1, "Unable to connect?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_2
.end method

.method public execute()V
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andHttp;->onPreExecute()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockstargames/hal/s;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/s;-><init>(Lcom/rockstargames/hal/andHttp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public executeAsync()V
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andHttp;->onPreExecute()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockstargames/hal/u;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/u;-><init>(Lcom/rockstargames/hal/andHttp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    return v0
.end method

.method public native onConnectionFinished(I)V
.end method

.method public native onError(II)V
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "[B>;)V"
        }
    .end annotation

    const/16 v9, 0xa

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/rockstargames/hal/andHttp;->onError(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->removeConnection(I)V

    return-void

    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v5, v1

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_1

    aget-object v6, v1, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_2
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    if-ge v1, v0, :cond_4

    const/16 v0, 0x400

    if-ge v1, v0, :cond_4

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, v1

    const/16 v6, 0x20

    if-lt v0, v6, :cond_3

    const/16 v6, 0x80

    if-ge v0, v6, :cond_3

    int-to-char v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v6, 0x64

    if-le v0, v6, :cond_2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5
    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/rockstargames/hal/andHttp;->onReceivedResponse(IILjava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/rockstargames/hal/andHttp;->id:I

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    array-length v1, v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/rockstargames/hal/andHttp;->onReceivedData(I[BI)V

    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andHttp;->onConnectionFinished(I)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting HTTP request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rockstargames/hal/andHttp;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andHttp;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public native onReceivedData(I[BI)V
.end method

.method public native onReceivedResponse(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public setPresenceConnection(Lcom/rockstargames/hal/PresenceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/andHttp;->presenceConnection:Lcom/rockstargames/hal/PresenceConnection;

    return-void
.end method
