.class public Lcom/rockstargames/hal/andView$andViewImpl;
.super Landroid/widget/ScrollView;
.source "andView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andViewImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andView;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 417
    iput-object p1, p0, Lcom/rockstargames/hal/andView$andViewImpl;->this$0:Lcom/rockstargames/hal/andView;

    .line 418
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 419
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/rockstargames/hal/andView$andViewImpl;->setId(I)V

    .line 420
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andView$andViewImpl;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 426
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 427
    iget-object v0, p0, Lcom/rockstargames/hal/andView$andViewImpl;->this$0:Lcom/rockstargames/hal/andView;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andView;->onAttachedToWindow(I)V

    .line 431
    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 432
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 433
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 437
    :catch_0
    const-string v0, "andDropDownList"

    const-string v1, "Trying to hide keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
