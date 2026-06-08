.class public final synthetic Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/utilities/HttpAPI$ErrorCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;

.field public final synthetic f$1:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda8;->f$0:Ljava/util/HashMap;

    iput-object p2, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda8;->f$1:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    return-void
.end method


# virtual methods
.method public final error(Lrockstarmobile/utilities/HttpAPI$Error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda8;->f$0:Ljava/util/HashMap;

    iget-object v1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda8;->f$1:Lrockstarmobile/utilities/HttpAPI$ErrorCallback;

    invoke-static {v0, v1, p1}, Lrockstarmobile/SocialClubAPI;->lambda$refresh$17(Ljava/util/HashMap;Lrockstarmobile/utilities/HttpAPI$ErrorCallback;Lrockstarmobile/utilities/HttpAPI$Error;)V

    return-void
.end method
