.class public final synthetic Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lrockstarmobile/ui/TrialBanner;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lrockstarmobile/ui/TrialBanner;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda0;->f$0:Lrockstarmobile/ui/TrialBanner;

    iput-object p2, p0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda0;->f$0:Lrockstarmobile/ui/TrialBanner;

    iget-object v1, p0, Lrockstarmobile/ui/TrialBanner$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1}, Lrockstarmobile/ui/TrialBanner;->lambda$remove$5$rockstarmobile-ui-TrialBanner(Landroid/view/View;)V

    return-void
.end method
