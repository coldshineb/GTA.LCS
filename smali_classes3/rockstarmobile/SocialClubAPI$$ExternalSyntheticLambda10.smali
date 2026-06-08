.class public final synthetic Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/SocialClubAPI$d;

.field public final synthetic f$1:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/SocialClubAPI$d;Ljava/util/Date;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda10;->f$0:Lrockstarmobile/SocialClubAPI$d;

    iput-object p2, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda10;->f$1:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda10;->f$0:Lrockstarmobile/SocialClubAPI$d;

    iget-object v1, p0, Lrockstarmobile/SocialClubAPI$$ExternalSyntheticLambda10;->f$1:Ljava/util/Date;

    invoke-static {v0, v1, p1, p2, p3}, Lrockstarmobile/SocialClubAPI;->lambda$refresh$23(Lrockstarmobile/SocialClubAPI$d;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
