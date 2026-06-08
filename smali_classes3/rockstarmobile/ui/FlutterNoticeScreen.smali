.class public Lrockstarmobile/ui/FlutterNoticeScreen;
.super Lrockstarmobile/ui/FlutterScreen;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# instance fields
.field private onDismiss:Lrockstarmobile/Rockstar$Callback;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Lrockstarmobile/Rockstar$Callback;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lrockstarmobile/Rockstar$Callback;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "/notice"

    const-string v1, "NoticeScreen"

    invoke-direct {p0, v0, v1, p1, p3}, Lrockstarmobile/ui/FlutterScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lrockstarmobile/ui/FlutterNoticeScreen;->onDismiss:Lrockstarmobile/Rockstar$Callback;

    return-void
.end method


# virtual methods
.method public dismiss(Lrockstarmobile/ui/FlutterScreenHost;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/ui/FlutterNoticeScreen;->onDismiss:Lrockstarmobile/Rockstar$Callback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lrockstarmobile/Rockstar$Callback;->callback()V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lrockstarmobile/ui/FlutterScreen;->dismiss(Lrockstarmobile/ui/FlutterScreenHost;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method
