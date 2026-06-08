.class public abstract Lcom/rockstargames/gtalcs/GTAActivityBase;
.super Lcom/fastman92/main_activity_launcher/AlteredType/android/app/Activity;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field bUseSmallLoadBarAssets:Z

.field mDownloadBarPercentageText:Landroid/widget/TextView;

.field protected mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

.field private mHasVibrator:Z

.field mImageView:Landroid/widget/ImageView;

.field private mIsTvDevice:Z

.field protected mLoadBarProgressBM:Landroid/graphics/Bitmap;

.field mLoadingBarBackgroundView:Landroid/widget/ImageView;

.field mLoadingBarProgressView:Landroid/widget/ImageView;

.field protected mMoviePlaying:Z

.field protected m_assetManager:Landroid/content/res/AssetManager;

.field protected m_dataLocation:Lcom/rockstargames/gtalcs/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GTAActivityBase"

    sput-object v0, Lcom/rockstargames/gtalcs/GTAActivityBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v2, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mMoviePlaying:Z

    sget-object v0, Lcom/rockstargames/gtalcs/n;->a:Lcom/rockstargames/gtalcs/n;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->m_dataLocation:Lcom/rockstargames/gtalcs/n;

    iput-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->m_assetManager:Landroid/content/res/AssetManager;

    iput-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    iput-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarProgressView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->bUseSmallLoadBarAssets:Z

    iput-boolean v2, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mIsTvDevice:Z

    iput-boolean v2, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mHasVibrator:Z

    return-void
.end method

.method public static randInt(II)I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected CallSocialClubSignOut()V
    .locals 0

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->callSocialClubSignOut()V

    return-void
.end method

.method protected CallSocialClubUpdate()V
    .locals 0

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->callSocialClubUpdate()V

    return-void
.end method

.method public HasVibrator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mHasVibrator:Z

    return v0
.end method

.method protected HideDownloadBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->HideLoadingScreen()V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected HideLoadingScreen()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAGLview;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public IsTvDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mIsTvDevice:Z

    return v0
.end method

.method public MinimiseApp()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->moveTaskToBack(Z)Z

    return-void
.end method

.method protected MovieStopedPlaying()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mMoviePlaying:Z

    return-void
.end method

.method protected SetFrameRateLock(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/GTAGLview;->setFrameRateLock(Z)V

    :cond_0
    return-void
.end method

.method protected ShowDownloadBar(FII)V
    .locals 5

    const/high16 v4, 0x49800000    # 1048576.0f

    invoke-virtual {p0, p1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->ShowLoadingBar(F)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-float v1, p2

    div-float/2addr v1, v4

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, p3

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MB /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected ShowLoadingBar(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->bringToFront()V

    iget-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->bringToFront()V

    iget-object v2, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    cmpl-float v2, p1, v0

    if-lez v2, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadBarProgressBM:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadBarProgressBM:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadBarProgressBM:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v0, v4, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarProgressView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarProgressView:Landroid/widget/ImageView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    :cond_1
    return-void
.end method

.method protected ShowLoadingScreen()V
    .locals 4

    const v1, 0x7f050006

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    invoke-static {v3, v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->randInt(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public createView()V
    .locals 3

    const/4 v2, -0x1

    sget-object v0, Lcom/rockstargames/gtalcs/GTAActivityBase;->TAG:Ljava/lang/String;

    const-string v1, "Creating View"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-direct {v0, p0}, Lcom/rockstargames/gtalcs/GTAGLview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/rockstargames/gtalcs/GTAActivityBase;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAGLview;->bringToFront()V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/GTAGLview;->SetHasFocus(Z)V

    return-void
.end method

.method public getIsAmazonDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hideSystemUI()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method protected isMoviePlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mMoviePlaying:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "kodiak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAGLview;->getNumberControllers()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/rockstargames/gtalcs/GTAActivityBase;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed - ignore back button on this device (Kindle Fire phone) 0"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAGLview;->onBackPressed()V

    :cond_2
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->isOnMainMenuScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->MinimiseApp()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->setDeviceOrientation()V

    sget-object v0, Lcom/rockstargames/gtalcs/GTAActivityBase;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged mode %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v6, 0x3f6147ae    # 0.88f

    const/4 v5, -0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->setDeviceOrientation()V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->hideSystemUI()V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/rockstargames/gtalcs/GTAActivityBase;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f050003

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v4, v3, Landroid/graphics/Point;->x:I

    if-le v0, v4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->bUseSmallLoadBarAssets:Z

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Lcom/rockstargames/gtalcs/GTAActivityBase;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->bUseSmallLoadBarAssets:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    const v4, 0x7f050002

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f050004

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadBarProgressBM:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setY(F)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarProgressView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarProgressView:Landroid/widget/ImageView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Lcom/rockstargames/gtalcs/GTAActivityBase;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarProgressView:Landroid/widget/ImageView;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarProgressView:Landroid/widget/ImageView;

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setY(F)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Lcom/rockstargames/gtalcs/GTAActivityBase;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setY(F)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setX(F)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mDownloadBarPercentageText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->m_dataLocation:Lcom/rockstargames/gtalcs/n;

    sget-object v3, Lcom/rockstargames/gtalcs/n;->b:Lcom/rockstargames/gtalcs/n;

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->m_assetManager:Landroid/content/res/AssetManager;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->m_assetManager:Landroid/content/res/AssetManager;

    invoke-static {v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setAssetManager(Landroid/content/res/AssetManager;)V

    sget-object v0, Lcom/rockstargames/gtalcs/GTAActivityBase;->TAG:Ljava/lang/String;

    const-string v3, "E_GameDataLocation.APK"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/rockstargames/gtalcs/CommonAPI;->SetMainActivity(Lcom/rockstargames/gtalcs/GTAActivityBase;)V

    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    invoke-static {v1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setIsTVDevice(Z)V

    iput-boolean v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mIsTvDevice:Z

    :goto_2
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    iput-boolean v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mHasVibrator:Z

    :cond_1
    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mHasVibrator:Z

    invoke-static {v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setHasVibrator(Z)V

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadingBarBackgroundView:Landroid/widget/ImageView;

    const v4, 0x7f050001

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f050003

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mLoadBarProgressBM:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    :cond_4
    invoke-static {v2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setIsTVDevice(Z)V

    iput-boolean v2, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mIsTvDevice:Z

    goto :goto_2
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/GTAGLview;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-virtual {v1, p1, p2}, Lcom/rockstargames/gtalcs/GTAGLview;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x19

    if-eq v1, p1, :cond_0

    const/16 v1, 0x18

    if-ne v1, p1, :cond_2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->hideSystemUI()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-virtual {v1, p1, p2}, Lcom/rockstargames/gtalcs/GTAGLview;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAGLview;->onPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAGLview;->onResume()V

    :cond_0
    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mMoviePlaying:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->MovieStopedPlaying()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/GTAGLview;->SetHasFocus(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->hideSystemUI()V

    sget-object v0, Lcom/rockstargames/gtalcs/GTAActivityBase;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->onResume()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/rockstargames/gtalcs/GTAActivityBase;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged false"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->onPause()V

    goto :goto_0
.end method

.method protected abstract setDeviceOrientation()V
.end method

.method public setInUI(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/GTAGLview;->setInUI(Z)V

    :cond_0
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/GTAActivityBase;->TAG:Ljava/lang/String;

    const-string v1, "Keep screen on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAActivityBase;->mGLView:Lcom/rockstargames/gtalcs/GTAGLview;

    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/GTAGLview;->setKeepScreenOn(Z)V

    return-void
.end method
