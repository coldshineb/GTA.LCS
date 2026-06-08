.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/RockstarUser;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/RockstarUser;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda10;->f$0:Lrockstarmobile/RockstarUser;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda10;->f$0:Lrockstarmobile/RockstarUser;

    invoke-static {v0, p1, p2, p3}, Lrockstarmobile/Rockstar;->lambda$refreshUserGameTicket$14(Lrockstarmobile/RockstarUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
