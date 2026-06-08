.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/Rockstar$Callback;

.field public final synthetic f$1:Lrockstarmobile/Rockstar$GateCompletionCallback;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/Rockstar$Callback;Lrockstarmobile/Rockstar$GateCompletionCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda29;->f$0:Lrockstarmobile/Rockstar$Callback;

    iput-object p2, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda29;->f$1:Lrockstarmobile/Rockstar$GateCompletionCallback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda29;->f$0:Lrockstarmobile/Rockstar$Callback;

    iget-object v1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda29;->f$1:Lrockstarmobile/Rockstar$GateCompletionCallback;

    invoke-static {v0, v1, p1, p2}, Lrockstarmobile/Rockstar;->lambda$showGate$37(Lrockstarmobile/Rockstar$Callback;Lrockstarmobile/Rockstar$GateCompletionCallback;Landroid/content/DialogInterface;I)V

    return-void
.end method
