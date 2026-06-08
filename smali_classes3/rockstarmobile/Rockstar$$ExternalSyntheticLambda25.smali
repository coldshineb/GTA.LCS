.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/Rockstar$TCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/Rockstar$Callback;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/Rockstar$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda25;->f$0:Lrockstarmobile/Rockstar$Callback;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda25;->f$0:Lrockstarmobile/Rockstar$Callback;

    check-cast p1, Lrockstarmobile/ui/FlutterScreenHost;

    invoke-static {v0, p1}, Lrockstarmobile/Rockstar;->lambda$login$10(Lrockstarmobile/Rockstar$Callback;Lrockstarmobile/ui/FlutterScreenHost;)V

    return-void
.end method
