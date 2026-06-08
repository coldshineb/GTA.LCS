.class Lrockstarmobile/GCSubscriptions$d;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Lrockstarmobile/GCSubscriptions$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/GCSubscriptions;->buy(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Lrockstarmobile/GCSubscriptions$PurchaseCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/ProductDetails;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lrockstarmobile/GCSubscriptions;


# direct methods
.method constructor <init>(Lrockstarmobile/GCSubscriptions;Lcom/android/billingclient/api/ProductDetails;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/GCSubscriptions$d;->c:Lrockstarmobile/GCSubscriptions;

    iput-object p2, p0, Lrockstarmobile/GCSubscriptions$d;->a:Lcom/android/billingclient/api/ProductDetails;

    iput-object p3, p0, Lrockstarmobile/GCSubscriptions$d;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingClient;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lrockstarmobile/GCSubscriptions$d;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 10
    invoke-static {}, Lrockstarmobile/GCSubscriptions;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object v0

    const-string v1, "launchign billing flow"

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions$d;->c:Lrockstarmobile/GCSubscriptions;

    invoke-static {v0}, Lrockstarmobile/GCSubscriptions;->access$000(Lrockstarmobile/GCSubscriptions;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iget-object v1, p0, Lrockstarmobile/GCSubscriptions$d;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lrockstarmobile/GCSubscriptions;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "billing flow onError"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions$d;->c:Lrockstarmobile/GCSubscriptions;

    invoke-static {v0, p1, p2, p3}, Lrockstarmobile/GCSubscriptions;->access$600(Lrockstarmobile/GCSubscriptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
