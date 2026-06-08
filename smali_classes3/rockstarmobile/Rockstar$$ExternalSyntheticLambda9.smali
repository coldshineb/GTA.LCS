.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/Rockstar$TCallback;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/Rockstar$TCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda9;->f$0:Lrockstarmobile/Rockstar$TCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda9;->f$0:Lrockstarmobile/Rockstar$TCallback;

    invoke-static {v0}, Lrockstarmobile/Rockstar;->lambda$logout$8(Lrockstarmobile/Rockstar$TCallback;)V

    return-void
.end method
