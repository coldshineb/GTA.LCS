.class public Lcom/rockstargames/hal/andHttp;
.super Ljava/lang/Object;
.source "andHttp.java"


# static fields
.field private static connections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/rockstargames/hal/andHttp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cancelled:Z

.field private id:I

.field private presenceConnection:Lcom/rockstargames/hal/PresenceConnection;

.field private request:Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 229
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andHttp;->connections:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(ILcz/msebera/android/httpclient/client/methods/HttpRequestBase;)V
    .locals 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    .line 264
    iput p1, p0, Lcom/rockstargames/hal/andHttp;->id:I

    .line 265
    iput-object p2, p0, Lcom/rockstargames/hal/andHttp;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;

    return-void
.end method

.method public static AsyncGET(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncGET: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Header string: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 82
    new-instance p1, Ljava/util/StringTokenizer;

    const-string v1, ":\n"

    invoke-direct {p1, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p2, v1}, Lcz/msebera/android/httpclient/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 90
    invoke-static {p0, v0, p1}, Lcom/rockstargames/hal/andHttp;->processRequest(ILcz/msebera/android/httpclient/client/methods/HttpRequestBase;Z)V

    return-void
.end method

.method public static GET(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GET: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Header string: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 66
    new-instance p1, Ljava/util/StringTokenizer;

    const-string v1, ":\n"

    invoke-direct {p1, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p2, v1}, Lcz/msebera/android/httpclient/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 74
    invoke-static {p0, v0, p1}, Lcom/rockstargames/hal/andHttp;->processRequest(ILcz/msebera/android/httpclient/client/methods/HttpRequestBase;Z)V

    return-void
.end method

.method public static HEAD(ILjava/lang/String;)V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HEAD: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpHead;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/rockstargames/hal/andHttp;->processRequest(ILcz/msebera/android/httpclient/client/methods/HttpRequestBase;Z)V

    return-void
.end method

.method public static IsNetworkReachable()Z
    .locals 7

    const/4 v0, 0x0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 136
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 138
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 142
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v0

    :catch_0
    move-exception v1

    .line 153
    const-string v2, "HAL"

    const-string v3, "IsNetworkReachable failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static POST(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 5

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "POST: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 98
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ":\n"

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p2, v2}, Lcz/msebera/android/httpclient/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    const-string p2, "Presence.asmx/WaitMessage"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 110
    const-string p1, "with data:"

    invoke-static {p1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 111
    invoke-static {p3}, Lcom/rockstargames/hal/andHttp;->logDataSafe([B)V

    .line 113
    new-instance p1, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;

    invoke-direct {p1, p3}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpPost;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    const/4 p1, 0x0

    .line 115
    invoke-static {p0, v0, p1}, Lcom/rockstargames/hal/andHttp;->processRequest(ILcz/msebera/android/httpclient/client/methods/HttpRequestBase;Z)V

    return-void

    .line 119
    :cond_1
    new-instance p1, Lcom/rockstargames/hal/andHttp;

    invoke-direct {p1, p0, v0}, Lcom/rockstargames/hal/andHttp;-><init>(ILcz/msebera/android/httpclient/client/methods/HttpRequestBase;)V

    .line 120
    invoke-static {p0, p1}, Lcom/rockstargames/hal/andHttp;->addConnection(ILcom/rockstargames/hal/andHttp;)V

    .line 121
    new-instance p0, Ljava/lang/Thread;

    new-instance p2, Lcom/rockstargames/hal/PresenceConnection;

    invoke-direct {p2, p1, v0, p3}, Lcom/rockstargames/hal/PresenceConnection;-><init>(Lcom/rockstargames/hal/andHttp;Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;[B)V

    const-string p1, "Presence Connection Thread"

    invoke-direct {p0, p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static declared-synchronized addConnection(ILcom/rockstargames/hal/andHttp;)V
    .locals 2

    const-class v0, Lcom/rockstargames/hal/andHttp;

    monitor-enter v0

    .line 233
    :try_start_0
    sget-object v1, Lcom/rockstargames/hal/andHttp;->connections:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static cancelConnection(I)V
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static declared-synchronized getConnection(I)Lcom/rockstargames/hal/andHttp;
    .locals 2

    const-class v0, Lcom/rockstargames/hal/andHttp;

    monitor-enter v0

    .line 243
    :try_start_0
    sget-object v1, Lcom/rockstargames/hal/andHttp;->connections:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rockstargames/hal/andHttp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getHeadersAsString([Lcz/msebera/android/httpclient/Header;)Ljava/lang/String;
    .locals 4

    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Headers:------------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 39
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_0
    const-string p0, "------------"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$cancelConnection$0(I)V
    .locals 3

    .line 166
    invoke-static {p0}, Lcom/rockstargames/hal/andHttp;->getConnection(I)Lcom/rockstargames/hal/andHttp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancelling connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 171
    iput-boolean v1, v0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    .line 173
    iget-object v0, v0, Lcom/rockstargames/hal/andHttp;->presenceConnection:Lcom/rockstargames/hal/PresenceConnection;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/rockstargames/hal/PresenceConnection;->cancel()V

    .line 178
    :cond_0
    invoke-static {p0}, Lcom/rockstargames/hal/andHttp;->removeConnection(I)V

    return-void

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t find connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " to cancel."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static logDataSafe([B)V
    .locals 7

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 193
    :goto_0
    array-length v3, p0

    const-string v4, "    "

    const/16 v5, 0x1000

    if-ge v2, v3, :cond_6

    if-ge v2, v5, :cond_6

    .line 195
    aget-byte v3, p0, v2

    int-to-char v3, v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0xa

    if-ne v3, v5, :cond_1

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_1
    const/16 v5, 0x20

    if-ge v3, v5, :cond_2

    const/16 v5, 0x9

    if-ne v3, v5, :cond_3

    :cond_2
    const/16 v5, 0x7f

    if-lt v3, v5, :cond_4

    .line 206
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 210
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v5, 0x64

    if-le v3, v5, :cond_5

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 222
    array-length v0, p0

    if-le v0, v5, :cond_7

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    ...plus "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    sub-int/2addr p0, v5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " more bytes."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private static processRequest(ILcz/msebera/android/httpclient/client/methods/HttpRequestBase;Z)V
    .locals 1

    .line 248
    new-instance v0, Lcom/rockstargames/hal/andHttp;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/andHttp;-><init>(ILcz/msebera/android/httpclient/client/methods/HttpRequestBase;)V

    .line 250
    invoke-static {p0, v0}, Lcom/rockstargames/hal/andHttp;->addConnection(ILcom/rockstargames/hal/andHttp;)V

    if-eqz p2, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/rockstargames/hal/andHttp;->executeAsync()V

    return-void

    .line 258
    :cond_0
    invoke-virtual {v0}, Lcom/rockstargames/hal/andHttp;->execute()V

    return-void
.end method

.method public static declared-synchronized removeConnection(I)V
    .locals 2

    const-class v0, Lcom/rockstargames/hal/andHttp;

    monitor-enter v0

    .line 238
    :try_start_0
    sget-object v1, Lcom/rockstargames/hal/andHttp;->connections:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method protected doInBackground()Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            "[B>;"
        }
    .end annotation

    const-string v0, "Status line: "

    const/4 v1, 0x0

    .line 393
    :try_start_0
    new-instance v2, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    .line 395
    iget-object v3, p0, Lcom/rockstargames/hal/andHttp;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Presence.asmx/WaitMessage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/16 v3, 0x7530

    .line 397
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 398
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 399
    invoke-static {v2, v4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setStaleCheckingEnabled(Lcz/msebera/android/httpclient/params/HttpParams;Z)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-static {v2, v4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setStaleCheckingEnabled(Lcz/msebera/android/httpclient/params/HttpParams;Z)V

    .line 412
    :goto_0
    new-instance v3, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :try_start_1
    const-string v2, "Executing request..."

    invoke-static {v2}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 416
    iget-object v2, p0, Lcom/rockstargames/hal/andHttp;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;

    invoke-virtual {v3, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 418
    :try_start_2
    const-string v4, "Response obtained."

    invoke-static {v4}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 421
    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_1

    aget-object v7, v0, v6

    .line 423
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 426
    :cond_1
    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 427
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->toByteArray(Lcz/msebera/android/httpclient/HttpEntity;)[B

    move-result-object v0

    goto :goto_2

    :cond_2
    new-array v0, v5, [B

    .line 434
    :goto_2
    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->logDataSafe([B)V

    .line 436
    iget-boolean v4, p0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    if-nez v4, :cond_4

    .line 438
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 444
    :try_start_3
    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 445
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v4

    :cond_4
    if-eqz v2, :cond_5

    .line 444
    :try_start_5
    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 445
    :cond_5
    :try_start_6
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object v1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    .line 416
    :try_start_7
    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    .line 412
    :try_start_9
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    :try_start_a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    .line 449
    const-string v2, "Exception!"

    const-string v3, "HTTP"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    const-string v0, "Unable to connect?"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public execute()V
    .locals 2

    .line 290
    invoke-virtual {p0}, Lcom/rockstargames/hal/andHttp;->onPreExecute()V

    .line 292
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda0;-><init>(Lcom/rockstargames/hal/andHttp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 297
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public executeAsync()V
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/rockstargames/hal/andHttp;->onPreExecute()V

    .line 304
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda8;-><init>(Lcom/rockstargames/hal/andHttp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 376
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getId()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    return v0
.end method

.method synthetic lambda$execute$1$com-rockstargames-hal-andHttp(Landroid/util/Pair;)V
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andHttp;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method

.method synthetic lambda$execute$2$com-rockstargames-hal-andHttp()V
    .locals 3

    .line 294
    invoke-virtual {p0}, Lcom/rockstargames/hal/andHttp;->doInBackground()Landroid/util/Pair;

    move-result-object v0

    .line 296
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda7;-><init>(Lcom/rockstargames/hal/andHttp;Landroid/util/Pair;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$executeAsync$3$com-rockstargames-hal-andHttp(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 334
    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/rockstargames/hal/andHttp;->onReceivedResponse(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$executeAsync$4$com-rockstargames-hal-andHttp(I)V
    .locals 1

    .line 340
    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    invoke-virtual {p0, v0, p1}, Lcom/rockstargames/hal/andHttp;->onError(II)V

    return-void
.end method

.method synthetic lambda$executeAsync$5$com-rockstargames-hal-andHttp([BI)V
    .locals 1

    .line 360
    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/rockstargames/hal/andHttp;->onReceivedData(I[BI)V

    return-void
.end method

.method synthetic lambda$executeAsync$6$com-rockstargames-hal-andHttp()V
    .locals 1

    .line 369
    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andHttp;->onConnectionFinished(I)V

    return-void
.end method

.method synthetic lambda$executeAsync$7$com-rockstargames-hal-andHttp()V
    .locals 2

    .line 374
    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/rockstargames/hal/andHttp;->onError(II)V

    return-void
.end method

.method synthetic lambda$executeAsync$8$com-rockstargames-hal-andHttp()V
    .locals 9

    .line 0
    const-string v0, "Status line: "

    .line 306
    new-instance v1, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    const/16 v2, 0x7530

    .line 308
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 309
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    const/4 v2, 0x1

    .line 310
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setStaleCheckingEnabled(Lcz/msebera/android/httpclient/params/HttpParams;Z)V

    .line 314
    :try_start_0
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 315
    const-string v1, "Executing request..."

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/rockstargames/hal/andHttp;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;

    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    .line 317
    const-string v2, "Response obtained."

    invoke-static {v2}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    .line 328
    invoke-interface {v2}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v3

    .line 329
    invoke-interface {v2}, Lcz/msebera/android/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xc8

    if-lt v3, v5, :cond_4

    const/16 v5, 0x12c

    if-ge v3, v5, :cond_4

    .line 334
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v3, v2, v0}, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda1;-><init>(Lcom/rockstargames/hal/andHttp;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 348
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x800

    .line 353
    new-array v2, v0, [B

    .line 354
    :cond_1
    invoke-virtual {v1, v2, v4, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    if-lez v3, :cond_2

    .line 359
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 360
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v5, v3}, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda3;-><init>(Lcom/rockstargames/hal/andHttp;[BI)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 363
    :cond_2
    iget-boolean v3, p0, Lcom/rockstargames/hal/andHttp;->cancelled:Z

    if-eqz v3, :cond_1

    .line 369
    :cond_3
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda4;-><init>(Lcom/rockstargames/hal/andHttp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 338
    :cond_4
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v3}, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda2;-><init>(Lcom/rockstargames/hal/andHttp;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 373
    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    .line 374
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda5;-><init>(Lcom/rockstargames/hal/andHttp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public native onConnectionFinished(I)V
.end method

.method public native onError(II)V
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            "[B>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 462
    iget p1, p0, Lcom/rockstargames/hal/andHttp;->id:I

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/rockstargames/hal/andHttp;->onError(II)V

    goto/16 :goto_3

    .line 466
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 477
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 484
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v4

    .line 485
    :goto_1
    iget-object v5, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    array-length v5, v5

    if-ge v3, v5, :cond_4

    const/16 v5, 0x400

    if-ge v3, v5, :cond_4

    .line 487
    iget-object v5, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    aget-byte v5, v5, v3

    const/16 v6, 0x20

    if-lt v5, v6, :cond_2

    const/16 v6, 0x80

    if-ge v5, v6, :cond_2

    int-to-char v5, v5

    .line 490
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 494
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_3

    .line 504
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 507
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 513
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 517
    :cond_5
    iget v2, p0, Lcom/rockstargames/hal/andHttp;->id:I

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/rockstargames/hal/andHttp;->onReceivedResponse(IILjava/lang/String;Ljava/lang/String;)V

    .line 518
    iget v0, p0, Lcom/rockstargames/hal/andHttp;->id:I

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [B

    array-length p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/rockstargames/hal/andHttp;->onReceivedData(I[BI)V

    .line 519
    iget p1, p0, Lcom/rockstargames/hal/andHttp;->id:I

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andHttp;->onConnectionFinished(I)V

    .line 522
    :goto_3
    invoke-virtual {p0}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/rockstargames/hal/andHttp;->removeConnection(I)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting HTTP request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rockstargames/hal/andHttp;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/rockstargames/hal/andHttp;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/rockstargames/hal/andHttp;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

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

    .line 285
    iput-object p1, p0, Lcom/rockstargames/hal/andHttp;->presenceConnection:Lcom/rockstargames/hal/PresenceConnection;

    return-void
.end method
