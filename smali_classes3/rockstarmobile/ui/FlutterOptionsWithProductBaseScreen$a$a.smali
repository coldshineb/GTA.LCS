.class Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;->onProducts(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;


# direct methods
.method constructor <init>(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$a;->a:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$a;->a:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;

    iget-object v0, v0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;->a:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->access$102(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;Z)Z

    .line 2
    iget-object v0, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$a;->a:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;

    iget-object v0, v0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;->a:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    invoke-static {}, Lrockstarmobile/Rockstar;->getSubscriptions()Lrockstarmobile/GCSubscriptions;

    move-result-object v1

    invoke-virtual {v1}, Lrockstarmobile/GCSubscriptions;->getFullGameProduct()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->loadingGotProduct(Lcom/android/billingclient/api/ProductDetails;)V

    return-void
.end method
