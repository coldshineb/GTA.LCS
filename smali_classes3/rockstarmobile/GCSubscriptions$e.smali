.class Lrockstarmobile/GCSubscriptions$e;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/GCSubscriptions;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrockstarmobile/GCSubscriptions;


# direct methods
.method constructor <init>(Lrockstarmobile/GCSubscriptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/GCSubscriptions$e;->a:Lrockstarmobile/GCSubscriptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    return-void
.end method
