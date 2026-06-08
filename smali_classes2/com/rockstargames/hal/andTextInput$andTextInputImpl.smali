.class public Lcom/rockstargames/hal/andTextInput$andTextInputImpl;
.super Landroid/widget/EditText;
.source "andTextInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andTextInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andTextInputImpl"
.end annotation


# instance fields
.field public CursorAtEnd:Z

.field public CursorAtStart:Z

.field attached:Z

.field packedImage:Lcom/rockstargames/hal/PackedImage;

.field final synthetic this$0:Lcom/rockstargames/hal/andTextInput;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andTextInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 355
    iput-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    .line 356
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 351
    iput-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->attached:Z

    .line 358
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setId(I)V

    .line 363
    new-instance v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$1;-><init>(Lcom/rockstargames/hal/andTextInput$andTextInputImpl;Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 385
    new-instance v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$2;-><init>(Lcom/rockstargames/hal/andTextInput$andTextInputImpl;Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 395
    new-instance v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$3;-><init>(Lcom/rockstargames/hal/andTextInput$andTextInputImpl;Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 424
    new-instance v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl$4;-><init>(Lcom/rockstargames/hal/andTextInput$andTextInputImpl;Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public isAttached()Z
    .locals 1

    .line 522
    iget-boolean v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->attached:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 509
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 510
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->attached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 516
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->attached:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/rockstargames/hal/PackedImage;->Draw(Landroid/graphics/Canvas;IIZ)V

    .line 537
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 454
    const-string v2, "input_method"

    const/4 v3, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x61

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 457
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget p2, p1, Lcom/rockstargames/hal/andTextInput;->handle:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/rockstargames/hal/andTextInput;->onFocusLost(ILjava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 460
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 462
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->clearFocus()V

    return v3

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget-object v0, v0, Lcom/rockstargames/hal/andTextInput;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andSelectionRect;->getVisibility()I

    move-result v0

    iget-object v4, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget-object v4, v4, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    if-nez v0, :cond_2

    const/16 v0, 0x60

    if-ne p1, v0, :cond_2

    .line 467
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 473
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 475
    invoke-virtual {p2, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return v1

    .line 481
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    .line 486
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getSelectionStart()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 489
    iput-boolean p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->CursorAtStart:Z

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 493
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->CursorAtStart:Z

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 497
    iput-boolean p2, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->CursorAtEnd:Z

    .line 499
    :cond_2
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 501
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->CursorAtEnd:Z

    :cond_3
    return-void
.end method

.method public setFocused(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 559
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget v0, p1, Lcom/rockstargames/hal/andTextInput;->handle:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/rockstargames/hal/andTextInput;->onFocusGained(ILjava/lang/String;)V

    return-void

    .line 563
    :cond_0
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    iget v0, p1, Lcom/rockstargames/hal/andTextInput;->handle:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/rockstargames/hal/andTextInput;->onFocusLost(ILjava/lang/String;)V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 1

    .line 542
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 543
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-static {p1}, Lcom/rockstargames/hal/andTextInput;->access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->updateFilters()V

    return-void
.end method

.method public setPackedImage(Lcom/rockstargames/hal/PackedImage;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    return-void
.end method

.method public updateFilters()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v0}, Lcom/rockstargames/hal/andTextInput;->access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v0}, Lcom/rockstargames/hal/andTextInput;->access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->this$0:Lcom/rockstargames/hal/andTextInput;

    invoke-static {v1}, Lcom/rockstargames/hal/andTextInput;->access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method
