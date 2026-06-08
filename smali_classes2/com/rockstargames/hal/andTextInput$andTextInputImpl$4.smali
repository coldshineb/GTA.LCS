.class Lcom/rockstargames/hal/andTextInput$andTextInputImpl$4;
.super Ljava/lang/Object;
.source "andTextInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 425
    iput-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$4;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iput-object p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$4;->val$this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 430
    iget-object p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$4;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object p2, p2, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget-boolean p2, p2, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    if-eqz p2, :cond_0

    .line 432
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$4;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object p1, p1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    return-void

    .line 436
    :cond_0
    iget-object p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$4;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object p2, p2, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget-object p3, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$4;->this$1:Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-object p3, p3, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget p3, p3, Lcom/rockstargames/hal/andTextInput;->handle:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/rockstargames/hal/andTextInput;->textChanged(ILjava/lang/String;)V

    return-void
.end method
