.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/utilities/HttpAPI$SuccessCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/GCState$Config;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/GCState$Config;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda32;->f$0:Lrockstarmobile/GCState$Config;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda32;->f$0:Lrockstarmobile/GCState$Config;

    check-cast p1, Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;

    invoke-static {v0, p1}, Lrockstarmobile/Rockstar;->lambda$configCheck$18(Lrockstarmobile/GCState$Config;Lrockstarmobile/RockstarMobileAPI$checkConfigResponse;)V

    return-void
.end method
