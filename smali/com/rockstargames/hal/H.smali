.class public final Lcom/rockstargames/hal/H;
.super Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andSpinner;)V
    .locals 1

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/H;->setIndeterminate(Z)V

    return-void
.end method
