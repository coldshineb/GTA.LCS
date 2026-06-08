.class public Lcom/rockstargames/hal/PresenceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final kCONNECTIONTIMEOUT_MS:I = 0x7530

.field private static final kREADTIMEOUT_MS:I = 0x1d4c0


# instance fields
.field client:Lorg/apache/http/client/HttpClient;

.field private connectionCancelled:Z

.field private data:[B

.field private http:Lcom/rockstargames/hal/andHttp;

.field private inputStream:Ljava/io/InputStream;

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andHttp;Lorg/apache/http/client/methods/HttpRequestBase;[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/rockstargames/hal/PresenceConnection;->connectionCancelled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->client:Lorg/apache/http/client/HttpClient;

    iput-object p1, p0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    iput-object p2, p0, Lcom/rockstargames/hal/PresenceConnection;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p3, p0, Lcom/rockstargames/hal/PresenceConnection;->data:[B

    iput-boolean v1, p0, Lcom/rockstargames/hal/PresenceConnection;->connectionCancelled:Z

    invoke-virtual {p1, p0}, Lcom/rockstargames/hal/andHttp;->setPresenceConnection(Lcom/rockstargames/hal/PresenceConnection;)V

    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    return-object v0
.end method

.method private createPresenceHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 6

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v1, 0x1d4c0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method private executePostRequest(Lorg/apache/http/client/methods/HttpPost;)Ljava/io/InputStream;
    .locals 12

    const/16 v11, 0xc8

    const/16 v10, 0xa

    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    const-string v0, "Received response from Presence server"

    invoke-direct {p0, v0}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v5, Lcom/rockstargames/hal/f;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/rockstargames/hal/f;-><init>(Lcom/rockstargames/hal/PresenceConnection;ILjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eq v2, v11, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Response was not 200-OK: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    if-lt v2, v11, :cond_1

    const/16 v0, 0x12c

    if-lt v2, v0, :cond_2

    :cond_1
    new-instance v0, Lorg/apache/http/client/ClientProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Presense System Connection Error: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private pLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private readStreamUntilItErrorsOut(Ljava/io/BufferedReader;)V
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/rockstargames/hal/g;

    invoke-direct {v3, p0, v1, v2}, Lcom/rockstargames/hal/g;-><init>(Lcom/rockstargames/hal/PresenceConnection;[BI)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const-string v0, "Cancel requested"

    invoke-direct {p0, v0}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/PresenceConnection;->connectionCancelled:Z

    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    const/4 v6, 0x1

    const-string v0, "Connecting presence system..."

    invoke-direct {p0, v0}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/rockstargames/hal/PresenceConnection;->createPresenceHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->client:Lorg/apache/http/client/HttpClient;

    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->data:[B

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v2, p0, Lcom/rockstargames/hal/PresenceConnection;->data:[B

    invoke-direct {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/rockstargames/hal/PresenceConnection;->executePostRequest(Lorg/apache/http/client/methods/HttpPost;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_1
    invoke-direct {p0, v0}, Lcom/rockstargames/hal/PresenceConnection;->readStreamUntilItErrorsOut(Ljava/io/BufferedReader;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_2
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/rockstargames/hal/j;

    invoke-direct {v2, p0}, Lcom/rockstargames/hal/j;-><init>(Lcom/rockstargames/hal/PresenceConnection;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const-string v1, "Closing Presense connection"

    invoke-direct {p0, v1}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    :try_start_2
    iget-object v1, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection;->http:Lcom/rockstargames/hal/andHttp;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/rockstargames/hal/andHttp;->removeConnection(I)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error connecting to presense system"

    invoke-direct {p0, v1}, Lcom/rockstargames/hal/PresenceConnection;->pLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/rockstargames/hal/h;

    invoke-direct {v2, p0}, Lcom/rockstargames/hal/h;-><init>(Lcom/rockstargames/hal/PresenceConnection;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    iget-boolean v2, p0, Lcom/rockstargames/hal/PresenceConnection;->connectionCancelled:Z

    if-eq v2, v6, :cond_2

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    iget-boolean v2, p0, Lcom/rockstargames/hal/PresenceConnection;->connectionCancelled:Z

    if-eq v2, v6, :cond_2

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/rockstargames/hal/i;

    invoke-direct {v3, p0}, Lcom/rockstargames/hal/i;-><init>(Lcom/rockstargames/hal/PresenceConnection;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lcom/rockstargames/hal/PresenceConnection;->connectionCancelled:Z

    if-eq v2, v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
