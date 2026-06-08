.class final Lcom/rockstargames/hal/A;
.super Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method
