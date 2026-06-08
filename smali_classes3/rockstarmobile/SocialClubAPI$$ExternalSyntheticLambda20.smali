.class public final synthetic Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/SocialClubAPI$b;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;

.field public final synthetic f$1:Lrockstarmobile/utilities/HttpAPI$SuccessCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda20;->f$0:Ljava/util/HashMap;

    iput-object p2, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda20;->f$1:Lrockstarmobile/utilities/HttpAPI$SuccessCallback;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda20;->f$0:Ljava/util/HashMap;

    iget-object v1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda20;->f$1:Lrockstarmobile/utilities/HttpAPI$SuccessCallback;

    invoke-static {v0, v1, p1, p2}, Lrockstarmobile/SocialClubAPI;->lambda$allPoliciesAccepted$3(Ljava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$SuccessCallback;Ljava/lang/String;I)V

    return-void
.end method
