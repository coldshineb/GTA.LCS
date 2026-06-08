.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/Rockstar$TCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/Rockstar$TCallback;

.field public final synthetic f$1:Lrockstarmobile/RockstarUser;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/Rockstar$TCallback;Lrockstarmobile/RockstarUser;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda36;->f$0:Lrockstarmobile/Rockstar$TCallback;

    iput-object p2, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda36;->f$1:Lrockstarmobile/RockstarUser;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda36;->f$0:Lrockstarmobile/Rockstar$TCallback;

    iget-object v1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda36;->f$1:Lrockstarmobile/RockstarUser;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lrockstarmobile/Rockstar;->lambda$requireTermsAccepted$31(Lrockstarmobile/Rockstar$TCallback;Lrockstarmobile/RockstarUser;Ljava/lang/Boolean;)V

    return-void
.end method
