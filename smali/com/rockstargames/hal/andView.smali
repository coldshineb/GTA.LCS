.class public Lcom/rockstargames/hal/andView;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static staticCount:I


# instance fields
.field private alpha:F

.field protected antiFlicker:Z

.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rockstargames/hal/andView;",
            ">;"
        }
    .end annotation
.end field

.field protected container:Lcom/rockstargames/hal/ContainerLayout;

.field public debugString:Ljava/lang/String;

.field protected handle:I

.field protected height:F

.field protected highlight:Lcom/rockstargames/hal/G;

.field private layerType:I

.field protected originX:F

.field protected originY:F

.field protected paddingB:F

.field protected paddingR:F

.field public parent:Lcom/rockstargames/hal/andView;

.field protected positionOverridden:Z

.field protected userInteractionEnabled:Z

.field protected view:Landroid/view/View;

.field protected width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andView;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/rockstargames/hal/andView;->positionOverridden:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/rockstargames/hal/andView;->alpha:F

    iput v1, p0, Lcom/rockstargames/hal/andView;->layerType:I

    iput-boolean v1, p0, Lcom/rockstargames/hal/andView;->antiFlicker:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andView;->userInteractionEnabled:Z

    iput p1, p0, Lcom/rockstargames/hal/andView;->handle:I

    sget v0, Lcom/rockstargames/hal/andView;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andView;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andView;
    .locals 7

    const/high16 v3, 0x43480000    # 200.0f

    const/4 v1, 0x0

    new-instance v0, Lcom/rockstargames/hal/andView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andView;-><init>(I)V

    new-instance v2, Lcom/rockstargames/hal/W;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/rockstargames/hal/W;-><init>(Lcom/rockstargames/hal/andView;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/rockstargames/hal/andView;->setView(Landroid/view/View;)V

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    return-object v0
.end method


# virtual methods
.method public IsCursorAtEnd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public IsCursorAtStart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public addSubview(Lcom/rockstargames/hal/andView;)V
    .locals 4

    :try_start_0
    iput-object p0, p1, Lcom/rockstargames/hal/andView;->parent:Lcom/rockstargames/hal/andView;

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "andView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception adding view: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clipChildren(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    sget v0, Lcom/rockstargames/hal/andView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andView;->staticCount:I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/rockstargames/hal/andView;->alpha:F

    return v0
.end method

.method protected getContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method public getDebugId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->debugString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->debugString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rockstargames/hal/andView;->handle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/rockstargames/hal/andView;->handle:I

    return v0
.end method

.method public getHidden()Z
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInnerView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getOuterView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    return-object v0
.end method

.method public invalidateHierarchy()V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andView;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->invalidateHierarchy()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method native onAttachedToWindow(I)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/rockstargames/hal/andView;->userInteractionEnabled:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v0, "andView"

    const-string v2, "Trying to hide keyboard"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getHandle()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rockstargames/hal/andView;->onTouchEvent(IIIFF)V

    const/4 v0, 0x1

    goto :goto_1
.end method

.method native onTouchEvent(IIIFF)V
.end method

.method public printHierarchy(I)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getDebugId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/rockstargames/hal/andView;->originX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/rockstargames/hal/andView;->originY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/rockstargames/hal/andView;->width:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/rockstargames/hal/andView;->height:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const-string v2, " / ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "andView"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andView;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lcom/rockstargames/hal/andView;->printHierarchy(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected recalcLayout()V
    .locals 12

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getScale()F

    move-result v1

    iget v2, p0, Lcom/rockstargames/hal/andView;->originX:F

    mul-float/2addr v2, v1

    float-to-int v3, v2

    iget v2, p0, Lcom/rockstargames/hal/andView;->originY:F

    mul-float/2addr v2, v1

    float-to-int v5, v2

    iget v2, p0, Lcom/rockstargames/hal/andView;->width:F

    mul-float/2addr v2, v1

    float-to-int v6, v2

    iget v2, p0, Lcom/rockstargames/hal/andView;->height:F

    mul-float/2addr v1, v2

    float-to-int v7, v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v8, v2, Lcom/rockstargames/hal/ContainerLayout;

    if-eqz v8, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v1, v3, v5, v6, v7}, Lcom/rockstargames/hal/ContainerLayout;->setBounds(IIII)V

    :goto_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getInnerView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v2, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_0
    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v6, v7, v3, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v8, "andView"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "LayoutParams failed: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " + "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    goto :goto_2

    :cond_2
    iput v3, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iput v5, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iput v6, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    iput v7, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_3

    :cond_3
    instance-of v3, v1, Lcom/rockstargames/hal/ContainerLayout;

    if-eqz v3, :cond_4

    check-cast v1, Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v1, v11, v11, v6, v7}, Lcom/rockstargames/hal/ContainerLayout;->setBounds(IIII)V

    :goto_4
    iget-object v1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    invoke-virtual {v1}, Lcom/rockstargames/hal/G;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v3, p0, Lcom/rockstargames/hal/andView;->width:F

    float-to-int v3, v3

    iget v4, p0, Lcom/rockstargames/hal/andView;->height:F

    float-to-int v4, v4

    invoke-direct {v2, v3, v4, v11, v11}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/rockstargames/hal/G;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    iget v2, p0, Lcom/rockstargames/hal/andView;->width:F

    iput v2, v1, Lcom/rockstargames/hal/G;->b:F

    iget-object v1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    iget v2, p0, Lcom/rockstargames/hal/andView;->height:F

    iput v2, v1, Lcom/rockstargames/hal/G;->a:F

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_6

    :try_start_1
    move-object v0, v3

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    if-nez v2, :cond_7

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v6, v7, v11, v11}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :catch_1
    move-exception v5

    if-eqz v3, :cond_5

    instance-of v5, v3, Landroid/view/ViewGroup$LayoutParams;

    if-nez v5, :cond_0

    :cond_5
    const-string v5, "andView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LayoutParams failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " + "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v2, v4

    goto :goto_5

    :cond_7
    iput v11, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iput v11, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iput v6, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    iput v7, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_6
.end method

.method public removeAllSubviews()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andView;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->removeFromSuperview()V

    iget-object v1, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeFromSuperview()V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->parent:Lcom/rockstargames/hal/andView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->parent:Lcom/rockstargames/hal/andView;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->parent:Lcom/rockstargames/hal/andView;

    iget-object v0, v0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "andView"

    const-string v1, "Attempting to remove view with no parent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendViewToBack(Lcom/rockstargames/hal/andView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    iput p1, p0, Lcom/rockstargames/hal/andView;->alpha:F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setAntiFlicker()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rockstargames/hal/andView;->antiFlicker:Z

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andView;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->setAntiFlicker()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBackgroundColour(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 3

    const/high16 v0, 0x44160000    # 600.0f

    const/4 v2, 0x0

    cmpg-float v1, p3, v2

    if-gtz v1, :cond_0

    move p3, v0

    :cond_0
    cmpg-float v1, p4, v2

    if-gtz v1, :cond_1

    move p4, v0

    :cond_1
    iget-boolean v0, p0, Lcom/rockstargames/hal/andView;->positionOverridden:Z

    if-nez v0, :cond_2

    iput p1, p0, Lcom/rockstargames/hal/andView;->originX:F

    iput p2, p0, Lcom/rockstargames/hal/andView;->originY:F

    :cond_2
    iput p3, p0, Lcom/rockstargames/hal/andView;->width:F

    iput p4, p0, Lcom/rockstargames/hal/andView;->height:F

    iput p5, p0, Lcom/rockstargames/hal/andView;->paddingR:F

    iput p6, p0, Lcom/rockstargames/hal/andView;->paddingB:F

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->recalcLayout()V

    return-void
.end method

.method public setDebugString(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rockstargames/hal/andView;->handle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/hal/andView;->debugString:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHighlightView(Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    invoke-virtual {v0, v4}, Lcom/rockstargames/hal/G;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/rockstargames/hal/andView;->width:F

    float-to-int v2, v2

    iget v3, p0, Lcom/rockstargames/hal/andView;->height:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/G;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    iget v1, p0, Lcom/rockstargames/hal/andView;->width:F

    iput v1, v0, Lcom/rockstargames/hal/G;->b:F

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    iget v1, p0, Lcom/rockstargames/hal/andView;->height:F

    iput v1, v0, Lcom/rockstargames/hal/G;->a:F

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/G;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLayerType(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/rockstargames/hal/andView;->layerType:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/rockstargames/hal/andView;->layerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method native setPlatformSize(III)V
.end method

.method public setTransform(FFFFFF)V
    .locals 7

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/rockstargames/hal/ContainerLayout;->setTransform(FFFFFF)V

    return-void
.end method

.method public setUserInteractionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rockstargames/hal/andView;->userInteractionEnabled:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x64

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    if-nez v0, :cond_0

    new-instance v0, Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->setId(I)V

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/rockstargames/hal/ContainerLayout;->setPadding(IIII)V

    :cond_0
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/rockstargames/hal/G;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rockstargames/hal/G;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x12c

    invoke-direct {v1, v2, v4, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/G;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/rockstargames/hal/G;->a:F

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/rockstargames/hal/G;->b:F

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    iget-object v1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    invoke-virtual {v0}, Lcom/rockstargames/hal/G;->bringToFront()V

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/G;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/G;->setVisibility(I)V

    return-void
.end method

.method public toImage(Ljava/lang/String;)Lcom/rockstargames/hal/andImage;
    .locals 11

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v9, 0x42e40000    # 114.0f

    const/16 v8, 0x72

    const/4 v1, 0x0

    iget v0, p0, Lcom/rockstargames/hal/andView;->width:F

    float-to-int v0, v0

    iget v2, p0, Lcom/rockstargames/hal/andView;->height:F

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/rockstargames/hal/andView;->width:F

    div-float v2, v9, v2

    iget v3, p0, Lcom/rockstargames/hal/andView;->height:F

    div-float v3, v9, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v2, p0, Lcom/rockstargames/hal/andView;->width:F

    float-to-int v3, v2

    iget v2, p0, Lcom/rockstargames/hal/andView;->height:F

    float-to-int v4, v2

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v4, p0, Lcom/rockstargames/hal/andView;->width:F

    mul-float/2addr v4, v7

    sub-float v4, v9, v4

    mul-float/2addr v4, v10

    iget v5, p0, Lcom/rockstargames/hal/andView;->height:F

    mul-float/2addr v5, v7

    sub-float v5, v9, v5

    mul-float/2addr v5, v10

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Lcom/rockstargames/hal/e;

    invoke-direct {v0}, Lcom/rockstargames/hal/e;-><init>()V

    iput v1, v0, Lcom/rockstargames/hal/e;->a:I

    iput v1, v0, Lcom/rockstargames/hal/e;->b:I

    iput v8, v0, Lcom/rockstargames/hal/e;->c:I

    iput v8, v0, Lcom/rockstargames/hal/e;->d:I

    iput v8, v0, Lcom/rockstargames/hal/e;->e:I

    iput v8, v0, Lcom/rockstargames/hal/e;->f:I

    iput v1, v0, Lcom/rockstargames/hal/e;->g:I

    iput v1, v0, Lcom/rockstargames/hal/e;->h:I

    new-instance v1, Lcom/rockstargames/hal/TextureAtlas;

    invoke-direct {v1}, Lcom/rockstargames/hal/TextureAtlas;-><init>()V

    iput-object v1, v0, Lcom/rockstargames/hal/e;->i:Lcom/rockstargames/hal/TextureAtlas;

    iget-object v1, v0, Lcom/rockstargames/hal/e;->i:Lcom/rockstargames/hal/TextureAtlas;

    iput-object v2, v1, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    new-instance v1, Lcom/rockstargames/hal/PackedImage;

    invoke-direct {v1, v0}, Lcom/rockstargames/hal/PackedImage;-><init>(Lcom/rockstargames/hal/e;)V

    new-instance v0, Lcom/rockstargames/hal/andImage;

    invoke-direct {v0, p1, v1}, Lcom/rockstargames/hal/andImage;-><init>(Ljava/lang/String;Lcom/rockstargames/hal/PackedImage;)V

    return-object v0
.end method
