.class public final synthetic Lrockstarmobile/GCSubscriptions$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/Rockstar$Callback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/GCSubscriptions;

.field public final synthetic f$1:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/GCSubscriptions;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/GCSubscriptions$$ExternalSyntheticLambda2;->f$0:Lrockstarmobile/GCSubscriptions;

    iput-object p2, p0, Lrockstarmobile/GCSubscriptions$$ExternalSyntheticLambda2;->f$1:Lcom/android/billingclient/api/BillingResult;

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/GCSubscriptions$$ExternalSyntheticLambda2;->f$0:Lrockstarmobile/GCSubscriptions;

    iget-object v1, p0, Lrockstarmobile/GCSubscriptions$$ExternalSyntheticLambda2;->f$1:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0, v1}, Lrockstarmobile/GCSubscriptions;->lambda$onPurchasesUpdated$1$rockstarmobile-GCSubscriptions(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
