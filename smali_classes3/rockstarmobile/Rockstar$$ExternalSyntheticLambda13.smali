.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/SocialClubAPI$CreateTicketScAuthToken2Success;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/RockstarUser;

.field public final synthetic f$1:Lrockstarmobile/Rockstar$TCallback;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/RockstarUser;Lrockstarmobile/Rockstar$TCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda13;->f$0:Lrockstarmobile/RockstarUser;

    iput-object p2, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda13;->f$1:Lrockstarmobile/Rockstar$TCallback;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda13;->f$0:Lrockstarmobile/RockstarUser;

    iget-object v1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda13;->f$1:Lrockstarmobile/Rockstar$TCallback;

    invoke-static {v0, v1, p1, p2, p3}, Lrockstarmobile/Rockstar;->lambda$checkAuthTokenValidity$16(Lrockstarmobile/RockstarUser;Lrockstarmobile/Rockstar$TCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
