.class public final Lcom/rockstargames/hal/p;
.super Landroid/widget/Spinner;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/andDropDownList;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andDropDownList;)V
    .locals 1

    iput-object p1, p0, Lcom/rockstargames/hal/p;->a:Lcom/rockstargames/hal/andDropDownList;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/p;->setId(I)V

    return-void
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Spinner;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/rockstargames/hal/p;->a:Lcom/rockstargames/hal/andDropDownList;

    iget-object v1, p0, Lcom/rockstargames/hal/p;->a:Lcom/rockstargames/hal/andDropDownList;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andDropDownList;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andDropDownList;->onAttachedToWindow(I)V

    return-void
.end method
