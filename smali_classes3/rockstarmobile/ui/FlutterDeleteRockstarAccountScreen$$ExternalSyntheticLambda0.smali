.class public final synthetic Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/utilities/HttpAPI$SuccessCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen$$ExternalSyntheticLambda0;->f$0:Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen$$ExternalSyntheticLambda0;->f$0:Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;

    check-cast p1, Lrockstarmobile/RockstarMobileAPI$requestAccountDeletionResponse;

    invoke-virtual {v0, p1}, Lrockstarmobile/ui/FlutterDeleteRockstarAccountScreen;->lambda$handleMethodCall$0$rockstarmobile-ui-FlutterDeleteRockstarAccountScreen(Lrockstarmobile/RockstarMobileAPI$requestAccountDeletionResponse;)V

    return-void
.end method
