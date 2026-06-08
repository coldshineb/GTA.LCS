.class public Lcom/rockstargames/hal/andSpinner$andSpinnerImpl;
.super Landroid/widget/ProgressBar;
.source "andSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andSpinnerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andSpinner;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andSpinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/rockstargames/hal/andSpinner$andSpinnerImpl;->this$0:Lcom/rockstargames/hal/andSpinner;

    .line 30
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andSpinner$andSpinnerImpl;->setIndeterminate(Z)V

    return-void
.end method
