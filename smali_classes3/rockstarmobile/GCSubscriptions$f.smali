.class Lrockstarmobile/GCSubscriptions$f;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Lrockstarmobile/GCSubscriptions$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/GCSubscriptions;->getProducts(Lrockstarmobile/GCSubscriptions$ProductsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrockstarmobile/GCSubscriptions$ProductsCallback;

.field final synthetic b:Lrockstarmobile/GCSubscriptions;


# direct methods
.method public static synthetic $r8$lambda$3UEqf1NfjISYR5Yh31l_a53n8sY(Lrockstarmobile/GCSubscriptions$f;Lrockstarmobile/GCSubscriptions$ProductsCallback;Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lrockstarmobile/GCSubscriptions$f;->a(Lrockstarmobile/GCSubscriptions$ProductsCallback;Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lrockstarmobile/GCSubscriptions;Lrockstarmobile/GCSubscriptions$ProductsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/GCSubscriptions$f;->b:Lrockstarmobile/GCSubscriptions;

    iput-object p2, p0, Lrockstarmobile/GCSubscriptions$f;->a:Lrockstarmobile/GCSubscriptions$ProductsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lrockstarmobile/GCSubscriptions$ProductsCallback;Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6

    .line 25
    invoke-static {}, Lrockstarmobile/GCSubscriptions;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAP: Response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lrockstarmobile/GCSubscriptions$f;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {v2, p3}, Lrockstarmobile/GCSubscriptions;->access$500(Lrockstarmobile/GCSubscriptions;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p4, :cond_0

    const-string v2, "NULL"

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subscription SKU details"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 27
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    .line 28
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 29
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    .line 30
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 32
    :cond_1
    iget-object p3, p0, Lrockstarmobile/GCSubscriptions$f;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {p3, p2}, Lrockstarmobile/GCSubscriptions;->access$802(Lrockstarmobile/GCSubscriptions;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 33
    iget-object p2, p0, Lrockstarmobile/GCSubscriptions$f;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {p2}, Lrockstarmobile/GCSubscriptions;->access$800(Lrockstarmobile/GCSubscriptions;)Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lrockstarmobile/GCSubscriptions$ProductsCallback;->onProducts(Ljava/util/HashMap;)V

    return-void

    .line 35
    :cond_2
    iget-object p4, p0, Lrockstarmobile/GCSubscriptions$f;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {p4, p3}, Lrockstarmobile/GCSubscriptions;->access$500(Lrockstarmobile/GCSubscriptions;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network error. Are you offline?"

    invoke-interface {p1, p4, v0, v1}, Lrockstarmobile/GCSubscriptions$ProductsCallback;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "Error Reason"

    const-string v4, "Products"

    const-string v0, "Error Code"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "IAP Products Failed"

    invoke-virtual {p1, p3, p2}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingClient;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lrockstarmobile/GCSubscriptions$f;->b:Lrockstarmobile/GCSubscriptions;

    invoke-virtual {p1}, Lrockstarmobile/GCSubscriptions;->isSubscriptionsSupported()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lrockstarmobile/GCSubscriptions;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object p1

    const-string v1, "Subscriptions are disabled / not supported on this device."

    invoke-virtual {p1, v1, v0}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    .line 3
    invoke-static {}, Lrockstarmobile/Rockstar;->events()Lrockstarmobile/eventlog/GCEventLog;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IAP Payments Disabled"

    invoke-virtual {p1, v1, v0}, Lrockstarmobile/eventlog/GCEventLog;->track(Ljava/lang/String;[Ljava/lang/Object;)J

    .line 4
    iget-object p1, p0, Lrockstarmobile/GCSubscriptions$f;->a:Lrockstarmobile/GCSubscriptions$ProductsCallback;

    const-string v0, "Unable to make subscription payments on this device"

    const-string v1, "Subscriptions not enabled."

    const-string v2, "SUBSCRIPTIONS_NOT_ENABLED"

    invoke-interface {p1, v2, v0, v1}, Lrockstarmobile/GCSubscriptions$ProductsCallback;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    sget-object v1, Lrockstarmobile/GCConfig;->C:Lrockstarmobile/GCConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig;->googleplay:Lrockstarmobile/GCConfig$GooglePlayConfig;

    iget-object v1, v1, Lrockstarmobile/GCConfig$GooglePlayConfig;->products:[Lrockstarmobile/GCConfig$GooglePlayConfig$Product;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 11
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v4

    .line 12
    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v4

    iget-object v3, v3, Lrockstarmobile/GCConfig$GooglePlayConfig$Product;->ProductID:Ljava/lang/String;

    iget-object v5, p0, Lrockstarmobile/GCSubscriptions$f;->b:Lrockstarmobile/GCSubscriptions;

    .line 13
    invoke-static {v5}, Lrockstarmobile/GCSubscriptions;->access$700(Lrockstarmobile/GCSubscriptions;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "$package"

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v3

    .line 14
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Lrockstarmobile/GCSubscriptions;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAP looking for SKUs ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    .line 24
    iget-object v1, p0, Lrockstarmobile/GCSubscriptions$f;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {v1}, Lrockstarmobile/GCSubscriptions;->access$000(Lrockstarmobile/GCSubscriptions;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    iget-object v2, p0, Lrockstarmobile/GCSubscriptions$f;->a:Lrockstarmobile/GCSubscriptions$ProductsCallback;

    new-instance v3, Lrockstarmobile/GCSubscriptions$f$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p1}, Lrockstarmobile/GCSubscriptions$f$$ExternalSyntheticLambda0;-><init>(Lrockstarmobile/GCSubscriptions$f;Lrockstarmobile/GCSubscriptions$ProductsCallback;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v3}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions$f;->a:Lrockstarmobile/GCSubscriptions$ProductsCallback;

    invoke-interface {v0, p1, p2, p3}, Lrockstarmobile/GCSubscriptions$ProductsCallback;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
