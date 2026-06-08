.class public final synthetic Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/ui/TrialBanner;

.field public final synthetic f$1:Landroid/view/ViewGroup;

.field public final synthetic f$2:Lrockstarmobile/Rockstar$Callback;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/ui/TrialBanner;Landroid/view/ViewGroup;Lrockstarmobile/Rockstar$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda2;->f$0:Lrockstarmobile/ui/TrialBanner;

    iput-object p2, p0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda2;->f$1:Landroid/view/ViewGroup;

    iput-object p3, p0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda2;->f$2:Lrockstarmobile/Rockstar$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda2;->f$0:Lrockstarmobile/ui/TrialBanner;

    iget-object v1, p0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda2;->f$1:Landroid/view/ViewGroup;

    iget-object v2, p0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda2;->f$2:Lrockstarmobile/Rockstar$Callback;

    invoke-virtual {v0, v1, v2}, Lrockstarmobile/ui/TrialBanner;->lambda$build$4$rockstarmobile-ui-TrialBanner(Landroid/view/ViewGroup;Lrockstarmobile/Rockstar$Callback;)V

    return-void
.end method
