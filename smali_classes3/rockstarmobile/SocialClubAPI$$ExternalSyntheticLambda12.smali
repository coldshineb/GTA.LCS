.class public final synthetic Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/utilities/HttpAPI$SuccessCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

.field public final synthetic f$1:Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda12;->f$0:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    iput-object p2, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda12;->f$1:Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda12;->f$0:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    iget-object v1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda12;->f$1:Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;

    check-cast p1, Ljava/util/HashMap;

    invoke-static {v0, v1, p1}, Lrockstarmobile/SocialClubAPI;->lambda$createTicketScAuthToken2$0(Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;Ljava/util/HashMap;)V

    return-void
.end method
