.class public Lcom/rockstargames/hal/andViewManager;
.super Ljava/lang/Object;
.source "andViewManager.java"


# static fields
.field public static root:Lcom/rockstargames/hal/andView;

.field private static spam_delay:J

.field private static uniqueID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addViewToScreen(Lcom/rockstargames/hal/andView;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 20
    :try_start_0
    sput-object p0, Lcom/rockstargames/hal/andViewManager;->root:Lcom/rockstargames/hal/andView;

    .line 23
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private static countViewsRecursive(Lcom/rockstargames/hal/andView;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 120
    iget-object p0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andView;

    .line 121
    invoke-static {v0}, Lcom/rockstargames/hal/andViewManager;->countViewsRecursive(Lcom/rockstargames/hal/andView;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static genID()I
    .locals 2

    .line 84
    sget v0, Lcom/rockstargames/hal/andViewManager;->uniqueID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/rockstargames/hal/andViewManager;->uniqueID:I

    return v0
.end method

.method public static getStaticCounts()Ljava/lang/String;
    .locals 3

    .line 96
    sget-object v0, Lcom/rockstargames/hal/andViewManager;->root:Lcom/rockstargames/hal/andView;

    invoke-static {v0}, Lcom/rockstargames/hal/andViewManager;->countViewsRecursive(Lcom/rockstargames/hal/andView;)I

    move-result v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/rockstargames/hal/andView;->staticCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " S: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/rockstargames/hal/andScreen;->staticCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IV: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/rockstargames/hal/andImageView;->staticCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/rockstargames/hal/andButton;->staticCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " L: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/rockstargames/hal/andLabel;->staticCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SV: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/rockstargames/hal/andScrollView;->staticCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " T: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/rockstargames/hal/andTable;->staticCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/rockstargames/hal/andTextInput;->staticCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WV: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/rockstargames/hal/andWebView;->staticCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DV: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/rockstargames/hal/andDrawingView;->staticCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/rockstargames/hal/andSpinner;->staticCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static invalidateHierarchy()V
    .locals 2

    .line 73
    const-string v0, "andViewManager"

    const-string v1, "Invalidating hierarchy!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/rockstargames/hal/andViewManager;->root:Lcom/rockstargames/hal/andView;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->invalidateHierarchy()V

    :cond_0
    return-void
.end method

.method public static printLayout()V
    .locals 4

    .line 59
    sget-object v0, Lcom/rockstargames/hal/andViewManager;->root:Lcom/rockstargames/hal/andView;

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    const-string v2, "andViewManager"

    const-string v3, "Printing handle hierarchy..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v2, Lcom/rockstargames/hal/andViewManager;->root:Lcom/rockstargames/hal/andView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/rockstargames/hal/andView;->printHierarchy(I)V

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 66
    sput-wide v0, Lcom/rockstargames/hal/andViewManager;->spam_delay:J

    :cond_0
    return-void
.end method

.method public static removeViewFromScreen(Lcom/rockstargames/hal/andView;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public static setLandscape(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 89
    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->setTransitioning(Z)V

    .line 90
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
