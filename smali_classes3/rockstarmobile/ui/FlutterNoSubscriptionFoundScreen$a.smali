.class Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->refresh(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrockstarmobile/Rockstar$TCallback;

.field final synthetic b:Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;


# direct methods
.method public static synthetic $r8$lambda$8-eQ1JTqvGioHAYjS_jqErxlD7M(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KpCYR1qOV5kpjnBNcjua8Fbd6jA(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iHMHmvot2wJON0hTbLg-5w0989U(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 0

    invoke-direct {p0, p1}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->a(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vFkiN-h1Ar8i0gLq8tCWyh9Nk4w(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;Lrockstarmobile/Rockstar$TCallback;Lrockstarmobile/RockstarUser;Lrockstarmobile/GCState$GameTicket;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->a(Lrockstarmobile/Rockstar$TCallback;Lrockstarmobile/RockstarUser;Lrockstarmobile/GCState$GameTicket;)V

    return-void
.end method

.method constructor <init>(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;Lrockstarmobile/Rockstar$TCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->b:Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;

    iput-object p2, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->a:Lrockstarmobile/Rockstar$TCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "buttonsloading"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p2, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->b:Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;

    invoke-static {p2}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->access$100(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;)Lrockstarmobile/Rockstar$TCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "dismissable"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p2, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->b:Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;

    invoke-virtual {p2, p1}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private synthetic a(Lrockstarmobile/Rockstar$TCallback;Lrockstarmobile/RockstarUser;Lrockstarmobile/GCState$GameTicket;)V
    .locals 0

    .line 2
    invoke-static {p2}, Lrockstarmobile/GCState;->setUser(Lrockstarmobile/RockstarUser;)V

    .line 3
    iget-object p2, p2, Lrockstarmobile/RockstarUser;->subscriptionState:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    sget-object p3, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    if-ne p2, p3, :cond_0

    .line 4
    iget-object p2, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->b:Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;

    iget-object p2, p2, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-interface {p1, p2}, Lrockstarmobile/Rockstar$TCallback;->callback(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->b:Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;

    invoke-static {p1}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->access$100(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;)Lrockstarmobile/Rockstar$TCallback;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3, p3, p2}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->access$200(ZZLrockstarmobile/Rockstar$TCallback;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic a(Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 5

    .line 7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->b:Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;

    iget-object v1, v1, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "NO_SUBSCRIPTION_FOUND_ERROR_HEADER"

    const-string v4, "Unexpected Error"

    invoke-static {v3, v4, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 9
    iget-object p1, p1, Lrockstarmobile/utilities/HttpAPI$Error;->code:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "[details]"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "NO_SUBSCRIPTION_FOUND_ERROR_MESSAGE"

    const-string v3, "An unexpected error occurred, please try again. (details: [details])"

    invoke-static {p1, v3, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 10
    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "NO_SUBSCRIPTION_FOUND_ERROR_OK"

    const-string v2, "OK"

    invoke-static {v1, v2, p1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a$$ExternalSyntheticLambda0;-><init>(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 16
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->b:Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;

    invoke-static {v0}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;->access$000(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen;)Lrockstarmobile/RockstarUser;

    move-result-object v1

    new-instance v7, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a$$ExternalSyntheticLambda1;-><init>()V

    iget-object v0, p0, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;->a:Lrockstarmobile/Rockstar$TCallback;

    new-instance v8, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v0}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a$$ExternalSyntheticLambda2;-><init>(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;Lrockstarmobile/Rockstar$TCallback;)V

    new-instance v9, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a$$ExternalSyntheticLambda3;-><init>(Lrockstarmobile/ui/FlutterNoSubscriptionFoundScreen$a;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v9}, Lrockstarmobile/SocialClubAPI;->refresh(Lrockstarmobile/RockstarUser;ZZZZZLrockstarmobile/SocialClubAPI$StatusCallback;Lrockstarmobile/SocialClubAPI$RefreshCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void
.end method
