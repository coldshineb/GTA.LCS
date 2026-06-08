.class final Lcom/rockstargames/hal/P;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/O;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/O;Lcom/rockstargames/hal/andTextInput;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/P;->a:Lcom/rockstargames/hal/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/rockstargames/hal/P;->a:Lcom/rockstargames/hal/O;

    iget-object v1, v1, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget-object v2, p0, Lcom/rockstargames/hal/P;->a:Lcom/rockstargames/hal/O;

    iget-object v2, v2, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget v2, v2, Lcom/rockstargames/hal/andTextInput;->handle:I

    iget-object v3, p0, Lcom/rockstargames/hal/P;->a:Lcom/rockstargames/hal/O;

    invoke-virtual {v3}, Lcom/rockstargames/hal/O;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/rockstargames/hal/andTextInput;->onEnterKey(ILjava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearComposingText()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCursorVisible(Z)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
