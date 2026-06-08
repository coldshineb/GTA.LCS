.class public Lcom/rockstargames/hal/andButton;
.super Lcom/rockstargames/hal/andLabel;


# static fields
.field private static blankDrawable:Landroid/graphics/drawable/StateListDrawable;

.field static staticCount:I


# instance fields
.field private SavedHeight:F

.field private SavedWidth:F

.field private highlightON:Z

.field isTogglebutton:Z

.field pressedPacked:Lcom/rockstargames/hal/PackedImage;

.field private textScale:F

.field private textView:Landroid/widget/TextView;

.field unpressedPacked:Lcom/rockstargames/hal/PackedImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andButton;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const/16 v4, 0x96

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/rockstargames/hal/andLabel;-><init>(IZ)V

    iput v0, p0, Lcom/rockstargames/hal/andButton;->SavedHeight:F

    iput v0, p0, Lcom/rockstargames/hal/andButton;->SavedWidth:F

    iput-boolean v3, p0, Lcom/rockstargames/hal/andButton;->isTogglebutton:Z

    new-instance v0, Lcom/rockstargames/hal/k;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/k;-><init>(Lcom/rockstargames/hal/andButton;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andButton;->setView(Landroid/view/View;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/rockstargames/hal/andButton;->textScale:F

    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->container:Lcom/rockstargames/hal/ContainerLayout;

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iget-object v1, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    sget-object v0, Lcom/rockstargames/hal/andButton;->blankDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andButton;->blankDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v3, [I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getImageButton()Lcom/rockstargames/hal/k;

    move-result-object v0

    sget-object v1, Lcom/rockstargames/hal/andButton;->blankDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/rockstargames/hal/andButton;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andButton;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andButton;
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/andButton;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andButton;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public SetIsToggleButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rockstargames/hal/andButton;->isTogglebutton:Z

    return-void
.end method

.method protected finalize()V
    .locals 1

    sget v0, Lcom/rockstargames/hal/andButton;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andButton;->staticCount:I

    invoke-super {p0}, Lcom/rockstargames/hal/andLabel;->finalize()V

    return-void
.end method

.method protected getImageButton()Lcom/rockstargames/hal/k;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/k;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public native onTouchCancel(I)V
.end method

.method public native onTouchDown(I)V
.end method

.method public native onTouchMove(I)V
.end method

.method public native onTouchUp(I)V
.end method

.method public setBackgroundImages(Lcom/rockstargames/hal/andImage;Lcom/rockstargames/hal/andImage;)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p2}, Lcom/rockstargames/hal/andImage;->getPackedImage()Lcom/rockstargames/hal/PackedImage;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andButton;->unpressedPacked:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getImageButton()Lcom/rockstargames/hal/k;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/andButton;->unpressedPacked:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/k;->setPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    :cond_0
    return-void

    :cond_1
    move-object p2, p1

    goto :goto_0
.end method

.method public setBounds(FFFFFF)V
    .locals 5

    const v4, 0x3f666666    # 0.9f

    const/4 v3, 0x0

    invoke-super/range {p0 .. p6}, Lcom/rockstargames/hal/andLabel;->setBounds(FFFFFF)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iput v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iput v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    float-to-int v1, p3

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    float-to-int v1, p4

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/rockstargames/hal/andButton;->textScale:F

    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/rockstargames/hal/andButton;->width:F

    mul-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/rockstargames/hal/andButton;->textScale:F

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/rockstargames/hal/andButton;->textScale:F

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andButton;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/widget/TextView;->measure(II)V

    goto :goto_0

    :cond_0
    iput p3, p0, Lcom/rockstargames/hal/andButton;->SavedWidth:F

    iput p4, p0, Lcom/rockstargames/hal/andButton;->SavedHeight:F

    return-void
.end method

.method public setFont(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setHighlightView(Z)V
    .locals 9

    const/4 v7, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/k;

    iget-object v1, v0, Lcom/rockstargames/hal/k;->a:Lcom/rockstargames/hal/PackedImage;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/rockstargames/hal/andButton;->isTogglebutton:Z

    if-nez v1, :cond_5

    if-eqz p1, :cond_2

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, -0x666667

    invoke-direct {v1, v2, v7}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v1, v0, Lcom/rockstargames/hal/k;->b:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-virtual {v0}, Lcom/rockstargames/hal/k;->invalidate()V

    iput-boolean p1, p0, Lcom/rockstargames/hal/andButton;->highlightON:Z

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lcom/rockstargames/hal/andButton;->SavedWidth:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_0

    iget v0, p0, Lcom/rockstargames/hal/andButton;->width:F

    iput v0, p0, Lcom/rockstargames/hal/andButton;->SavedWidth:F

    :cond_0
    iget v0, p0, Lcom/rockstargames/hal/andButton;->SavedHeight:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/rockstargames/hal/andButton;->height:F

    iput v0, p0, Lcom/rockstargames/hal/andButton;->SavedHeight:F

    :cond_1
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/rockstargames/hal/andButton;->originX:F

    sub-float v1, v0, v8

    iget v0, p0, Lcom/rockstargames/hal/andButton;->originY:F

    sub-float v2, v0, v8

    iget v0, p0, Lcom/rockstargames/hal/andButton;->SavedWidth:F

    add-float v3, v0, v4

    iget v0, p0, Lcom/rockstargames/hal/andButton;->SavedHeight:F

    add-float/2addr v4, v0

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/rockstargames/hal/andButton;->setBounds(FFFFFF)V

    :goto_1
    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andButton;

    iget v1, v0, Lcom/rockstargames/hal/andButton;->originX:F

    add-float/2addr v1, v8

    iget v2, v0, Lcom/rockstargames/hal/andButton;->originY:F

    add-float/2addr v2, v8

    iget v3, v0, Lcom/rockstargames/hal/andButton;->width:F

    iget v4, v0, Lcom/rockstargames/hal/andButton;->height:F

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/rockstargames/hal/andButton;->setBounds(FFFFFF)V

    iget-object v0, v0, Lcom/rockstargames/hal/andButton;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/rockstargames/hal/k;->b:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/rockstargames/hal/andButton;->originX:F

    add-float v1, v0, v8

    iget v0, p0, Lcom/rockstargames/hal/andButton;->originY:F

    add-float v2, v0, v8

    iget v0, p0, Lcom/rockstargames/hal/andButton;->SavedWidth:F

    sub-float v3, v0, v4

    iget v0, p0, Lcom/rockstargames/hal/andButton;->SavedHeight:F

    sub-float v4, v0, v4

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/rockstargames/hal/andButton;->setBounds(FFFFFF)V

    :goto_2
    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andButton;

    iget v1, v0, Lcom/rockstargames/hal/andButton;->originX:F

    sub-float/2addr v1, v8

    iget v2, v0, Lcom/rockstargames/hal/andButton;->originY:F

    sub-float/2addr v2, v8

    iget v3, v0, Lcom/rockstargames/hal/andButton;->width:F

    iget v4, v0, Lcom/rockstargames/hal/andButton;->height:F

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/rockstargames/hal/andButton;->setBounds(FFFFFF)V

    iget-object v0, v0, Lcom/rockstargames/hal/andButton;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :goto_3
    return-void

    :cond_5
    invoke-super {p0, p1}, Lcom/rockstargames/hal/andLabel;->setHighlightView(Z)V

    iput-boolean p1, p0, Lcom/rockstargames/hal/andButton;->highlightON:Z

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_3
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColour(I)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, p1, v1

    iget v2, p0, Lcom/rockstargames/hal/andButton;->textScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
