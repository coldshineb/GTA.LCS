.class public final Lcom/rockstargames/gtalcs/LoadingScreen;
.super Ljava/lang/Object;
.source "GameActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0011J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\nH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/rockstargames/gtalcs/LoadingScreen;",
        "",
        "layout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "<init>",
        "(Landroidx/constraintlayout/widget/ConstraintLayout;)V",
        "getLayout",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "screens",
        "",
        "",
        "imageBarBg",
        "Landroid/widget/ImageView;",
        "imageBar",
        "guideProgress",
        "Landroidx/constraintlayout/widget/Guideline;",
        "show",
        "",
        "progress",
        "",
        "hide",
        "doShow",
        "background",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private guideProgress:Landroidx/constraintlayout/widget/Guideline;

.field private imageBar:Landroid/widget/ImageView;

.field private imageBarBg:Landroid/widget/ImageView;

.field private final layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final screens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 3

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [Ljava/lang/Integer;

    sget v1, Lcom/rockstargames/gtalcs/R$drawable;->loading_screen_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    sget v1, Lcom/rockstargames/gtalcs/R$drawable;->loading_screen_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    sget v1, Lcom/rockstargames/gtalcs/R$drawable;->loading_screen_3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 32
    sget v1, Lcom/rockstargames/gtalcs/R$drawable;->loading_screen_4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 28
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->screens:Ljava/util/List;

    .line 35
    sget v0, Lcom/rockstargames/gtalcs/R$id;->imageBarBg:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->imageBarBg:Landroid/widget/ImageView;

    .line 36
    sget v0, Lcom/rockstargames/gtalcs/R$id;->imageBar:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->imageBar:Landroid/widget/ImageView;

    .line 37
    sget v0, Lcom/rockstargames/gtalcs/R$id;->guideProgress:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iput-object p1, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->guideProgress:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method private final doShow(I)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setKeepScreenOn(Z)V

    .line 66
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public final getLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public final hide()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method public final show()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->screens:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v1, Lkotlin/random/Random;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->random(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/rockstargames/gtalcs/LoadingScreen;->doShow(I)V

    .line 42
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->imageBar:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->imageBarBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final show(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 48
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    const/high16 v0, 0x3e800000    # 0.25f

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v0, v1, p1}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result p1

    .line 49
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->guideProgress:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 51
    iget-object p1, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->screens:Ljava/util/List;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/rockstargames/gtalcs/LoadingScreen;->doShow(I)V

    .line 52
    iget-object p1, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->imageBar:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/rockstargames/gtalcs/LoadingScreen;->imageBarBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
