.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrockstarmobile/Rockstar$TCallback;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/Rockstar$ABCallback;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/Rockstar$ABCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda15;->f$0:Lrockstarmobile/Rockstar$ABCallback;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda15;->f$0:Lrockstarmobile/Rockstar$ABCallback;

    check-cast p1, Lrockstarmobile/ui/FlutterScreenHost;

    invoke-static {v0, p1}, Lrockstarmobile/Rockstar;->lambda$startUserAuthentication$22(Lrockstarmobile/Rockstar$ABCallback;Lrockstarmobile/ui/FlutterScreenHost;)V

    return-void
.end method
