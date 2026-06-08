.class public final Lcom/rockstargames/hal/O;
.super Landroid/widget/EditText;


# instance fields
.field public a:Z

.field public b:Z

.field final synthetic c:Lcom/rockstargames/hal/andTextInput;

.field private d:Lcom/rockstargames/hal/PackedImage;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andTextInput;)V
    .locals 1

    iput-object p1, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/hal/O;->d:Lcom/rockstargames/hal/PackedImage;

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/O;->setId(I)V

    new-instance v0, Lcom/rockstargames/hal/P;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/P;-><init>(Lcom/rockstargames/hal/O;Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/O;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/rockstargames/hal/Q;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/Q;-><init>(Lcom/rockstargames/hal/O;Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/O;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/rockstargames/hal/R;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/R;-><init>(Lcom/rockstargames/hal/O;Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/O;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/rockstargames/hal/S;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/S;-><init>(Lcom/rockstargames/hal/O;Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/O;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v0}, Lcom/rockstargames/hal/andTextInput;->access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v0}, Lcom/rockstargames/hal/andTextInput;->access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v1}, Lcom/rockstargames/hal/andTextInput;->access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/O;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/rockstargames/hal/O;->d:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/O;->d:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {p0}, Lcom/rockstargames/hal/O;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/O;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/rockstargames/hal/PackedImage;->Draw(Landroid/graphics/Canvas;IIZ)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x61

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget-object v3, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget v3, v3, Lcom/rockstargames/hal/andTextInput;->handle:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/O;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/rockstargames/hal/andTextInput;->onFocusLost(ILjava/lang/String;)V

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/rockstargames/hal/O;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/rockstargames/hal/O;->clearFocus()V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget-object v0, v0, Lcom/rockstargames/hal/andTextInput;->highlight:Lcom/rockstargames/hal/G;

    invoke-virtual {v0}, Lcom/rockstargames/hal/G;->getVisibility()I

    move-result v0

    iget-object v3, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget-object v3, v3, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    if-nez v0, :cond_2

    const/16 v0, 0x60

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onSelectionChanged(II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/rockstargames/hal/O;->getSelectionStart()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/rockstargames/hal/O;->a:Z

    :cond_0
    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/rockstargames/hal/O;->a:Z

    :cond_1
    invoke-virtual {p0}, Lcom/rockstargames/hal/O;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    iput-boolean v3, p0, Lcom/rockstargames/hal/O;->b:Z

    :cond_2
    invoke-virtual {p0}, Lcom/rockstargames/hal/O;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eq v0, v1, :cond_3

    iput-boolean v2, p0, Lcom/rockstargames/hal/O;->b:Z

    :cond_3
    return-void
.end method

.method public final setFocused(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget-object v1, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget v1, v1, Lcom/rockstargames/hal/andTextInput;->handle:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/O;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andTextInput;->onFocusGained(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget-object v1, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    iget v1, v1, Lcom/rockstargames/hal/andTextInput;->handle:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/O;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andTextInput;->onFocusLost(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final setMaxLength(I)V
    .locals 2

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iget-object v1, p0, Lcom/rockstargames/hal/O;->c:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v1}, Lcom/rockstargames/hal/andTextInput;->access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/rockstargames/hal/O;->a()V

    return-void
.end method

.method public final setPackedImage(Lcom/rockstargames/hal/PackedImage;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/O;->d:Lcom/rockstargames/hal/PackedImage;

    return-void
.end method
