.class public Lcom/rockstargames/hal/andTextInput;
.super Lcom/rockstargames/hal/andLabel;


# static fields
.field static staticCount:I


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field private clearOnFocus:Z

.field private filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/InputFilter;",
            ">;"
        }
    .end annotation
.end field

.field private isPasswordInput:Z

.field setProgrammatically:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/rockstargames/hal/andLabel;-><init>(IZ)V

    iput-boolean v1, p0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    iput-boolean v1, p0, Lcom/rockstargames/hal/andTextInput;->isPasswordInput:Z

    iput-boolean v1, p0, Lcom/rockstargames/hal/andTextInput;->clearOnFocus:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andTextInput;->filters:Ljava/util/ArrayList;

    new-instance v0, Lcom/rockstargames/hal/O;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/O;-><init>(Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTextInput;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->setNoNextFocusView()V

    invoke-direct {p0}, Lcom/rockstargames/hal/andTextInput;->setRemoveContextMenuFromInput()V

    sget v0, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/andTextInput;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->clearOnFocus:Z

    return v0
.end method

.method static synthetic access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->filters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static createView(I)Lcom/rockstargames/hal/andTextInput;
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/andTextInput;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andTextInput;-><init>(I)V

    return-object v0
.end method

.method private setRemoveContextMenuFromInput()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setTextIsSelectable(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    new-instance v1, Lcom/rockstargames/hal/K;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/K;-><init>(Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    new-instance v1, Lcom/rockstargames/hal/L;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/L;-><init>(Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    goto :goto_0
.end method


# virtual methods
.method public IsCursorAtEnd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/O;

    iget-boolean v0, v0, Lcom/rockstargames/hal/O;->b:Z

    return v0
.end method

.method public IsCursorAtStart()Z
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/O;

    iget-boolean v0, v0, Lcom/rockstargames/hal/O;->a:Z

    return v0
.end method

.method protected finalize()V
    .locals 1

    sget v0, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    invoke-super {p0}, Lcom/rockstargames/hal/andLabel;->finalize()V

    return-void
.end method

.method public native onEnterKey(ILjava/lang/String;)V
.end method

.method public native onFocusGained(ILjava/lang/String;)V
.end method

.method public native onFocusLost(ILjava/lang/String;)V
.end method

.method public setBackgroundImage(Lcom/rockstargames/hal/andImage;)V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    invoke-virtual {p1}, Lcom/rockstargames/hal/andImage;->getPackedImage()Lcom/rockstargames/hal/PackedImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    return-void
.end method

.method public setBackgroundTransparent()V
    .locals 0

    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-super/range {v0 .. v6}, Lcom/rockstargames/hal/andLabel;->setBounds(FFFFFF)V

    return-void
.end method

.method public setClearOnFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rockstargames/hal/andTextInput;->clearOnFocus:Z

    return-void
.end method

.method public setEmail(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    const v1, 0x80021

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setInputType(I)V

    return-void
.end method

.method public setHighlightView(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/O;

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/O;->setFocused(Z)V

    if-eqz p1, :cond_0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->requestFocus(I)Z

    :cond_0
    return-void
.end method

.method public setLicensePlateInput()V
    .locals 3

    new-instance v0, Lcom/rockstargames/hal/J;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/J;-><init>(Lcom/rockstargames/hal/andTextInput;)V

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iget-object v2, p0, Lcom/rockstargames/hal/andTextInput;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    invoke-virtual {v0}, Lcom/rockstargames/hal/O;->a()V

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    const v1, 0x81001

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setInputType(I)V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/O;->setMaxLength(I)V

    return-void
.end method

.method public setNextFocusView(Lcom/rockstargames/hal/andView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusForwardId(I)V

    return-void
.end method

.method public setNoNextFocusView()V
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method public setNumberInput()V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setInputType(I)V

    return-void
.end method

.method public setPassword(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->isPasswordInput:Z

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setInputType(I)V

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setPrevFocusView(Lcom/rockstargames/hal/andView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    invoke-super {p0, p1}, Lcom/rockstargames/hal/andLabel;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTextAlignment(I)V
    .locals 2

    sget-object v0, Lcom/rockstargames/hal/M;->a:[I

    invoke-static {}, Lcom/rockstargames/hal/N;->a()[I

    move-result-object v1

    aget v1, v1, p1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setGravity(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setGravity(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setGravity(I)V

    goto :goto_0

    :pswitch_3
    const-string v0, "andTextInput"

    const-string v1, "WARNING: Justified alignment not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setGravity(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setTextSize(F)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/rockstargames/hal/andLabel;->setTextSize(F)V

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setSingleLine(Z)V

    iget-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->isPasswordInput:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setInputType(I)V

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/O;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public setWatermarkText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/O;

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/O;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public native textChanged(ILjava/lang/String;)V
.end method
