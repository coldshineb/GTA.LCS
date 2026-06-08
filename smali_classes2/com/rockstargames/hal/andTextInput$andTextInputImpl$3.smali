.class Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;
.super Ljava/lang/Object;
.source "andTextInput.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/andTextInput$andTextInputImpl;-><init>(Lcom/rockstargames/hal/andTextInput;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

.field final synthetic val$this$0:Lcom/rockstargames/hal/andTextInput;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/andTextInput$andTextInputImpl;Lcom/rockstargames/hal/andTextInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 396
    iput-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iput-object p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;->val$this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 400
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 402
    iget-object p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object p2, p2, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-static {p2}, Lcom/rockstargames/hal/andTextInput;->access$000(Lcom/rockstargames/hal/andTextInput;)Z

    move-result p2

    if-ne p2, v1, :cond_0

    .line 404
    iget-object p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_0
    iget-object p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object p2, p2, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object v0, v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget v0, v0, Lcom/rockstargames/hal/andTextInput;->handle:I

    iget-object v2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-virtual {v2}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/rockstargames/hal/andTextInput;->onFocusGained(ILjava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_2

    .line 414
    iget-object p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object p2, p2, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object v0, v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget v0, v0, Lcom/rockstargames/hal/andTextInput;->handle:I

    iget-object v2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-virtual {v2}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/rockstargames/hal/andTextInput;->onFocusGained(ILjava/lang/String;)V

    .line 417
    :cond_2
    :goto_0
    check-cast p1, Landroid/widget/TextView;

    .line 418
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    const/4 p1, 0x0

    return p1
.end method
