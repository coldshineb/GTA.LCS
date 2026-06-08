.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/Rockstar$ABCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/Rockstar$TCallback;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/Rockstar$TCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda22;->f$0:Lrockstarmobile/Rockstar$TCallback;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda22;->f$0:Lrockstarmobile/Rockstar$TCallback;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lrockstarmobile/RockstarUser;

    invoke-static {v0, p1, p2}, Lrockstarmobile/Rockstar;->lambda$requireTermsAccepted$30(Lrockstarmobile/Rockstar$TCallback;Ljava/lang/Boolean;Lrockstarmobile/RockstarUser;)V

    return-void
.end method
