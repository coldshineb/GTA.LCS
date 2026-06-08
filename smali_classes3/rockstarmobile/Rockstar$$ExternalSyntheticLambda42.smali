.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/Rockstar$Callback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/Rockstar$GateCompletionCallback;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/Rockstar$GateCompletionCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda42;->f$0:Lrockstarmobile/Rockstar$GateCompletionCallback;

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 1

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda42;->f$0:Lrockstarmobile/Rockstar$GateCompletionCallback;

    invoke-static {v0}, Lrockstarmobile/Rockstar;->lambda$showGate$35(Lrockstarmobile/Rockstar$GateCompletionCallback;)V

    return-void
.end method
