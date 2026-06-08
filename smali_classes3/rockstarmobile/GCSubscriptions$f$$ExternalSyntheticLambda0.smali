.class public final synthetic Lrockstarmobile/GCSubscriptions$f$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/GCSubscriptions$f;

.field public final synthetic f$1:Lrockstarmobile/GCSubscriptions$ProductsCallback;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/GCSubscriptions$f;Lrockstarmobile/GCSubscriptions$ProductsCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/GCSubscriptions$f$$ExternalSyntheticLambda0;->f$0:Lrockstarmobile/GCSubscriptions$f;

    iput-object p2, p0, Lrockstarmobile/GCSubscriptions$f$$ExternalSyntheticLambda0;->f$1:Lrockstarmobile/GCSubscriptions$ProductsCallback;

    iput-object p3, p0, Lrockstarmobile/GCSubscriptions$f$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions$f$$ExternalSyntheticLambda0;->f$0:Lrockstarmobile/GCSubscriptions$f;

    iget-object v1, p0, Lrockstarmobile/GCSubscriptions$f$$ExternalSyntheticLambda0;->f$1:Lrockstarmobile/GCSubscriptions$ProductsCallback;

    iget-object v2, p0, Lrockstarmobile/GCSubscriptions$f$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p1, p2}, Lrockstarmobile/GCSubscriptions$f;->$r8$lambda$3UEqf1NfjISYR5Yh31l_a53n8sY(Lrockstarmobile/GCSubscriptions$f;Lrockstarmobile/GCSubscriptions$ProductsCallback;Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
