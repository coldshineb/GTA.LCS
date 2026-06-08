.class public Lcom/rockstargames/hal/PresenceConnection;
.super Ljava/lang/Object;
.source "PresenceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final kCONNECTIONTIMEOUT_MS:I = 0x7530

.field private static final kREADTIMEOUT_MS:I = 0x1d4c0


# instance fields
.field client:Lcz/msebera/android/httpclient/client/HttpClient;

.field private connectionCancelled:Z

.field private data:[B

.field private http:Lcom/rockstargames/hal/andHttp;

.field private inputStream:Ljava/io/InputStream;

.field private request:Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andHttp;Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;[B)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->client:Lcz/msebera/android/httpclient/client/HttpClient;

    .line 44
    iput-object p1, p0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    .line 45
    iput-object p2, p0, Lcom/rockstargames/hal/PresenceConnection;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;

    .line 46
    iput-object p3, p0, Lcom/rockstargames/hal/PresenceConnection;->data:[B

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lcom/rockstargames/hal/PresenceConnection;->connectionCancelled:Z

    .line 49
    invoke-virtual {p1, p0}, Lcom/rockstargames/hal/andHttp;->setPresenceConnection(Lcom/rockstargames/hal/PresenceConnection;)V

    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    return-object p0
.end method

.method private createPresenceHttpClient()Lcz/msebera/android/httpclient/client/HttpClient;
    .locals 6

    .line 66
    new-instance v0, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x7530

    .line 67
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    const v1, 0x1d4c0

    .line 68
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 70
    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;-><init>()V

    .line 71
    new-instance v2, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    invoke-static {}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    const-string v5, "http"

    invoke-direct {v2, v5, v3, v4}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 72
    new-instance v2, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    const-string v5, "https"

    invoke-direct {v2, v5, v3, v4}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 74
    new-instance v2, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 75
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v1
.end method

.method private executePostRequest(Lcz/msebera/android/httpclient/client/methods/HttpPost;)Ljava/io/InputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->client:Lcz/msebera/android/httpclient/client/HttpClient;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/client/HttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    .line 82
    const-string v0, "Received response from Presence server"

    invoke-direct {p0, v0}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    .line 85
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    .line 86
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    .line 91
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 92
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

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/rockstargames/hal/PresenceConnection$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/rockstargames/hal/PresenceConnection$1;-><init>(Lcom/rockstargames/hal/PresenceConnection;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_2

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Response was not 200-OK: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    if-lt v0, v2, :cond_1

    const/16 v2, 0x12c

    if-ge v0, v2, :cond_1

    goto :goto_1

    .line 118
    :cond_1
    new-instance p1, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Presense System Connection Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private pLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private readStreamUntilItErrorsOut(Ljava/io/BufferedReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 136
    invoke-direct {p0, v0}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/rockstargames/hal/PresenceConnection$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/rockstargames/hal/PresenceConnection$2;-><init>(Lcom/rockstargames/hal/PresenceConnection;[BI)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 54
    const-string v0, "Cancel requested"

    invoke-direct {p0, v0}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/rockstargames/hal/PresenceConnection;->connectionCancelled:Z

    .line 57
    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->client:Lcz/msebera/android/httpclient/client/HttpClient;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/HttpClient;->getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 159
    const-string v0, "Connecting presence system..."

    invoke-direct {p0, v0}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/rockstargames/hal/PresenceConnection;->createPresenceHttpClient()Lcz/msebera/android/httpclient/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->client:Lcz/msebera/android/httpclient/client/HttpClient;

    .line 164
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    iget-object v1, p0, Lcom/rockstargames/hal/PresenceConnection;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 167
    iget-object v1, p0, Lcom/rockstargames/hal/PresenceConnection;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 168
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcz/msebera/android/httpclient/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/rockstargames/hal/PresenceConnection;->data:[B

    if-eqz v1, :cond_1

    .line 172
    new-instance v1, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;

    iget-object v2, p0, Lcom/rockstargames/hal/PresenceConnection;->data:[B

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpPost;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 175
    :cond_1
    invoke-direct {p0, v0}, Lcom/rockstargames/hal/PresenceConnection;->executePostRequest(Lcz/msebera/android/httpclient/client/methods/HttpPost;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 179
    const-string v1, "Error connecting to presense system"

    invoke-direct {p0, v1}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/rockstargames/hal/PresenceConnection$3;

    invoke-direct {v2, p0}, Lcom/rockstargames/hal/PresenceConnection$3;-><init>(Lcom/rockstargames/hal/PresenceConnection;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    :goto_1
    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 193
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x1

    .line 195
    :try_start_1
    invoke-direct {p0, v0}, Lcom/rockstargames/hal/PresenceConnection;->readStreamUntilItErrorsOut(Ljava/io/BufferedReader;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 212
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/rockstargames/hal/PresenceConnection$4;

    invoke-direct {v4, p0}, Lcom/rockstargames/hal/PresenceConnection$4;-><init>(Lcom/rockstargames/hal/PresenceConnection;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    iget-boolean v3, p0, Lcom/rockstargames/hal/PresenceConnection;->connectionCancelled:Z

    if-eq v3, v1, :cond_2

    .line 219
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v2

    .line 206
    iget-boolean v3, p0, Lcom/rockstargames/hal/PresenceConnection;->connectionCancelled:Z

    if-eq v3, v1, :cond_2

    .line 208
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v2

    .line 199
    iget-boolean v3, p0, Lcom/rockstargames/hal/PresenceConnection;->connectionCancelled:Z

    if-eq v3, v1, :cond_2

    .line 201
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 224
    :cond_2
    :goto_2
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/rockstargames/hal/PresenceConnection$5;

    invoke-direct {v2, p0}, Lcom/rockstargames/hal/PresenceConnection$5;-><init>(Lcom/rockstargames/hal/PresenceConnection;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 231
    :goto_3
    const-string v1, "Closing Presense connection"

    invoke-direct {p0, v1}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    .line 233
    :try_start_2
    iget-object v1, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 234
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 235
    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->removeConnection(I)V

    return-void
.end method
