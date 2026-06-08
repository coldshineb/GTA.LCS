.class Lrockstarmobile/GCSubscriptions$c;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Lrockstarmobile/GCSubscriptions$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/GCSubscriptions;->checkForNewPurchases(ZLrockstarmobile/Rockstar$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrockstarmobile/Rockstar$Callback;

.field final synthetic b:Lrockstarmobile/GCSubscriptions;


# direct methods
.method public static synthetic $r8$lambda$L-OXRqIpciBEy_QEOa8G6eW7vXw(Lrockstarmobile/GCSubscriptions$c;Lrockstarmobile/Rockstar$Callback;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lrockstarmobile/GCSubscriptions$c;->a(Lrockstarmobile/Rockstar$Callback;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lrockstarmobile/GCSubscriptions;Lrockstarmobile/Rockstar$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/GCSubscriptions$c;->b:Lrockstarmobile/GCSubscriptions;

    iput-object p2, p0, Lrockstarmobile/GCSubscriptions$c;->a:Lrockstarmobile/Rockstar$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lrockstarmobile/Rockstar$Callback;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 5

    .line 5
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_3

    .line 6
    invoke-static {}, Lrockstarmobile/GCState;->isGameOwner()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    .line 7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/billingclient/api/Purchase;

    .line 8
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions$c;->b:Lrockstarmobile/GCSubscriptions;

    invoke-virtual {v0}, Lrockstarmobile/GCSubscriptions;->getFullGameProduct()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    invoke-static {v1}, Lrockstarmobile/GCState;->setIsGameOwner(Z)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p3

    .line 21
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions$c;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {v0}, Lrockstarmobile/GCSubscriptions;->access$000(Lrockstarmobile/GCSubscriptions;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    new-instance v1, Lrockstarmobile/GCSubscriptions$c$a;

    invoke-direct {v1, p0}, Lrockstarmobile/GCSubscriptions$c$a;-><init>(Lrockstarmobile/GCSubscriptions$c;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 33
    invoke-interface {p1}, Lrockstarmobile/Rockstar$Callback;->callback()V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingClient;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    .line 2
    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v0

    iget-object v1, p0, Lrockstarmobile/GCSubscriptions$c;->a:Lrockstarmobile/Rockstar$Callback;

    new-instance v2, Lrockstarmobile/GCSubscriptions$c$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lrockstarmobile/GCSubscriptions$c$$ExternalSyntheticLambda0;-><init>(Lrockstarmobile/GCSubscriptions$c;Lrockstarmobile/Rockstar$Callback;)V

    .line 4
    invoke-virtual {p1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lrockstarmobile/GCSubscriptions$c;->a:Lrockstarmobile/Rockstar$Callback;

    invoke-interface {p1}, Lrockstarmobile/Rockstar$Callback;->callback()V

    return-void
.end method
