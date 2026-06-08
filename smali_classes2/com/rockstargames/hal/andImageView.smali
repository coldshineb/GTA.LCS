.class public Lcom/rockstargames/hal/andImageView;
.super Lcom/rockstargames/hal/andView;
.source "andImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andImageView$andImageViewImp;,
        Lcom/rockstargames/hal/andImageView$OverlayImageView;
    }
.end annotation


# static fields
.field private static caulkPaint:Landroid/graphics/Paint;

.field static staticCount:I


# instance fields
.field private overlay:Landroid/graphics/drawable/ShapeDrawable;

.field private overlayColour:I

.field private overlayImageView:Landroid/widget/ImageView;

.field private overlayScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andImageView;->caulkPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lcom/rockstargames/hal/andImageView;->overlayScale:F

    .line 18
    iput-object p1, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    .line 25
    new-instance p1, Lcom/rockstargames/hal/andImageView$andImageViewImp;

    invoke-direct {p1, p0}, Lcom/rockstargames/hal/andImageView$andImageViewImp;-><init>(Lcom/rockstargames/hal/andImageView;)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andImageView;->setView(Landroid/view/View;)V

    .line 26
    sget p1, Lcom/rockstargames/hal/andImageView;->staticCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/rockstargames/hal/andImageView;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andImageView;
    .locals 1

    .line 37
    new-instance v0, Lcom/rockstargames/hal/andImageView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andImageView;-><init>(I)V

    return-object v0
.end method

.method private getImpl()Lcom/rockstargames/hal/andImageView$andImageViewImp;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andImageView$andImageViewImp;

    return-object v0
.end method


# virtual methods
.method public SetShapeOverlay(IIII)V
    .locals 0

    .line 57
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/rockstargames/hal/andImageView;->overlayColour:I

    .line 58
    iget-object p1, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    if-nez p1, :cond_0

    .line 60
    new-instance p1, Lcom/rockstargames/hal/andImageView$OverlayImageView;

    invoke-direct {p1}, Lcom/rockstargames/hal/andImageView$OverlayImageView;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView;->updateOverlayScale()V

    .line 64
    new-instance p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 65
    iget-object p2, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object p1, p0, Lcom/rockstargames/hal/andImageView;->container:Lcom/rockstargames/hal/ContainerLayout;

    iget-object p2, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView;->updateOverlayScale()V

    return-void
.end method

.method public SetShapeOverlayScale(F)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 49
    iput p1, p0, Lcom/rockstargames/hal/andImageView;->overlayScale:F

    .line 51
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView;->updateOverlayScale()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    sget v0, Lcom/rockstargames/hal/andImageView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andImageView;->staticCount:I

    .line 32
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 0

    .line 115
    invoke-super/range {p0 .. p6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    .line 117
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView;->updateOverlayScale()V

    return-void
.end method

.method public setImage(Lcom/rockstargames/hal/andImage;)V
    .locals 2

    if-nez p1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/rockstargames/hal/andImageView;->getImpl()Lcom/rockstargames/hal/andImageView$andImageViewImp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->setPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/rockstargames/hal/andImage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewrender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 135
    invoke-direct {p0}, Lcom/rockstargames/hal/andImageView;->getImpl()Lcom/rockstargames/hal/andImageView$andImageViewImp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/rockstargames/hal/andImage;->getPackedImage()Lcom/rockstargames/hal/PackedImage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->setPackedImage(Lcom/rockstargames/hal/PackedImage;)V

    .line 136
    invoke-direct {p0}, Lcom/rockstargames/hal/andImageView;->getImpl()Lcom/rockstargames/hal/andImageView$andImageViewImp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->setPadding(IIII)V

    return-void
.end method

.method public setTiled(Z)V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/rockstargames/hal/andImageView;->getImpl()Lcom/rockstargames/hal/andImageView$andImageViewImp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->setTiled(Z)V

    return-void
.end method

.method updateOverlayScale()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 89
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    .line 90
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/rockstargames/hal/andImageView;->overlayColour:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v0, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/rockstargames/hal/andImageView;->width:F

    iget v2, p0, Lcom/rockstargames/hal/andImageView;->overlayScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 93
    iget-object v0, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/rockstargames/hal/andImageView;->height:F

    iget v2, p0, Lcom/rockstargames/hal/andImageView;->overlayScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 95
    iget-object v0, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lcom/rockstargames/hal/andImageView;->overlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 99
    iget-object v1, p0, Lcom/rockstargames/hal/andImageView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v1}, Lcom/rockstargames/hal/ContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 105
    iget-object v2, p0, Lcom/rockstargames/hal/andImageView;->overlay:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 107
    iget v2, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 108
    iget v1, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    :cond_1
    return-void
.end method
