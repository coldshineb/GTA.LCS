.class public final synthetic Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/utilities/HttpAPI$SuccessCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/SocialClubAPI$b;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/SocialClubAPI$b;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda21;->f$0:Lrockstarmobile/SocialClubAPI$b;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda21;->f$0:Lrockstarmobile/SocialClubAPI$b;

    check-cast p1, Ljava/util/HashMap;

    invoke-static {v0, p1}, Lrockstarmobile/SocialClubAPI;->lambda$allPoliciesAccepted$4(Lrockstarmobile/SocialClubAPI$b;Ljava/util/HashMap;)V

    return-void
.end method
