.class public final synthetic Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/Rockstar$ABCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/ui/FlutterGateScreen;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/ui/FlutterGateScreen;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda0;->f$0:Lrockstarmobile/ui/FlutterGateScreen;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lrockstarmobile/ui/FlutterGateScreen$$ExternalSyntheticLambda0;->f$0:Lrockstarmobile/ui/FlutterGateScreen;

    check-cast p1, Lrockstarmobile/ui/FlutterScreenHost;

    check-cast p2, Lrockstarmobile/RockstarUser;

    invoke-virtual {v0, p1, p2}, Lrockstarmobile/ui/FlutterGateScreen;->lambda$handleMethodCall$4$rockstarmobile-ui-FlutterGateScreen(Lrockstarmobile/ui/FlutterScreenHost;Lrockstarmobile/RockstarUser;)V

    return-void
.end method
