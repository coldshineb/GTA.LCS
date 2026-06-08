.class public final synthetic Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/utilities/HttpAPI$ErrorCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/ui/FlutterSocialClubLoginScreen;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda2;->f$0:Lrockstarmobile/ui/FlutterSocialClubLoginScreen;

    return-void
.end method


# virtual methods
.method public final error(Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda2;->f$0:Lrockstarmobile/ui/FlutterSocialClubLoginScreen;

    invoke-virtual {v0, p1}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->lambda$onResult$8$rockstarmobile-ui-FlutterSocialClubLoginScreen(Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void
.end method
