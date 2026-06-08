.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/Rockstar$Callback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/Rockstar$GateCompletionCallback;

.field public final synthetic f$1:Lrockstarmobile/Rockstar$c;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/Rockstar$GateCompletionCallback;Lrockstarmobile/Rockstar$c;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda28;->f$0:Lrockstarmobile/Rockstar$GateCompletionCallback;

    iput-object p2, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda28;->f$1:Lrockstarmobile/Rockstar$c;

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda28;->f$0:Lrockstarmobile/Rockstar$GateCompletionCallback;

    iget-object v1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda28;->f$1:Lrockstarmobile/Rockstar$c;

    invoke-static {v0, v1}, Lrockstarmobile/Rockstar;->lambda$showGate$36(Lrockstarmobile/Rockstar$GateCompletionCallback;Lrockstarmobile/Rockstar$c;)V

    return-void
.end method
