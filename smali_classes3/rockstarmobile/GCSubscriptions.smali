.class public Lrockstarmobile/GCSubscriptions;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/GCSubscriptions$PurchaseCallback;,
        Lrockstarmobile/GCSubscriptions$ProductsCallback;,
        Lrockstarmobile/GCSubscriptions$CheckProduct;,
        Lrockstarmobile/GCSubscriptions$g;
    }
.end annotation


# static fields
.field private static final log:Lrockstarmobile/utilities/Log;

.field private static final syncLock:Ljava/lang/Object;


# instance fields
.field private awaitingClient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lrockstarmobile/GCSubscriptions$g;",
            ">;"
        }
    .end annotation
.end field

.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private buyActivity:Landroid/app/Activity;

.field private currentPurchase:Lrockstarmobile/GCSubscriptions$PurchaseCallback;

.field private currentPurchaseArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private products:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "Subscriptions"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lrockstarmobile/GCSubscriptions;->log:Lrockstarmobile/utilities/Log;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrockstarmobile/GCSubscriptions;->syncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lrockstarmobile/GCSubscriptions;->awaitingClient:Ljava/util/ArrayList;

    .line 3
    iput-object v0, p0, Lrockstarmobile/GCSubscriptions;->products:Ljava/util/HashMap;

    .line 5
    iput-object v0, p0, Lrockstarmobile/GCSubscriptions;->currentPurchase:Lrockstarmobile/GCSubscriptions$PurchaseCallback;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCSubscriptions;->packageName:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/GCSubscriptions;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 15
    new-instance p1, Lrockstarmobile/GCSubscriptions$a;

    invoke-direct {p1, p0}, Lrockstarmobile/GCSubscriptions$a;-><init>(Lrockstarmobile/GCSubscriptions;)V

    invoke-virtual {p0, p1}, Lrockstarmobile/GCSubscriptions;->getProducts(Lrockstarmobile/GCSubscriptions$ProductsCallback;)V

    return-void
.end method

.method static synthetic access$000(Lrockstarmobile/GCSubscriptions;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lrockstarmobile/GCSubscriptions;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static synthetic access$100()Lrockstarmobile/utilities/Log;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCSubscriptions;->log:Lrockstarmobile/utilities/Log;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCSubscriptions;->syncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lrockstarmobile/GCSubscriptions;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lrockstarmobile/GCSubscriptions;->awaitingClient:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lrockstarmobile/GCSubscriptions;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/GCSubscriptions;->awaitingClient:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lrockstarmobile/GCSubscriptions;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrockstarmobile/GCSubscriptions;->connect(I)V

    return-void
.end method

.method static synthetic access$500(Lrockstarmobile/GCSubscriptions;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrockstarmobile/GCSubscriptions;->getErrorCode(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lrockstarmobile/GCSubscriptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lrockstarmobile/GCSubscriptions;->endCurrentPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lrockstarmobile/GCSubscriptions;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lrockstarmobile/GCSubscriptions;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lrockstarmobile/GCSubscriptions;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lrockstarmobile/GCSubscriptions;->products:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$802(Lrockstarmobile/GCSubscriptions;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/GCSubscriptions;->products:Ljava/util/HashMap;

    return-object p1
.end method

.method private buildPurchaseArgsFromSKU(Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/ProductDetails;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    const-string v1, "Product SKU"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 6
    const-string p1, "ProductID"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    const-string p1, "Product Title"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    const-string p1, "Product Type"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    const-string p1, "Product Description"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    const-string p1, "Product Offer Details"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    const-string p2, "Unknown SKU"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p3, :cond_1

    .line 22
    const-string p1, "Subscription Referral Element"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private callAndClearCurrentPurchaseCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions;->currentPurchase:Lrockstarmobile/GCSubscriptions$PurchaseCallback;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0}, Lrockstarmobile/GCSubscriptions$PurchaseCallback;->onSuccess()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lrockstarmobile/GCSubscriptions;->currentPurchaseArgs:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_1
    const-string v1, "Error Code"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    const-string v1, "Error Reason"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "IAP Purchase Failed"

    invoke-virtual {v1, v2, v0}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    .line 16
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions;->currentPurchase:Lrockstarmobile/GCSubscriptions$PurchaseCallback;

    invoke-interface {v0, p1, p2, p3}, Lrockstarmobile/GCSubscriptions$PurchaseCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lrockstarmobile/GCSubscriptions;->currentPurchaseArgs:Ljava/util/ArrayList;

    .line 19
    iput-object p1, p0, Lrockstarmobile/GCSubscriptions;->currentPurchase:Lrockstarmobile/GCSubscriptions$PurchaseCallback;

    .line 20
    iput-object p1, p0, Lrockstarmobile/GCSubscriptions;->buyActivity:Landroid/app/Activity;

    :cond_2
    return-void
.end method

.method private callAndClearCurrentPurchaseCallbackOnUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions;->buyActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lrockstarmobile/GCSubscriptions$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lrockstarmobile/GCSubscriptions$$ExternalSyntheticLambda1;-><init>(Lrockstarmobile/GCSubscriptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lrockstarmobile/GCSubscriptions;->callAndClearCurrentPurchaseCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private connect(I)V
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCSubscriptions;->log:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connecting to billing service with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retries left."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lrockstarmobile/GCSubscriptions$b;

    invoke-direct {v1, p0, p1}, Lrockstarmobile/GCSubscriptions$b;-><init>(Lrockstarmobile/GCSubscriptions;I)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method private endCurrentPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lrockstarmobile/GCSubscriptions;->callAndClearCurrentPurchaseCallbackOnUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getConnectedClient(Lrockstarmobile/GCSubscriptions$g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrockstarmobile/GCSubscriptions;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-interface {p1, v0}, Lrockstarmobile/GCSubscriptions$g;->a(Lcom/android/billingclient/api/BillingClient;)V

    return-void

    .line 6
    :cond_0
    sget-object v0, Lrockstarmobile/GCSubscriptions;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lrockstarmobile/GCSubscriptions;->awaitingClient:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 8
    invoke-direct {p0, v1}, Lrockstarmobile/GCSubscriptions;->connect(I)V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrockstarmobile/GCSubscriptions;->awaitingClient:Ljava/util/ArrayList;

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    iget-object v1, p0, Lrockstarmobile/GCSubscriptions;->awaitingClient:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getErrorCode(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_CODE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_0
    const-string p1, "ITEM_NOT_OWNED"

    return-object p1

    .line 29
    :pswitch_1
    const-string p1, "ITEM_ALREADY_OWNED"

    return-object p1

    .line 30
    :pswitch_2
    const-string p1, "ERROR"

    return-object p1

    .line 31
    :pswitch_3
    const-string p1, "DEVELOPER_ERROR"

    return-object p1

    .line 41
    :pswitch_4
    const-string p1, "ITEM_UNAVAILABLE"

    return-object p1

    .line 42
    :pswitch_5
    const-string p1, "BILLING_UNAVAILABLE"

    return-object p1

    .line 62
    :pswitch_6
    const-string p1, "SERVICE_UNAVAILABLE"

    return-object p1

    .line 64
    :pswitch_7
    const-string p1, "USER_CANCELED"

    return-object p1

    .line 65
    :pswitch_8
    const-string p1, "OK"

    return-object p1

    .line 67
    :pswitch_9
    const-string p1, "SERVICE_DISCONNECTED"

    return-object p1

    .line 68
    :pswitch_a
    const-string p1, "FEATURE_NOT_SUPPORTED"

    return-object p1

    .line 80
    :pswitch_b
    const-string p1, "SERVICE_TIMEOUT"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getHumanError(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to complete purchase ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    const-string p1, "Sorry, the feature is not supported on this device."

    return-object p1

    .line 19
    :cond_1
    const-string p1, "Temporarily disconnected from Google Play, try again later."

    return-object p1

    .line 20
    :cond_2
    const-string p1, "It seems you\'ve already bought this item."

    return-object p1

    .line 21
    :cond_3
    const-string p1, "Google Play billing is unavailable."

    return-object p1
.end method

.method static synthetic lambda$getFullGameProduct$0(Lcom/android/billingclient/api/ProductDetails;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".fullgame"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public buy(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Lrockstarmobile/GCSubscriptions$PurchaseCallback;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "The current purchase was aborted"

    const-string v1, "The purchase was aborted"

    const-string v2, "ABORTED"

    invoke-direct {p0, v2, v0, v1}, Lrockstarmobile/GCSubscriptions;->endCurrentPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lrockstarmobile/GCSubscriptions;->currentPurchase:Lrockstarmobile/GCSubscriptions$PurchaseCallback;

    .line 3
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p4}, Lrockstarmobile/GCSubscriptions;->buildPurchaseArgsFromSKU(Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p4

    iput-object p4, p0, Lrockstarmobile/GCSubscriptions;->currentPurchaseArgs:Ljava/util/ArrayList;

    .line 4
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object p4

    iget-object v0, p0, Lrockstarmobile/GCSubscriptions;->currentPurchaseArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "IAP Purchase Attempt"

    invoke-virtual {p4, v1, v0}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    .line 5
    invoke-interface {p3}, Lrockstarmobile/GCSubscriptions$PurchaseCallback;->onStart()V

    .line 7
    iput-object p1, p0, Lrockstarmobile/GCSubscriptions;->buyActivity:Landroid/app/Activity;

    .line 9
    new-instance p3, Lrockstarmobile/GCSubscriptions$d;

    invoke-direct {p3, p0, p2, p1}, Lrockstarmobile/GCSubscriptions$d;-><init>(Lrockstarmobile/GCSubscriptions;Lcom/android/billingclient/api/ProductDetails;Landroid/app/Activity;)V

    invoke-direct {p0, p3}, Lrockstarmobile/GCSubscriptions;->getConnectedClient(Lrockstarmobile/GCSubscriptions$g;)V

    return-void
.end method

.method public checkForNewPurchases(ZLrockstarmobile/Rockstar$Callback;)V
    .locals 0

    const/4 p1, 0x1

    invoke-static {p1}, Lrockstarmobile/GCState;->setIsGameOwner(Z)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lrockstarmobile/Rockstar$Callback;->callback()V

    :cond_0
    return-void
.end method

.method public filter(Ljava/util/HashMap;Lrockstarmobile/GCSubscriptions$CheckProduct;Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/ProductDetails;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;",
            "Lrockstarmobile/GCSubscriptions$CheckProduct;",
            "Lcom/android/billingclient/api/ProductDetails;",
            ")",
            "Lcom/android/billingclient/api/ProductDetails;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    .line 2
    invoke-interface {p2, v0}, Lrockstarmobile/GCSubscriptions$CheckProduct;->checkProduct(Lcom/android/billingclient/api/ProductDetails;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    move-exception p1

    .line 8
    sget-object p2, Lrockstarmobile/GCSubscriptions;->log:Lrockstarmobile/utilities/Log;

    const-string p3, "error iterating over skus"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object p3
.end method

.method public getFullGameProduct()Lcom/android/billingclient/api/ProductDetails;
    .locals 3

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions;->products:Ljava/util/HashMap;

    new-instance v1, Lrockstarmobile/GCSubscriptions$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lrockstarmobile/GCSubscriptions$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lrockstarmobile/GCSubscriptions;->filter(Ljava/util/HashMap;Lrockstarmobile/GCSubscriptions$CheckProduct;Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    return-object v0
.end method

.method public getProducts(Lrockstarmobile/GCSubscriptions$ProductsCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions;->products:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lrockstarmobile/GCSubscriptions$ProductsCallback;->onProducts(Ljava/util/HashMap;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lrockstarmobile/GCSubscriptions$f;

    invoke-direct {v0, p0, p1}, Lrockstarmobile/GCSubscriptions$f;-><init>(Lrockstarmobile/GCSubscriptions;Lrockstarmobile/GCSubscriptions$ProductsCallback;)V

    invoke-direct {p0, v0}, Lrockstarmobile/GCSubscriptions;->getConnectedClient(Lrockstarmobile/GCSubscriptions$g;)V

    return-void
.end method

.method public isSubscriptionsSupported()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$callAndClearCurrentPurchaseCallbackOnUI$2$rockstarmobile-GCSubscriptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lrockstarmobile/GCSubscriptions;->callAndClearCurrentPurchaseCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onPurchasesUpdated$1$rockstarmobile-GCSubscriptions(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->isGameOwner()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p1, p1}, Lrockstarmobile/GCSubscriptions;->callAndClearCurrentPurchaseCallbackOnUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lrockstarmobile/GCSubscriptions;->getErrorCode(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lrockstarmobile/GCSubscriptions;->getHumanError(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lrockstarmobile/GCSubscriptions;->endCurrentPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lrockstarmobile/GCSubscriptions;->log:Lrockstarmobile/utilities/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase updated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    new-instance p2, Lrockstarmobile/GCSubscriptions$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lrockstarmobile/GCSubscriptions$$ExternalSyntheticLambda2;-><init>(Lrockstarmobile/GCSubscriptions;Lcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {p0, v2, p2}, Lrockstarmobile/GCSubscriptions;->checkForNewPurchases(ZLrockstarmobile/Rockstar$Callback;)V

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_a

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 13
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 14
    invoke-virtual {p0}, Lrockstarmobile/GCSubscriptions;->getFullGameProduct()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 17
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 18
    invoke-static {v2}, Lrockstarmobile/GCState;->setIsGameOwner(Z)V

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v1

    if-nez v1, :cond_3

    .line 25
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v1

    .line 26
    iget-object v3, p0, Lrockstarmobile/GCSubscriptions;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v4, Lrockstarmobile/GCSubscriptions$e;

    invoke-direct {v4, p0}, Lrockstarmobile/GCSubscriptions$e;-><init>(Lrockstarmobile/GCSubscriptions;)V

    invoke-virtual {v3, v1, v4}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 35
    :cond_3
    iget-object v1, p0, Lrockstarmobile/GCSubscriptions;->currentPurchaseArgs:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 38
    :cond_4
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lrockstarmobile/GCSubscriptions;->products:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    goto :goto_3

    :cond_6
    :goto_2
    move-object v1, v3

    .line 40
    :goto_3
    const-string v4, "(No purchase?)"

    invoke-direct {p0, v0, v1, v4}, Lrockstarmobile/GCSubscriptions;->buildPurchaseArgsFromSKU(Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 42
    :goto_4
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object v1

    const-string v4, "IAP Purchased"

    invoke-virtual {v1, v4, v0}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    .line 45
    invoke-static {}, Lrockstarmobile/GCState;->isGameOwner()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46
    invoke-direct {p0, v3, v3, v3}, Lrockstarmobile/GCSubscriptions;->callAndClearCurrentPurchaseCallbackOnUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_7
    invoke-direct {p0, p1}, Lrockstarmobile/GCSubscriptions;->getErrorCode(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lrockstarmobile/GCSubscriptions;->getHumanError(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lrockstarmobile/GCSubscriptions;->endCurrentPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50
    :cond_8
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    goto/16 :goto_0

    :cond_9
    return-void

    .line 60
    :cond_a
    invoke-direct {p0, p1}, Lrockstarmobile/GCSubscriptions;->getErrorCode(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lrockstarmobile/GCSubscriptions;->getHumanError(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lrockstarmobile/GCSubscriptions;->endCurrentPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
