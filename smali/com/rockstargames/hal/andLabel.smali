.class public Lcom/rockstargames/hal/andLabel;
.super Lcom/rockstargames/hal/andView;


# static fields
.field private static defaultFont:Landroid/graphics/Typeface;

.field static staticCount:I


# instance fields
.field private cachedH:I

.field private cachedW:I

.field private hasShadow:Z

.field private sizeAdjusted:F

.field private sizeFromHal:F

.field protected text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/andLabel;->hasShadow:Z

    new-instance v0, Lcom/rockstargames/hal/E;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/E;-><init>(Lcom/rockstargames/hal/andLabel;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel;->setView(Landroid/view/View;)V

    sget v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/hal/andLabel;->hasShadow:Z

    if-eqz p2, :cond_0

    new-instance v0, Lcom/rockstargames/hal/E;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/E;-><init>(Lcom/rockstargames/hal/andLabel;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel;->setView(Landroid/view/View;)V

    :cond_0
    sget v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andLabel;
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/andLabel;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andLabel;-><init>(I)V

    return-object v0
.end method

.method public static getDefaultFont()Landroid/graphics/Typeface;
    .locals 4

    sget-object v0, Lcom/rockstargames/hal/andLabel;->defaultFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "Fonts/HELVETICANEUELTW1G-ROMAN.OTF"

    const-string v1, "andLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempting to load typeface:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/rockstargames/hal/andLabel;->defaultFont:Landroid/graphics/Typeface;

    const-string v1, "andLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully loaded typeface ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/rockstargames/hal/andLabel;->defaultFont:Landroid/graphics/Typeface;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private printDebugFontSizeString()V
    .locals 5

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "andLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HAL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/rockstargames/hal/andLabel;->sizeFromHal:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Final: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/rockstargames/hal/andLabel;->sizeAdjusted:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rockstargames/hal/andLabel;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dens:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dpi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " H/h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/rockstargames/hal/andLabel;->sizeFromHal:F

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " H*h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/rockstargames/hal/andLabel;->sizeFromHal:F

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    sget v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method public getCachedH()I
    .locals 1

    iget v0, p0, Lcom/rockstargames/hal/andLabel;->cachedH:I

    return v0
.end method

.method public getCachedW()I
    .locals 1

    iget v0, p0, Lcom/rockstargames/hal/andLabel;->cachedW:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTextColour()I
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/E;

    invoke-virtual {v0}, Lcom/rockstargames/hal/E;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getTextHeight()I
    .locals 3

    iget v0, p0, Lcom/rockstargames/hal/andLabel;->width:F

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andLabel;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextWidth()I
    .locals 3

    iget v0, p0, Lcom/rockstargames/hal/andLabel;->width:F

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method

.method public setAutoResize(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel;->setAutoResize(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoResize(Z)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\r\n"

    invoke-direct {v2, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/graphics/Point;

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Landroid/graphics/Point;-><init>(II)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v0, v7, v8, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v7, v0, 0x2

    iget v0, v6, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_3

    iget v0, v6, Landroid/graphics/Rect;->left:I

    :goto_1
    add-int/2addr v0, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    iget v7, v5, Landroid/graphics/Point;->x:I

    if-le v0, v7, :cond_1

    iput v0, v5, Landroid/graphics/Point;->x:I

    :cond_1
    iget v0, v5, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v7, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v8, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v7, v8

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "andLabel"

    const-string v2, "Autoresize exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    :try_start_1
    iget v0, v5, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/rockstargames/hal/andLabel;->cachedW:I

    iget v0, v5, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/rockstargames/hal/andLabel;->cachedH:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setBackgroundTransparent()V
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-void
.end method

.method public setBlackOutlineWidth(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    instance-of v1, v0, Lcom/rockstargames/hal/E;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/rockstargames/hal/E;

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/E;->setOutlineWidth(F)V

    :cond_0
    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/rockstargames/hal/andLabel;->hasShadow:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/high16 v0, 0x40900000    # 4.5f

    :cond_0
    add-float v3, p3, v0

    add-float v4, p4, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    return-void
.end method

.method protected setDirty()V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andLabel;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/rockstargames/hal/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andLabel;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/E;

    invoke-virtual {v0}, Lcom/rockstargames/hal/E;->a()V

    :cond_0
    return-void
.end method

.method public setDropShadow()V
    .locals 4

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andLabel;->hasShadow:Z

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method public setFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "andLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to loaded typeface ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andLabel;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/andLabel;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextAlignment(I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    sget-object v0, Lcom/rockstargames/hal/C;->a:[I

    invoke-static {}, Lcom/rockstargames/hal/D;->a()[I

    move-result-object v2

    aget v2, v2, p1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    instance-of v0, v0, Lcom/rockstargames/hal/E;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/E;

    invoke-static {}, Lcom/rockstargames/hal/D;->a()[I

    move-result-object v2

    aget v2, v2, p1

    sget v3, Lcom/rockstargames/hal/D;->a:I

    if-eq v2, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/E;->setCacheEnabled(Z)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

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

.method public setTextColour(IIII)V
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    iput p1, p0, Lcom/rockstargames/hal/andLabel;->sizeFromHal:F

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    iput v0, p0, Lcom/rockstargames/hal/andLabel;->sizeAdjusted:F

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTypeFace(ZZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    if-ne p1, v1, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method
