.class public Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;
.super Lrockstarmobile/ui/FlutterScreen;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# instance fields
.field private onComplete:Lrockstarmobile/Rockstar$Callback;


# direct methods
.method public constructor <init>(Lrockstarmobile/Rockstar$Callback;)V
    .locals 4

    .line 1
    invoke-static {}, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;->initialState()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "NoticeScreen"

    const-string v2, "Confirm Delete Account"

    const-string v3, "/notice"

    invoke-direct {p0, v3, v1, v0, v2}, Lrockstarmobile/ui/FlutterScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;->onComplete:Lrockstarmobile/Rockstar$Callback;

    return-void
.end method

.method private static initialState()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "logo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lrockstarmobile/Rockstar;->GfxBackground()Ljava/lang/String;

    move-result-object v1

    const-string v3, "background"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "DELETE_ACCOUNT_CONFIRM_HEADING"

    const-string v5, "Delete Rockstar Games Account?"

    invoke-static {v4, v5, v3}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "heading"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "DELETE_ACCOUNT_CONFIRM_SUBHEADING"

    const-string v5, "Deleting your account is final and will result in the irreversible loss of activation entitlements, levels and stats for all Rockstar Games PC titles, purchased DLC, as well as access to your Friends list and Crew memberships."

    invoke-static {v4, v5, v3}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "subheading"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "DELETE_ACCOUNT_CONFIRM_DELETE_BUTTON"

    const-string v5, "Delete My Rockstar Games Account"

    invoke-static {v4, v5, v3}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "button1"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v3, "button1style"

    const-string v4, "error"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v3, "button1action"

    const-string v4, "delete"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "DELETE_ACCOUNT_CONFIRM_CANCEL_BUTTON"

    const-string v4, "Cancel"

    invoke-static {v3, v4, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "button2"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v1, "button2style"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v1, "button2action"

    const-string v2, "done"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public handleMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "done"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;->onComplete:Lrockstarmobile/Rockstar$Callback;

    invoke-interface {v0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    .line 43
    iget-object v0, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-super {p0, v0, p1, p2}, Lrockstarmobile/ui/FlutterScreen;->dismiss(Lrockstarmobile/ui/FlutterScreenHost;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void

    .line 44
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 45
    const-string p2, "heading"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string p2, "subheading"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string p2, "button1style"

    const-string v1, "loading"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string p2, "button1action"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string p2, "button1"

    const-string v1, "..."

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string p2, "button2"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0, p1}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    .line 54
    new-instance p1, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen$$ExternalSyntheticLambda0;-><init>(Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;)V

    new-instance p2, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen$$ExternalSyntheticLambda1;-><init>(Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;)V

    invoke-static {p1, p2}, Lrockstarmobile/RockstarMobileAPI;->requestAccountDeletion(Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V

    return-void
.end method

.method synthetic lambda$handleMethodCall$0$rockstarmobile-ui-FlutterDeleteRockstarAccountScreen(Lrockstarmobile/RockstarMobileAPI$requestAccountDeletionResponse;)V
    .locals 4

    .line 0
    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lrockstarmobile/GCState;->setUser(Lrockstarmobile/RockstarUser;)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "DELETE_ACCOUNT_DONE_HEADING"

    const-string v3, "Account Deletion Requested"

    invoke-static {v2, v3, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "heading"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "DELETE_ACCOUNT_DONE_SUBHEADING"

    const-string v3, "You have been logged out. Account deletion requests may take up to 30 days to complete."

    invoke-static {v2, v3, v1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "subheading"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DELETE_ACCOUNT_DONE_BUTTON"

    const-string v2, "Understood"

    invoke-static {v1, v2, v0}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "button1"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v0, "button1style"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v0, "button1action"

    const-string v2, "done"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v0, "button2"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v0, "button2style"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v0, "button2action"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0, p1}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    return-void
.end method

.method synthetic lambda$handleMethodCall$1$rockstarmobile-ui-FlutterDeleteRockstarAccountScreen(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {}, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;->initialState()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrockstarmobile/ui/FlutterScreen;->setState(Ljava/util/HashMap;)V

    return-void
.end method

.method synthetic lambda$handleMethodCall$2$rockstarmobile-ui-FlutterDeleteRockstarAccountScreen(Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lrockstarmobile/ui/FlutterScreen;->host:Lrockstarmobile/ui/FlutterScreenHost;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "DELETE_ACCOUNT_API_ERROR_HEADING"

    const-string v4, "ERROR"

    invoke-static {v3, v4, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3
    iget-object p1, p1, Lrockstarmobile/utilities/HttpAPI$Error;->code:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "[errorcode]"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "DELETE_ACCOUNT_API_ERROR_MESSAGE"

    const-string v3, "An unexpected error ([errorcode]) occurred while talking with Rockstar servers. Please try again."

    invoke-static {p1, v3, v2}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4
    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "OK"

    invoke-static {v1, v1, p1}, Lrockstarmobile/Lang;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen$$ExternalSyntheticLambda2;-><init>(Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
