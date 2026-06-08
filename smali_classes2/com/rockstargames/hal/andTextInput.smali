.class public Lcom/rockstargames/hal/andTextInput;
.super Lcom/rockstargames/hal/andLabel;
.source "andTextInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andTextInput$andTextInputImpl;,
        Lcom/rockstargames/hal/andTextInput$TextAlignment;
    }
.end annotation


# static fields
.field static staticCount:I


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field private clearOnFocus:Z

.field private filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/InputFilter;",
            ">;"
        }
    .end annotation
.end field

.field private isPasswordInput:Z

.field setProgrammatically:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/rockstargames/hal/andLabel;-><init>(IZ)V

    .line 136
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    .line 137
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->isPasswordInput:Z

    .line 138
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->clearOnFocus:Z

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/andTextInput;->filters:Ljava/util/ArrayList;

    .line 46
    new-instance p1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-direct {p1, p0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;-><init>(Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andTextInput;->setView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 50
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->setNoNextFocusView()V

    .line 54
    invoke-direct {p0}, Lcom/rockstargames/hal/andTextInput;->setRemoveContextMenuFromInput()V

    .line 57
    sget p1, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    add-int/2addr p1, v1

    sput p1, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    .line 58
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/andTextInput;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/rockstargames/hal/andTextInput;->clearOnFocus:Z

    return p0
.end method

.method static synthetic access$100(Lcom/rockstargames/hal/andTextInput;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/rockstargames/hal/andTextInput;->filters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static createView(I)Lcom/rockstargames/hal/andTextInput;
    .locals 1

    .line 179
    new-instance v0, Lcom/rockstargames/hal/andTextInput;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andTextInput;-><init>(I)V

    return-object v0
.end method

.method private setRemoveContextMenuFromInput()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setLongClickable(Z)V

    .line 259
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setTextIsSelectable(Z)V

    .line 270
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    new-instance v1, Lcom/rockstargames/hal/andTextInput$3;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/andTextInput$3;-><init>(Lcom/rockstargames/hal/andTextInput;)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method


# virtual methods
.method public IsCursorAtEnd()Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-boolean v0, v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->CursorAtEnd:Z

    return v0
.end method

.method public IsCursorAtStart()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    iget-boolean v0, v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->CursorAtStart:Z

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 130
    sget v0, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    .line 131
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
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    .line 298
    invoke-virtual {p1}, Lcom/rockstargames/hal/andImage;->getPackedImage()Lcom/rockstargames/hal/PackedImage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    return-void
.end method

.method public setBackgroundTransparent()V
    .locals 0

    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 172
    invoke-super/range {v0 .. v6}, Lcom/rockstargames/hal/andLabel;->setBounds(FFFFFF)V

    return-void
.end method

.method public setClearOnFocus(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/rockstargames/hal/andTextInput;->clearOnFocus:Z

    return-void
.end method

.method public setEmail(Z)V
    .locals 1

    const/4 p1, 0x1

    .line 184
    iput-boolean p1, p0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    .line 185
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast p1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const v0, 0x80021

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setInputType(I)V

    return-void
.end method

.method public setHighlightView(Z)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    .line 75
    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setFocused(Z)V

    if-eqz p1, :cond_0

    const/16 p1, 0x42

    .line 78
    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->requestFocus(I)Z

    :cond_0
    return-void
.end method

.method public setLicensePlateInput()V
    .locals 3

    .line 205
    new-instance v0, Lcom/rockstargames/hal/andTextInput$1;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andTextInput$1;-><init>(Lcom/rockstargames/hal/andTextInput;)V

    .line 248
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 249
    iget-object v2, p0, Lcom/rockstargames/hal/andTextInput;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->updateFilters()V

    .line 253
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const v1, 0x81001

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setInputType(I)V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    .line 304
    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setMaxLength(I)V

    return-void
.end method

.method public setNextFocusView(Lcom/rockstargames/hal/andView;)V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 104
    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 105
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 110
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusForwardId(I)V

    return-void
.end method

.method public setNoNextFocusView()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method public setNumberInput()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setInputType(I)V

    return-void
.end method

.method public setPassword(Z)V
    .locals 1

    const/4 p1, 0x1

    .line 191
    iput-boolean p1, p0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    .line 192
    iput-boolean p1, p0, Lcom/rockstargames/hal/andTextInput;->isPasswordInput:Z

    .line 193
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast p1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setInputType(I)V

    .line 194
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast p1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setPrevFocusView(Lcom/rockstargames/hal/andView;)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 117
    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 118
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTextInput;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusLeftId(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/rockstargames/hal/andTextInput;->setProgrammatically:Z

    .line 146
    invoke-super {p0, p1}, Lcom/rockstargames/hal/andLabel;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTextAlignment(I)V
    .locals 2

    .line 323
    invoke-static {}, Lcom/rockstargames/hal/andTextInput$TextAlignment;->values()[Lcom/rockstargames/hal/andTextInput$TextAlignment;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/rockstargames/hal/andTextInput$TextAlignment;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast p1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setGravity(I)V

    return-void

    .line 335
    :cond_1
    const-string p1, "andTextInput"

    const-string v0, "WARNING: Justified alignment not implemented yet."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast p1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setGravity(I)V

    return-void

    .line 329
    :cond_3
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast p1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-virtual {p1, v1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setGravity(I)V

    return-void

    .line 326
    :cond_4
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast p1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setGravity(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Lcom/rockstargames/hal/andLabel;->setTextSize(F)V

    .line 154
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast p1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setSingleLine(Z)V

    .line 155
    iget-boolean p1, p0, Lcom/rockstargames/hal/andTextInput;->isPasswordInput:Z

    if-ne p1, v0, :cond_0

    .line 157
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast p1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setInputType(I)V

    .line 158
    iget-object p1, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast p1, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public setWatermarkText(Ljava/lang/String;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/rockstargames/hal/andTextInput;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andTextInput$andTextInputImpl;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public native textChanged(ILjava/lang/String;)V
.end method
