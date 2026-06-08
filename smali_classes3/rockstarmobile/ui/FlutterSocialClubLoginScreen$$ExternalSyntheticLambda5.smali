.class public final synthetic Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/Rockstar$Callback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/ui/FlutterSocialClubLoginScreen;

.field public final synthetic f$1:Lrockstarmobile/RockstarUser;

.field public final synthetic f$2:Lrockstarmobile/GCState$GameTicket;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/ui/FlutterSocialClubLoginScreen;Lrockstarmobile/RockstarUser;Lrockstarmobile/GCState$GameTicket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda5;->f$0:Lrockstarmobile/ui/FlutterSocialClubLoginScreen;

    iput-object p2, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda5;->f$1:Lrockstarmobile/RockstarUser;

    iput-object p3, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda5;->f$2:Lrockstarmobile/GCState$GameTicket;

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 3

    .line 0
    iget-object v0, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda5;->f$0:Lrockstarmobile/ui/FlutterSocialClubLoginScreen;

    iget-object v1, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda5;->f$1:Lrockstarmobile/RockstarUser;

    iget-object v2, p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$$ExternalSyntheticLambda5;->f$2:Lrockstarmobile/GCState$GameTicket;

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen;->lambda$onResult$3$rockstarmobile-ui-FlutterSocialClubLoginScreen(Lrockstarmobile/RockstarUser;Lrockstarmobile/GCState$GameTicket;)V

    return-void
.end method
