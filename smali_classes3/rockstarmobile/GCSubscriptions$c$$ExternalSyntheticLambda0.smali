.class public final synthetic Lrockstarmobile/GCSubscriptions$c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/GCSubscriptions$c;

.field public final synthetic f$1:Lrockstarmobile/Rockstar$Callback;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/GCSubscriptions$c;Lrockstarmobile/Rockstar$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/GCSubscriptions$c$$ExternalSyntheticLambda0;->f$0:Lrockstarmobile/GCSubscriptions$c;

    iput-object p2, p0, Lrockstarmobile/GCSubscriptions$c$$ExternalSyntheticLambda0;->f$1:Lrockstarmobile/Rockstar$Callback;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions$c$$ExternalSyntheticLambda0;->f$0:Lrockstarmobile/GCSubscriptions$c;

    iget-object v1, p0, Lrockstarmobile/GCSubscriptions$c$$ExternalSyntheticLambda0;->f$1:Lrockstarmobile/Rockstar$Callback;

    invoke-static {v0, v1, p1, p2}, Lrockstarmobile/GCSubscriptions$c;->$r8$lambda$L-OXRqIpciBEy_QEOa8G6eW7vXw(Lrockstarmobile/GCSubscriptions$c;Lrockstarmobile/Rockstar$Callback;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
