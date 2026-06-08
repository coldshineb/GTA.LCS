.class Lrockstarmobile/GCSubscriptions$b;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/GCSubscriptions;->connect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lrockstarmobile/GCSubscriptions;


# direct methods
.method constructor <init>(Lrockstarmobile/GCSubscriptions;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/GCSubscriptions$b;->b:Lrockstarmobile/GCSubscriptions;

    iput p2, p0, Lrockstarmobile/GCSubscriptions$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 3

    .line 1
    invoke-static {}, Lrockstarmobile/GCSubscriptions;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object v0

    const-string v1, "onBillingServiceDisconnected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/utilities/Log;->error(Ljava/lang/String;Z)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lrockstarmobile/GCSubscriptions;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ready: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lrockstarmobile/GCSubscriptions$b;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {v3}, Lrockstarmobile/GCSubscriptions;->access$000(Lrockstarmobile/GCSubscriptions;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lrockstarmobile/GCSubscriptions;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "subscriptions supported: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lrockstarmobile/GCSubscriptions$b;->b:Lrockstarmobile/GCSubscriptions;

    invoke-virtual {v3}, Lrockstarmobile/GCSubscriptions;->isSubscriptionsSupported()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lrockstarmobile/GCSubscriptions;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p1, p0, Lrockstarmobile/GCSubscriptions$b;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {p1}, Lrockstarmobile/GCSubscriptions;->access$300(Lrockstarmobile/GCSubscriptions;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lrockstarmobile/GCSubscriptions$b;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {p1}, Lrockstarmobile/GCSubscriptions;->access$300(Lrockstarmobile/GCSubscriptions;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lrockstarmobile/GCSubscriptions$g;

    .line 7
    iget-object v5, p0, Lrockstarmobile/GCSubscriptions$b;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {v5}, Lrockstarmobile/GCSubscriptions;->access$000(Lrockstarmobile/GCSubscriptions;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v5

    invoke-interface {v4, v5}, Lrockstarmobile/GCSubscriptions$g;->a(Lcom/android/billingclient/api/BillingClient;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lrockstarmobile/GCSubscriptions$b;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {p1, v2}, Lrockstarmobile/GCSubscriptions;->access$302(Lrockstarmobile/GCSubscriptions;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_1
    iget v0, p0, Lrockstarmobile/GCSubscriptions$b;->a:I

    if-lez v0, :cond_2

    .line 14
    invoke-static {}, Lrockstarmobile/GCSubscriptions;->access$100()Lrockstarmobile/utilities/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "issue: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrockstarmobile/utilities/Log;->debug(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lrockstarmobile/GCSubscriptions$b;->b:Lrockstarmobile/GCSubscriptions;

    iget v0, p0, Lrockstarmobile/GCSubscriptions$b;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lrockstarmobile/GCSubscriptions;->access$400(Lrockstarmobile/GCSubscriptions;I)V

    return-void

    .line 17
    :cond_2
    invoke-static {}, Lrockstarmobile/GCSubscriptions;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 18
    :try_start_1
    iget-object v3, p0, Lrockstarmobile/GCSubscriptions$b;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {v3}, Lrockstarmobile/GCSubscriptions;->access$300(Lrockstarmobile/GCSubscriptions;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 19
    iget-object v3, p0, Lrockstarmobile/GCSubscriptions$b;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {v3}, Lrockstarmobile/GCSubscriptions;->access$300(Lrockstarmobile/GCSubscriptions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Lrockstarmobile/GCSubscriptions$g;

    .line 20
    iget-object v6, p0, Lrockstarmobile/GCSubscriptions$b;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {v6, p1}, Lrockstarmobile/GCSubscriptions;->access$500(Lrockstarmobile/GCSubscriptions;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Could not connect to Google Play"

    invoke-interface {v5, v6, v7, v8}, Lrockstarmobile/GCSubscriptions$g;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_3
    iget-object p1, p0, Lrockstarmobile/GCSubscriptions$b;->b:Lrockstarmobile/GCSubscriptions;

    invoke-static {p1, v2}, Lrockstarmobile/GCSubscriptions;->access$302(Lrockstarmobile/GCSubscriptions;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 24
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method
