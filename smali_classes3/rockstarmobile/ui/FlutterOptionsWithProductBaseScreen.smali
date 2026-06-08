.class public Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;
.super Lrockstarmobile/ui/FlutterScreen;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# static fields
.field private static final log:Lrockstarmobile/utilities/Log;


# instance fields
.field private buyButton:Ljava/lang/String;

.field private buyButtonStyle:Ljava/lang/String;

.field private loading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "FlutterOptionsWithProductBaseScreen"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->log:Lrockstarmobile/utilities/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->addArgs(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p3

    const-string v0, "/options"

    const-string v1, "OptionsScreen"

    invoke-direct {p0, v0, v1, p3, p4}, Lrockstarmobile/ui/FlutterScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 31
    iput-boolean p3, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->loading:Z

    .line 32
    iput-object p1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButtonStyle:Ljava/lang/String;

    .line 34
    iget-object p2, p0, Lrockstarmobile/ui/FlutterScreen;->state:Ljava/util/HashMap;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "style"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "issue"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    invoke-direct {p0}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->loadProduct()V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Lrockstarmobile/utilities/Log;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->log:Lrockstarmobile/utilities/Log;

    return-object v0
.end method

.method static synthetic access$102(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->loading:Z

    return p1
.end method

.method private static addArgs(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "UNLOCK_LOADING"

    const-string v3, "loading..."

    invoke-static {v2, v3, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lrockstarmobile/Rockstar;->getSubscriptions()Lrockstarmobile/GCSubscriptions;

    move-result-object v2

    invoke-virtual {v2}, Lrockstarmobile/GCSubscriptions;->getFullGameProduct()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "SOCIALCLUB_LEGAL_LINK"

    const-string v6, "https://www.rockstargames.com/legal"

    invoke-static {v5, v6, v4}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    new-array v5, v0, [Ljava/lang/String;

    const-string v6, "SOCIALCLUB_PRIVACY_LINK"

    const-string v7, "https://www.rockstargames.com/privacy"

    invoke-static {v6, v7, v5}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    .line 7
    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "[legalLink]"

    aput-object v7, v6, v0

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const-string v4, "[privacyPolicyLink]"

    const/4 v8, 0x2

    aput-object v4, v6, v8

    const/4 v4, 0x3

    aput-object v5, v6, v4

    const-string v4, "UNLOCK_FOOTER_ANDROID"

    const-string v5, "By tapping Buy Full Game and completing your purchase, you confirm that you have read, understood, and agree to be bound by Rockstar\'s Terms of Service ([legalLink]), and acknowledge that you have read and understood the Privacy Policy ([privacyPolicyLink])."

    invoke-static {v4, v5, v6}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "footer"

    invoke-virtual {p2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "[price]"

    aput-object v5, v4, v0

    aput-object v1, v4, v7

    const-string v1, "UNLOCK_BUY_FULL_GAME"

    const-string v5, "BUY FULL GAME [price]"

    invoke-static {v1, v5, v4}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "style"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "issue"

    :goto_0
    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-array p0, v0, [Ljava/lang/String;

    const-string p1, "UNLOCK_RESTORE_PURCHASES"

    const-string v0, "Restore Purchase"

    invoke-static {p1, v0, p0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "button4"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p0, "button4style"

    const-string p1, "restorelink"

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method private loadProduct()V
    .locals 5

    .line 1
    sget-object v0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->log:Lrockstarmobile/utilities/Log;

    const-string v1, "loading products"

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->loading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->loading:Z

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "UNLOCK_LOADING"

    const-string v4, "loading..."

    invoke-static {v3, v4, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "subtitle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "style"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "issue"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    .line 11
    invoke-static {}, Lrockstarmobile/Rockstar;->getSubscriptions()Lrockstarmobile/GCSubscriptions;

    move-result-object v0

    new-instance v1, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;

    invoke-direct {v1, p0}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;-><init>(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;)V

    invoke-virtual {v0, v1}, Lrockstarmobile/GCSubscriptions;->getProducts(Lrockstarmobile/GCSubscriptions$ProductsCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    iget-object v1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "text"

    const-string v2, "element_label"

    const-string v3, ""

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object p2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    invoke-virtual {p0, p2, v3}, Lrockstarmobile/ui/FlutterScreen;->stateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string p2, "cta_buy"

    invoke-static {p2, p1}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    invoke-static {}, Lrockstarmobile/Rockstar;->getSubscriptions()Lrockstarmobile/GCSubscriptions;

    move-result-object p1

    invoke-virtual {p1}, Lrockstarmobile/GCSubscriptions;->getFullGameProduct()Lcom/android/billingclient/api/ProductDetails;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-static {}, Lrockstarmobile/Rockstar;->getSubscriptions()Lrockstarmobile/GCSubscriptions;

    move-result-object p2

    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    new-instance v1, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;

    invoke-direct {v1, p0, p1, p0}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;-><init>(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;Lcom/android/billingclient/api/ProductDetails;Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;)V

    invoke-virtual {p2, v0, p1, v1, v3}, Lrockstarmobile/GCSubscriptions;->buy(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;Lrockstarmobile/GCSubscriptions$PurchaseCallback;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_0
    sget-object p1, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->log:Lrockstarmobile/utilities/Log;

    const-string p2, "try loading product again"

    invoke-virtual {p1, p2}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->loadProduct()V

    return-void

    .line 68
    :cond_1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v4, "button4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 70
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v4, v3}, Lrockstarmobile/ui/FlutterScreen;->stateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string p2, "cta_restore_purchase"

    invoke-static {p2, p1}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    sget-boolean p1, Lrockstarmobile/Include;->GTAPlus:Z

    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    new-instance p2, Lrockstarmobile/ui/FlutterLegacyUpgradeScreen;

    invoke-direct {p2}, Lrockstarmobile/ui/FlutterLegacyUpgradeScreen;-><init>()V

    sget-object v0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {p1, p2, v0}, Lrockstarmobile/ui/FlutterScreenHost;->launch(Landroid/app/Activity;Lrockstarmobile/ui/FlutterScreen;Lrockstarmobile/ui/FlutterScreenHost$Orientation;)V

    :cond_2
    return-void

    .line 78
    :cond_3
    invoke-super {p0, p1, p2}, Lrockstarmobile/ui/FlutterScreen;->handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method protected loadingGotProduct(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "style"

    const-string v2, "subtitle"

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v4, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "[price]"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    aput-object p1, v5, v3

    const-string p1, "UNLOCK_BUY_FULL_GAME"

    const-string v3, "BUY FULL GAME [price]"

    invoke-static {p1, v3, v5}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButtonStyle:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "UNLOCK_BUY_FULL_GAME_ERROR"

    const-string v6, "UNABLE TO LOAD PRICE"

    invoke-static {v5, v6, v4}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "UNLOCK_BUY_FULL_GAME_TRY_AGAIN"

    const-string v4, "tap to try again"

    invoke-static {v3, v4, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->buyButton:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "error"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_0
    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    return-void
.end method

.method public purchaseDoneScreenDismissed()V
    .locals 0

    return-void
.end method

.method setLoading(Z)V
    .locals 1

    .line 1
    new-instance v0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$c;

    invoke-direct {v0, p0, p1}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$c;-><init>(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;Z)V

    invoke-virtual {p0, v0}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    return-void
.end method
