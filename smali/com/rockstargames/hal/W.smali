.class public final Lcom/rockstargames/hal/W;
.super Landroid/widget/ScrollView;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/andView;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/rockstargames/hal/W;->a:Lcom/rockstargames/hal/andView;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/W;->setId(I)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/W;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/rockstargames/hal/W;->a:Lcom/rockstargames/hal/andView;

    iget-object v1, p0, Lcom/rockstargames/hal/W;->a:Lcom/rockstargames/hal/andView;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andView;->onAttachedToWindow(I)V

    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

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
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "andDropDownList"

    const-string v1, "Trying to hide keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
