.class public Lcom/rockstargames/hal/andButton;
.super Lcom/rockstargames/hal/andLabel;
.source "andButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andButton$andButtonImpl;
    }
.end annotation


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
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/rockstargames/hal/andLabel;-><init>(IZ)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/rockstargames/hal/andButton;->SavedHeight:F

    .line 38
    iput p1, p0, Lcom/rockstargames/hal/andButton;->SavedWidth:F

    .line 184
    iput-boolean v0, p0, Lcom/rockstargames/hal/andButton;->isTogglebutton:Z

    .line 41
    new-instance p1, Lcom/rockstargames/hal/andButton$andButtonImpl;

    invoke-direct {p1, p0}, Lcom/rockstargames/hal/andButton$andButtonImpl;-><init>(Lcom/rockstargames/hal/andButton;)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andButton;->setView(Landroid/view/View;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 43
    iput p1, p0, Lcom/rockstargames/hal/andButton;->textScale:F

    .line 45
    iget-object p1, p0, Lcom/rockstargames/hal/andButton;->container:Lcom/rockstargames/hal/ContainerLayout;

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    .line 46
    new-instance p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v1, 0x96

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 47
    iget-object v1, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object p1, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 49
    iget-object p1, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 51
    sget-object p1, Lcom/rockstargames/hal/andButton;->blankDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez p1, :cond_0

    .line 52
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sput-object p1, Lcom/rockstargames/hal/andButton;->blankDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 53
    new-array v2, v0, [I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getImageButton()Lcom/rockstargames/hal/andButton$andButtonImpl;

    move-result-object p1

    sget-object v0, Lcom/rockstargames/hal/andButton;->blankDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andButton$andButtonImpl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    sget p1, Lcom/rockstargames/hal/andButton;->staticCount:I

    add-int/2addr p1, v1

    sput p1, Lcom/rockstargames/hal/andButton;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andButton;
    .locals 1

    .line 131
    new-instance v0, Lcom/rockstargames/hal/andButton;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andButton;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public SetIsToggleButton(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/rockstargames/hal/andButton;->isTogglebutton:Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    sget v0, Lcom/rockstargames/hal/andButton;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andButton;->staticCount:I

    .line 127
    invoke-super {p0}, Lcom/rockstargames/hal/andLabel;->finalize()V

    return-void
.end method

.method protected getImageButton()Lcom/rockstargames/hal/andButton$andButtonImpl;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andButton$andButtonImpl;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 146
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
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    return-void

    .line 193
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/rockstargames/hal/andImage;->getPackedImage()Lcom/rockstargames/hal/PackedImage;

    move-result-object p1

    iput-object p1, p0, Lcom/rockstargames/hal/andButton;->unpressedPacked:Lcom/rockstargames/hal/PackedImage;

    .line 195
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getImageButton()Lcom/rockstargames/hal/andButton$andButtonImpl;

    move-result-object p1

    iget-object p2, p0, Lcom/rockstargames/hal/andButton;->unpressedPacked:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {p1, p2}, Lcom/rockstargames/hal/andButton$andButtonImpl;->setPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 2

    .line 163
    invoke-super/range {p0 .. p6}, Lcom/rockstargames/hal/andLabel;->setBounds(FFFFFF)V

    move-object p1, p0

    .line 164
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 p5, 0x0

    .line 165
    iput p5, p2, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 166
    iput p5, p2, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    float-to-int p6, p3

    .line 167
    iput p6, p2, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    float-to-int p6, p4

    .line 168
    iput p6, p2, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 169
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object p6

    invoke-virtual {p6, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p5, p5}, Landroid/widget/TextView;->measure(II)V

    .line 172
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    const/high16 p6, 0x3f800000    # 1.0f

    .line 173
    iput p6, p1, Lcom/rockstargames/hal/andButton;->textScale:F

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object p6

    invoke-virtual {p6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p6

    int-to-float p6, p6

    iget v0, p1, Lcom/rockstargames/hal/andButton;->width:F

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    cmpl-float p6, p6, v0

    if-lez p6, :cond_0

    .line 175
    iget p6, p1, Lcom/rockstargames/hal/andButton;->textScale:F

    mul-float/2addr p6, v1

    iput p6, p1, Lcom/rockstargames/hal/andButton;->textScale:F

    .line 176
    invoke-virtual {p0, p2}, Lcom/rockstargames/hal/andButton;->setTextSize(F)V

    .line 177
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object p6

    invoke-virtual {p6, p5, p5}, Landroid/widget/TextView;->measure(II)V

    goto :goto_0

    .line 179
    :cond_0
    iput p3, p1, Lcom/rockstargames/hal/andButton;->SavedWidth:F

    .line 180
    iput p4, p1, Lcom/rockstargames/hal/andButton;->SavedHeight:F

    return-void
.end method

.method public setFont(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setHighlightView(Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 66
    invoke-virtual {v0}, Lcom/rockstargames/hal/andButton;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/rockstargames/hal/andButton$andButtonImpl;

    .line 67
    iget-object v3, v2, Lcom/rockstargames/hal/andButton$andButtonImpl;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Lcom/rockstargames/hal/andButton;->isTogglebutton:Z

    if-nez v3, :cond_4

    .line 69
    invoke-virtual {v2, v1}, Lcom/rockstargames/hal/andButton$andButtonImpl;->HighlightView(Z)V

    .line 74
    iput-boolean v1, v0, Lcom/rockstargames/hal/andButton;->highlightON:Z

    .line 75
    invoke-virtual {v0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 77
    iget v2, v0, Lcom/rockstargames/hal/andButton;->SavedWidth:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 78
    iget v2, v0, Lcom/rockstargames/hal/andButton;->width:F

    iput v2, v0, Lcom/rockstargames/hal/andButton;->SavedWidth:F

    .line 79
    :cond_0
    iget v2, v0, Lcom/rockstargames/hal/andButton;->SavedHeight:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 80
    iget v2, v0, Lcom/rockstargames/hal/andButton;->height:F

    iput v2, v0, Lcom/rockstargames/hal/andButton;->SavedHeight:F

    :cond_1
    const/4 v7, 0x0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/high16 v4, 0x41a00000    # 20.0f

    if-eqz v1, :cond_2

    .line 83
    iget v1, v0, Lcom/rockstargames/hal/andButton;->originX:F

    float-to-double v5, v4

    mul-double/2addr v5, v2

    double-to-int v2, v5

    int-to-float v8, v2

    sub-float/2addr v1, v8

    iget v2, v0, Lcom/rockstargames/hal/andButton;->originY:F

    sub-float/2addr v2, v8

    iget v3, v0, Lcom/rockstargames/hal/andButton;->SavedWidth:F

    add-float/2addr v3, v4

    iget v5, v0, Lcom/rockstargames/hal/andButton;->SavedHeight:F

    add-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/rockstargames/hal/andButton;->setBounds(FFFFFF)V

    .line 85
    :goto_0
    iget-object v1, v0, Lcom/rockstargames/hal/andButton;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_3

    .line 88
    iget-object v1, v0, Lcom/rockstargames/hal/andButton;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/rockstargames/hal/andButton;

    .line 89
    iget v1, v9, Lcom/rockstargames/hal/andButton;->originX:F

    add-float v10, v1, v8

    iget v1, v9, Lcom/rockstargames/hal/andButton;->originY:F

    add-float v11, v1, v8

    iget v12, v9, Lcom/rockstargames/hal/andButton;->width:F

    iget v13, v9, Lcom/rockstargames/hal/andButton;->height:F

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/rockstargames/hal/andButton;->setBounds(FFFFFF)V

    .line 90
    iget-object v1, v9, Lcom/rockstargames/hal/andButton;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 96
    :cond_2
    iget v1, v0, Lcom/rockstargames/hal/andButton;->originX:F

    float-to-double v5, v4

    mul-double/2addr v5, v2

    double-to-int v2, v5

    int-to-float v8, v2

    add-float/2addr v1, v8

    iget v2, v0, Lcom/rockstargames/hal/andButton;->originY:F

    add-float/2addr v2, v8

    iget v3, v0, Lcom/rockstargames/hal/andButton;->SavedWidth:F

    sub-float/2addr v3, v4

    iget v5, v0, Lcom/rockstargames/hal/andButton;->SavedHeight:F

    sub-float v4, v5, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/rockstargames/hal/andButton;->setBounds(FFFFFF)V

    .line 97
    :goto_1
    iget-object v1, v0, Lcom/rockstargames/hal/andButton;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_3

    .line 100
    iget-object v1, v0, Lcom/rockstargames/hal/andButton;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/rockstargames/hal/andButton;

    .line 101
    iget v1, v9, Lcom/rockstargames/hal/andButton;->originX:F

    sub-float v10, v1, v8

    iget v1, v9, Lcom/rockstargames/hal/andButton;->originY:F

    sub-float v11, v1, v8

    iget v12, v9, Lcom/rockstargames/hal/andButton;->width:F

    iget v13, v9, Lcom/rockstargames/hal/andButton;->height:F

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/rockstargames/hal/andButton;->setBounds(FFFFFF)V

    .line 102
    iget-object v1, v9, Lcom/rockstargames/hal/andButton;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 108
    :cond_3
    iget-object v1, v0, Lcom/rockstargames/hal/andButton;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    .line 112
    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/rockstargames/hal/andLabel;->setHighlightView(Z)V

    .line 116
    iput-boolean v1, v0, Lcom/rockstargames/hal/andButton;->highlightON:Z

    .line 118
    invoke-virtual {v0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 120
    iget-object v1, v0, Lcom/rockstargames/hal/andButton;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColour(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/rockstargames/hal/andButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lcom/rockstargames/hal/andButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, v1

    iget v1, p0, Lcom/rockstargames/hal/andButton;->textScale:F

    mul-float/2addr p1, v1

    .line 151
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
