.class final Lcom/rockstargames/gtalcs/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/rockstargames/gtalcs/CommonAPI;->a()Lcom/rockstargames/gtalcs/GTAActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->HideLoadingScreen()V

    return-void
.end method
