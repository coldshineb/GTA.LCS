.class public final synthetic Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/utilities/HttpAPI$SuccessCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/SocialClubAPI$c;

.field public final synthetic f$1:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/SocialClubAPI$c;Ljava/util/Date;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda18;->f$0:Lrockstarmobile/SocialClubAPI$c;

    iput-object p2, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda18;->f$1:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda18;->f$0:Lrockstarmobile/SocialClubAPI$c;

    iget-object v1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda18;->f$1:Ljava/util/Date;

    check-cast p1, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-static {v0, v1, p1}, Lrockstarmobile/SocialClubAPI;->lambda$refresh$21(Lrockstarmobile/SocialClubAPI$c;Ljava/util/Date;Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;)V

    return-void
.end method
