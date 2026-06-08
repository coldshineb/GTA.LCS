.class public Lrockstarmobile/utilities/HttpAPI$RequestTask;
.super Landroid/os/AsyncTask;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/utilities/HttpAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static responseError:Ljava/lang/String;


# instance fields
.field public allowUpdateMobileToken:Z

.field public c:Lrockstarmobile/utilities/HttpAPI$Constructor;

.field public errorCallback:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

.field public headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jsonInput:Ljava/lang/String;

.field public method:Ljava/lang/String;

.field private resultError:Lrockstarmobile/utilities/HttpAPI$Error;

.field private resultString:Ljava/lang/String;

.field public successCallback:Lrockstarmobile/utilities/HttpAPI$SuccessCallback;

.field public timeoutInSeconds:I

.field public url:Ljava/net/URL;

.field public xmlResponse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCAPI_REQUEST_ERROR"

    const-string v2, "Could not complete request, try again later"

    invoke-static {v1, v2, v0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->responseError:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lrockstarmobile/utilities/HttpAPI$RequestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 24

    move-object/from16 v1, p0

    const-string v2, "Could not connect to Rockstar Mobile servers. Are you online?"

    const-string v3, "Unexpected error"

    const-string v4, "error"

    .line 2
    invoke-static {}, Lrockstarmobile/utilities/HttpAPI;->access$000()Lrockstarmobile/utilities/Log;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "calling api:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object v0, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 13
    :try_start_1
    iget-object v6, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->method:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 14
    const-string v6, "User-Agent"

    sget-object v7, Lrockstarmobile/utilities/HttpAPI;->UserAgent:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_7

    .line 20
    iget-object v3, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->headers:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 23
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v6, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_0
    iget v3, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->timeoutInSeconds:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 28
    iget v3, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->timeoutInSeconds:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 29
    iget-object v3, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->jsonInput:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 30
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 35
    :cond_1
    :try_start_2
    iget-object v3, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->jsonInput:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 36
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 37
    iget-object v4, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->jsonInput:Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 38
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 41
    :cond_2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 46
    :try_start_3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 48
    :catch_0
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 52
    :goto_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 56
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultString:Ljava/lang/String;

    .line 60
    iget-boolean v0, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->allowUpdateMobileToken:Z

    if-eqz v0, :cond_4

    .line 61
    const-string v0, "X-MOBILE-TOKEN"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 63
    invoke-static {}, Lrockstarmobile/GCState;->user()Lrockstarmobile/RockstarUser;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 65
    new-instance v6, Lrockstarmobile/RockstarUser;

    iget-object v7, v3, Lrockstarmobile/RockstarUser;->scAuthToken:Ljava/lang/String;

    iget-object v8, v3, Lrockstarmobile/RockstarUser;->scAuthTokenExpires:Ljava/util/Date;

    iget-object v9, v3, Lrockstarmobile/RockstarUser;->scAuthTokenRefreshed:Ljava/util/Date;

    iget-object v10, v3, Lrockstarmobile/RockstarUser;->scServicesTicket:Ljava/lang/String;

    iget-object v11, v3, Lrockstarmobile/RockstarUser;->scServicesTicketExpires:Ljava/util/Date;

    iget-object v12, v3, Lrockstarmobile/RockstarUser;->scServicesTicketRefreshed:Ljava/util/Date;

    const/4 v4, 0x0

    .line 72
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    iget-object v15, v3, Lrockstarmobile/RockstarUser;->email:Ljava/lang/String;

    iget-object v0, v3, Lrockstarmobile/RockstarUser;->rockstarId:Ljava/lang/String;

    iget-object v4, v3, Lrockstarmobile/RockstarUser;->rememberedMachineToken:Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/16 p1, 0x0

    :try_start_5
    iget-object v5, v3, Lrockstarmobile/RockstarUser;->fingerprint:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v3, Lrockstarmobile/RockstarUser;->acceptedAllPolicies:Lrockstarmobile/RockstarUser$POLICY_STATE;

    move-object/from16 v19, v0

    iget-object v0, v3, Lrockstarmobile/RockstarUser;->acceptedAllPoliciesRefreshed:Ljava/util/Date;

    move-object/from16 v20, v0

    iget-object v0, v3, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    move-object/from16 v21, v0

    iget-object v0, v3, Lrockstarmobile/RockstarUser;->subscriptionStateRefreshed:Ljava/util/Date;

    iget-object v3, v3, Lrockstarmobile/RockstarUser;->scAuthAccessToken:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v6 .. v23}, Lrockstarmobile/RockstarUser;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/RockstarUser$POLICY_STATE;Ljava/util/Date;Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;Ljava/util/Date;Ljava/lang/String;)V

    .line 73
    invoke-static {v6}, Lrockstarmobile/GCState;->setUser(Lrockstarmobile/RockstarUser;)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_4
    const/16 p1, 0x0

    :goto_3
    return-object p1

    :catch_4
    move-exception v0

    const/16 p1, 0x0

    .line 102
    :goto_4
    new-instance v2, Lrockstarmobile/utilities/HttpAPI$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http-error"

    const-string v4, "Unexpected request error"

    invoke-direct {v2, v3, v4, v0}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultError:Lrockstarmobile/utilities/HttpAPI$Error;

    return-object p1

    :catch_5
    move-exception v0

    const/16 p1, 0x0

    .line 103
    :goto_5
    new-instance v3, Lrockstarmobile/utilities/HttpAPI$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "sslerror"

    invoke-direct {v3, v4, v2, v0}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultError:Lrockstarmobile/utilities/HttpAPI$Error;

    return-object p1

    :catch_6
    move-exception v0

    const/16 p1, 0x0

    .line 104
    :goto_6
    new-instance v3, Lrockstarmobile/utilities/HttpAPI$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "offline"

    invoke-direct {v3, v4, v2, v0}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultError:Lrockstarmobile/utilities/HttpAPI$Error;

    return-object p1

    :catch_7
    move-exception v0

    const/16 p1, 0x0

    .line 105
    new-instance v2, Lrockstarmobile/utilities/HttpAPI$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v3, v0}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultError:Lrockstarmobile/utilities/HttpAPI$Error;

    return-object p1

    :catch_8
    move-exception v0

    const/16 p1, 0x0

    .line 106
    new-instance v2, Lrockstarmobile/utilities/HttpAPI$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v3, v0}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultError:Lrockstarmobile/utilities/HttpAPI$Error;

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lrockstarmobile/utilities/HttpAPI$RequestTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .line 2
    iget-object p1, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultError:Lrockstarmobile/utilities/HttpAPI$Error;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->errorCallback:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    invoke-interface {v0, p1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void

    .line 5
    :cond_0
    iget-boolean p1, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->xmlResponse:Z

    if-nez p1, :cond_2

    .line 8
    :try_start_0
    new-instance p1, Lrockstarmobile/utilities/HttpAPI$Error;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Lorg/json/JSONObject;)V

    .line 9
    iget-object v0, p1, Lrockstarmobile/utilities/HttpAPI$Error;->code:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eq v0, v1, :cond_1

    :try_start_1
    iget-object v0, p1, Lrockstarmobile/utilities/HttpAPI$Error;->message:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->errorCallback:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    invoke-interface {v0, p1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 15
    :catch_0
    :cond_1
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->c:Lrockstarmobile/utilities/HttpAPI$Constructor;

    invoke-interface {v0, p1}, Lrockstarmobile/utilities/HttpAPI$Constructor;->make(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->successCallback:Lrockstarmobile/utilities/HttpAPI$SuccessCallback;

    invoke-interface {v0, p1}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 20
    :catch_1
    :try_start_3
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->errorCallback:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    new-instance v1, Lrockstarmobile/utilities/HttpAPI$Error;

    invoke-direct {v1, p1}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 23
    :catch_2
    iget-object p1, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->errorCallback:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    new-instance v0, Lrockstarmobile/utilities/HttpAPI$Error;

    sget-object v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->responseError:Ljava/lang/String;

    iget-object v2, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultString:Ljava/lang/String;

    const-string v3, "garbled-response"

    invoke-direct {v0, v3, v1, v2}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    :goto_0
    return-void

    .line 27
    :cond_2
    iget-object p1, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultString:Ljava/lang/String;

    invoke-static {p1}, Lrockstarmobile/utilities/SimpleXMLDoc;->parse(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 29
    const-string v0, "Response.Error@Code"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 31
    iget-object v0, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->successCallback:Lrockstarmobile/utilities/HttpAPI$SuccessCallback;

    invoke-interface {v0, p1}, Lrockstarmobile/utilities/HttpAPI$SuccessCallback;->success(Ljava/lang/Object;)V

    return-void

    .line 33
    :cond_3
    iget-object v1, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->errorCallback:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    new-instance v2, Lrockstarmobile/utilities/HttpAPI$Error;

    const-string v3, "Response.Error.Msg"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v3, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultString:Ljava/lang/String;

    invoke-direct {v2, v0, p1, v3}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void

    .line 36
    :cond_4
    iget-object p1, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->errorCallback:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    new-instance v0, Lrockstarmobile/utilities/HttpAPI$Error;

    sget-object v1, Lrockstarmobile/utilities/HttpAPI$RequestTask;->responseError:Ljava/lang/String;

    iget-object v2, p0, Lrockstarmobile/utilities/HttpAPI$RequestTask;->resultString:Ljava/lang/String;

    const-string v3, "request-error"

    invoke-direct {v0, v3, v1, v2}, Lrockstarmobile/utilities/HttpAPI$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lrockstarmobile/utilities/HttpAPI$ErrorCallback;->error(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void
.end method
