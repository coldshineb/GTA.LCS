.class Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;
.super Ljava/lang/Object;
.source "andTextInput.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 364
    iput-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iput-object p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;->val$this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 368
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/16 p3, 0x42

    if-ne p2, p3, :cond_0

    .line 370
    iget-object p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object p2, p2, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget-object p3, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object p3, p3, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget p3, p3, Lcom/rockstargames/hal/andTextInput;->handle:I

    iget-object v1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/rockstargames/hal/andTextInput;->onEnterKey(ILjava/lang/String;)V

    .line 373
    check-cast p1, Landroid/widget/TextView;

    .line 374
    invoke-virtual {p1}, Landroid/widget/TextView;->clearComposingText()V

    .line 375
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCursorVisible(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
