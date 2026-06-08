.class final Lcom/rockstargames/hal/R;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/O;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/O;Lcom/rockstargames/hal/andTextInput;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/R;->a:Lcom/rockstargames/hal/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rockstargames/hal/R;->a:Lcom/rockstargames/hal/O;

    iget-object v0, v0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v0}, Lcom/rockstargames/hal/andTextInput;->access$000(Lcom/rockstargames/hal/andTextInput;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/R;->a:Lcom/rockstargames/hal/O;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/R;->a:Lcom/rockstargames/hal/O;

    iget-object v0, v0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget-object v1, p0, Lcom/rockstargames/hal/R;->a:Lcom/rockstargames/hal/O;

    iget-object v1, v1, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget v1, v1, Lcom/rockstargames/hal/andTextInput;->handle:I

    iget-object v2, p0, Lcom/rockstargames/hal/R;->a:Lcom/rockstargames/hal/O;

    invoke-virtual {v2}, Lcom/rockstargames/hal/O;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andTextInput;->onFocusGained(ILjava/lang/String;)V

    :cond_1
    :goto_0
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setCursorVisible(Z)V

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/rockstargames/hal/R;->a:Lcom/rockstargames/hal/O;

    iget-object v0, v0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget-object v1, p0, Lcom/rockstargames/hal/R;->a:Lcom/rockstargames/hal/O;

    iget-object v1, v1, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget v1, v1, Lcom/rockstargames/hal/andTextInput;->handle:I

    iget-object v2, p0, Lcom/rockstargames/hal/R;->a:Lcom/rockstargames/hal/O;

    invoke-virtual {v2}, Lcom/rockstargames/hal/O;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andTextInput;->onFocusGained(ILjava/lang/String;)V

    goto :goto_0
.end method
