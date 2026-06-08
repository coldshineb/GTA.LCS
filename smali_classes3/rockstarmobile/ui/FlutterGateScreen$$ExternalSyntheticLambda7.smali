.class public final synthetic Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/Rockstar$TCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/ui/FlutterGateScreen;

.field public final synthetic f$1:Lrockstarmobile/Rockstar$ABCallback;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/ui/FlutterGateScreen;Lrockstarmobile/Rockstar$ABCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda7;->f$0:Lrockstarmobile/ui/FlutterGateScreen;

    iput-object p2, p0, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda7;->f$1:Lrockstarmobile/Rockstar$ABCallback;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda7;->f$0:Lrockstarmobile/ui/FlutterGateScreen;

    iget-object v1, p0, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda7;->f$1:Lrockstarmobile/Rockstar$ABCallback;

    check-cast p1, Lrockstarmobile/ui/FlutterScreenHost;

    invoke-virtual {v0, v1, p1}, Lrockstarmobile/ui/FlutterGateScreen;->lambda$handleMethodCall$5$rockstarmobile-ui-FlutterGateScreen(Lrockstarmobile/Rockstar$ABCallback;Lrockstarmobile/ui/FlutterScreenHost;)V

    return-void
.end method
