.class final Lcom/rockstargames/hal/S;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/O;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/O;Lcom/rockstargames/hal/andTextInput;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/S;->a:Lcom/rockstargames/hal/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v0, p0, Lcom/rockstargames/hal/S;->a:Lcom/rockstargames/hal/O;

    iget-object v0, v0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget-boolean v0, v0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/S;->a:Lcom/rockstargames/hal/O;

    iget-object v0, v0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/S;->a:Lcom/rockstargames/hal/O;

    iget-object v0, v0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget-object v1, p0, Lcom/rockstargames/hal/S;->a:Lcom/rockstargames/hal/O;

    iget-object v1, v1, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget v1, v1, Lcom/rockstargames/hal/andTextInput;->handle:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andTextInput;->textChanged(ILjava/lang/String;)V

    goto :goto_0
.end method
