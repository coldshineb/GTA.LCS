.class public final synthetic Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/SocialClubAPI$c;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;

.field public final synthetic f$1:Lrockstarmobile/RockstarUser;

.field public final synthetic f$2:Lrockstarmobile/SocialClubAPI$RefreshCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;Lrockstarmobile/RockstarUser;Lrockstarmobile/SocialClubAPI$RefreshCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda7;->f$0:Ljava/util/HashMap;

    iput-object p2, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda7;->f$1:Lrockstarmobile/RockstarUser;

    iput-object p3, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda7;->f$2:Lrockstarmobile/SocialClubAPI$RefreshCallback;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda7;->f$0:Ljava/util/HashMap;

    iget-object v1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda7;->f$1:Lrockstarmobile/RockstarUser;

    iget-object v2, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda7;->f$2:Lrockstarmobile/SocialClubAPI$RefreshCallback;

    invoke-static {v0, v1, v2, p1, p2}, Lrockstarmobile/SocialClubAPI;->lambda$refresh$16(Ljava/util/HashMap;Lrockstarmobile/RockstarUser;Lrockstarmobile/SocialClubAPI$RefreshCallback;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
