.class Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Lrockstarmobile/GCSubscriptions$PurchaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/ProductDetails;

.field final synthetic b:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

.field final synthetic c:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;


# direct methods
.method public static synthetic $r8$lambda$UlX-8u20fNeJ43GKLg7Z7P5Sf2s(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;)V
    .locals 0

    invoke-static {p0}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;->a(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;)V

    return-void
.end method

.method constructor <init>(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;Lcom/android/billingclient/api/ProductDetails;Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;->c:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    iput-object p2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;->a:Lcom/android/billingclient/api/ProductDetails;

    iput-object p3, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;->b:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v1, "element_label"

    const-string v2, "purchased"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "PURCHASE_COMPLETE_OKAY"

    const-string v3, "Okay"

    invoke-static {v2, v3, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v1, "play_game"

    invoke-static {v1, v0}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->purchaseDoneScreenDismissed()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "buttonsloading"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;->c:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    invoke-virtual {v0, p2}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    .line 5
    const-string p2, "USER_CANCELED"

    if-eq p1, p2, :cond_0

    .line 6
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;->b:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    iget-object p2, p2, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 7
    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "ERROR_HEADING"

    const-string v1, "Error"

    invoke-static {v0, v1, p2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8
    const-string p2, "OK"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "buttonsloading"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;->c:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    invoke-virtual {v1, v0}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    return-void
.end method

.method public onSuccess()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "buttonsloading"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;->c:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    invoke-virtual {v1, v0}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;->a:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "product_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string v1, "purchase_success"

    invoke-static {v1, v0}, Lrockstarmobile/Rockstar;->event(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Lrockstarmobile/GCState;->setIsGameOwner(Z)V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxLogo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "logo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxBackground()Ljava/lang/String;

    move-result-object v1

    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 16
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "PURCHASE_COMPLETE_HEADING"

    const-string v4, "Thank you for your purchase"

    invoke-static {v3, v4, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "heading"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "PURCHASE_COMPLETE_SUBHEADING"

    const-string v4, "The full game is now unlocked and ready to play."

    invoke-static {v3, v4, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "subheading"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "PURCHASE_COMPLETE_OKAY"

    const-string v3, "Okay"

    invoke-static {v2, v3, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "button1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v1, "button1style"

    const-string v2, "primary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "button1action"

    const-string v2, "dismiss"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b;->b:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    new-instance v2, Lrockstarmobile/ui/FlutterNoticeScreen;

    new-instance v3, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$b$$ExternalSyntheticLambda0;-><init>(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;)V

    const-string v4, "Game Purchased"

    invoke-direct {v2, v0, v3, v4}, Lrockstarmobile/ui/FlutterNoticeScreen;-><init>(Ljava/util/HashMap;Lrockstarmobile/Rockstar$Callback;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lrockstarmobile/ui/FlutterScreen;->setScreen(Lrockstarmobile/ui/FlutterScreen;)V

    return-void
.end method
