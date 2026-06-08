.class public Lcom/rockstargames/hal/andLabel;
.super Lcom/rockstargames/hal/andView;
.source "andLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andLabel$andLabelImpl;,
        Lcom/rockstargames/hal/andLabel$TextAlignment;
    }
.end annotation


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
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/rockstargames/hal/andLabel;->hasShadow:Z

    .line 33
    new-instance p1, Lcom/rockstargames/hal/andLabel$andLabelImpl;

    invoke-direct {p1, p0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;-><init>(Lcom/rockstargames/hal/andLabel;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andLabel;->setView(Landroid/view/View;)V

    .line 36
    sget p1, Lcom/rockstargames/hal/andLabel;->staticCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/rockstargames/hal/andLabel;->staticCount:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/rockstargames/hal/andLabel;->hasShadow:Z

    if-eqz p2, :cond_0

    .line 43
    new-instance p1, Lcom/rockstargames/hal/andLabel$andLabelImpl;

    invoke-direct {p1, p0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;-><init>(Lcom/rockstargames/hal/andLabel;)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andLabel;->setView(Landroid/view/View;)V

    .line 44
    :cond_0
    sget p1, Lcom/rockstargames/hal/andLabel;->staticCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/rockstargames/hal/andLabel;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andLabel;
    .locals 1

    .line 55
    new-instance v0, Lcom/rockstargames/hal/andLabel;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andLabel;-><init>(I)V

    return-object v0
.end method

.method public static getDefaultFont()Landroid/graphics/Typeface;
    .locals 3

    .line 380
    const-string v0, "andLabel"

    sget-object v1, Lcom/rockstargames/hal/andLabel;->defaultFont:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 384
    :try_start_0
    const-string v1, "Fonts/HELVETICANEUELTW1G-ROMAN.OTF"

    .line 385
    const-string v2, "Attempting to load typeface:Fonts/HELVETICANEUELTW1G-ROMAN.OTF"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/rockstargames/hal/andLabel;->defaultFont:Landroid/graphics/Typeface;

    .line 387
    const-string v1, "Successfully loaded typeface (Fonts/HELVETICANEUELTW1G-ROMAN.OTF)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    :cond_0
    :goto_0
    sget-object v0, Lcom/rockstargames/hal/andLabel;->defaultFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private printDebugFontSizeString()V
    .locals 4

    .line 135
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HAL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/rockstargames/hal/andLabel;->sizeFromHal:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Final: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/rockstargames/hal/andLabel;->sizeAdjusted:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rockstargames/hal/andLabel;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dens:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dpi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " H/h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/rockstargames/hal/andLabel;->sizeFromHal:F

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " H*h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/rockstargames/hal/andLabel;->sizeFromHal:F

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "andLabel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    sget v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andLabel;->staticCount:I

    .line 50
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method public getCachedH()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/rockstargames/hal/andLabel;->cachedH:I

    return v0
.end method

.method public getCachedW()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/rockstargames/hal/andLabel;->cachedW:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTextColour()I
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andLabel$andLabelImpl;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getTextHeight()I
    .locals 3

    .line 332
    iget v0, p0, Lcom/rockstargames/hal/andLabel;->width:F

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 333
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 334
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getTextView()Landroid/widget/TextView;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/rockstargames/hal/andLabel;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextWidth()I
    .locals 3

    .line 339
    iget v0, p0, Lcom/rockstargames/hal/andLabel;->width:F

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 340
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 341
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method

.method public setAutoResize(I)V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andLabel;->setAutoResize(Z)V

    return-void
.end method

.method public setAutoResize(Z)V
    .locals 8

    .line 160
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    .line 187
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p1, :cond_4

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 197
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 198
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 199
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 202
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "\r\n"

    invoke-direct {v0, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance p1, Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 204
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 205
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 208
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v3, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 215
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-lez v6, :cond_1

    iget v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    add-int/2addr v5, v6

    .line 216
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 217
    iget v6, p1, Landroid/graphics/Point;->x:I

    if-le v5, v6, :cond_2

    .line 218
    iput v5, p1, Landroid/graphics/Point;->x:I

    .line 219
    :cond_2
    iget v5, p1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v7, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v6, v7

    iget v7, v1, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 225
    :cond_3
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/rockstargames/hal/andLabel;->cachedW:I

    .line 226
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/rockstargames/hal/andLabel;->cachedH:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 230
    const-string v0, "andLabel"

    const-string v1, "Autoresize exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void
.end method

.method public setBackgroundTransparent()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    .line 130
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-void
.end method

.method public setBlackOutlineWidth(F)V
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    .line 370
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 371
    instance-of v1, v0, Lcom/rockstargames/hal/andLabel$andLabelImpl;

    if-eqz v1, :cond_0

    .line 373
    check-cast v0, Lcom/rockstargames/hal/andLabel$andLabelImpl;

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setOutlineWidth(F)V

    :cond_0
    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 8

    .line 312
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    .line 315
    iget-boolean v0, p0, Lcom/rockstargames/hal/andLabel;->hasShadow:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x40900000    # 4.5f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-float v4, p3, v0

    add-float v5, p4, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p5

    move v7, p6

    .line 319
    invoke-super/range {v1 .. v7}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    return-void
.end method

.method protected setDirty()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/rockstargames/hal/andLabel;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/rockstargames/hal/andLabel$andLabelImpl;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/rockstargames/hal/andLabel;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/andLabel$andLabelImpl;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setDirty()V

    :cond_0
    return-void
.end method

.method public setDropShadow()V
    .locals 4

    .line 325
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lcom/rockstargames/hal/andLabel;->hasShadow:Z

    .line 328
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, -0x1000000

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v0, v3, v1, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method public setFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_0

    .line 248
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 252
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 256
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to loaded typeface ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "andLabel"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 75
    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockstargames/hal/andLabel;->text:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    .line 77
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/rockstargames/hal/andLabel;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextAlignment(I)V
    .locals 4

    .line 272
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    .line 274
    invoke-static {}, Lcom/rockstargames/hal/andLabel$TextAlignment;->values()[Lcom/rockstargames/hal/andLabel$TextAlignment;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/rockstargames/hal/andLabel$TextAlignment;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 280
    :cond_3
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 277
    :cond_4
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 293
    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    instance-of v0, v0, Lcom/rockstargames/hal/andLabel$andLabelImpl;

    if-eqz v0, :cond_6

    .line 295
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andLabel$andLabelImpl;

    invoke-static {}, Lcom/rockstargames/hal/andLabel$TextAlignment;->values()[Lcom/rockstargames/hal/andLabel$TextAlignment;

    move-result-object v2

    aget-object p1, v2, p1

    sget-object v2, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_CENTER:Lcom/rockstargames/hal/andLabel$TextAlignment;

    if-eq p1, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andLabel$andLabelImpl;->setCacheEnabled(Z)V

    :cond_6
    return-void
.end method

.method public setTextColour(IIII)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    .line 143
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    .line 87
    iput p1, p0, Lcom/rockstargames/hal/andLabel;->sizeFromHal:F

    .line 89
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 90
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    .line 91
    iput p1, p0, Lcom/rockstargames/hal/andLabel;->sizeAdjusted:F

    .line 99
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTypeFace(ZZ)V
    .locals 2

    .line 346
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->setDirty()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-ne p2, v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :cond_1
    if-ne p2, v1, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/rockstargames/hal/andLabel;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
