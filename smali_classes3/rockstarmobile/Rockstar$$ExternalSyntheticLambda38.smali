.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/ui/BrowserScreen$AcceptTermsCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/Rockstar$Callback;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/Rockstar$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda38;->f$0:Lrockstarmobile/Rockstar$Callback;

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda38;->f$0:Lrockstarmobile/Rockstar$Callback;

    invoke-static {v0, p1}, Lrockstarmobile/Rockstar;->lambda$requireTermsAccepted$28(Lrockstarmobile/Rockstar$Callback;Z)V

    return-void
.end method
