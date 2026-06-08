.class public Lcom/rockstargames/hal/andDropDownList$andDropDownListImpl;
.super Landroid/widget/Spinner;
.source "andDropDownList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andDropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andDropDownListImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andDropDownList;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andDropDownList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/rockstargames/hal/andDropDownList$andDropDownListImpl;->this$0:Lcom/rockstargames/hal/andDropDownList;

    .line 154
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andDropDownList$andDropDownListImpl;->setId(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 161
    invoke-super {p0}, Landroid/widget/Spinner;->onAttachedToWindow()V

    .line 162
    iget-object v0, p0, Lcom/rockstargames/hal/andDropDownList$andDropDownListImpl;->this$0:Lcom/rockstargames/hal/andDropDownList;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andDropDownList;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andDropDownList;->onAttachedToWindow(I)V

    return-void
.end method
