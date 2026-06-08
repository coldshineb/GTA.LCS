.class public Lcom/rockstargames/hal/andView;
.super Ljava/lang/Object;
.source "andView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andView$andViewImpl;
    }
.end annotation


# static fields
.field static staticCount:I


# instance fields
.field private alpha:F

.field protected antiFlicker:Z

.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rockstargames/hal/andView;",
            ">;"
        }
    .end annotation
.end field

.field protected container:Lcom/rockstargames/hal/ContainerLayout;

.field public debugString:Ljava/lang/String;

.field protected handle:I

.field protected height:F

.field protected highlight:Lcom/rockstargames/hal/andSelectionRect;

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
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/rockstargames/hal/andView;->positionOverridden:Z

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 480
    iput v1, p0, Lcom/rockstargames/hal/andView;->alpha:F

    .line 481
    iput v0, p0, Lcom/rockstargames/hal/andView;->layerType:I

    .line 547
    iput-boolean v0, p0, Lcom/rockstargames/hal/andView;->antiFlicker:Z

    const/4 v0, 0x1

    .line 556
    iput-boolean v0, p0, Lcom/rockstargames/hal/andView;->userInteractionEnabled:Z

    .line 41
    iput p1, p0, Lcom/rockstargames/hal/andView;->handle:I

    .line 43
    sget p1, Lcom/rockstargames/hal/andView;->staticCount:I

    add-int/2addr p1, v0

    sput p1, Lcom/rockstargames/hal/andView;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andView;
    .locals 7

    .line 57
    new-instance v0, Lcom/rockstargames/hal/andView;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andView;-><init>(I)V

    .line 58
    new-instance p0, Lcom/rockstargames/hal/andView$andViewImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/rockstargames/hal/andView$andViewImpl;-><init>(Lcom/rockstargames/hal/andView;Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/rockstargames/hal/andView;->setView(Landroid/view/View;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v4, 0x43480000    # 200.0f

    .line 60
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
    .locals 3

    .line 307
    :try_start_0
    instance-of v0, p1, Lcom/rockstargames/hal/andLabel;

    .line 316
    iput-object p0, p1, Lcom/rockstargames/hal/andView;->parent:Lcom/rockstargames/hal/andView;

    .line 317
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    .line 318
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception adding view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "andView"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public clipChildren(Z)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    sget v0, Lcom/rockstargames/hal/andView;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andView;->staticCount:I

    .line 52
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 521
    iget v0, p0, Lcom/rockstargames/hal/andView;->alpha:F

    return v0
.end method

.method protected getContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    return-object v0
.end method

.method public getDebugId()Ljava/lang/String;
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->debugString:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/rockstargames/hal/andView;->handle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandle()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/rockstargames/hal/andView;->handle:I

    return v0
.end method

.method public getHidden()Z
    .locals 2

    .line 532
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getInnerView()Landroid/view/View;
    .locals 1

    .line 297
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getOuterView()Landroid/view/View;
    .locals 1

    .line 292
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    return-object v0
.end method

.method public invalidateHierarchy()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andView;

    .line 469
    invoke-virtual {v1}, Lcom/rockstargames/hal/andView;->invalidateHierarchy()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method native onAttachedToWindow(I)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 p1, 0x0

    .line 113
    :try_start_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    const-string v0, "andView"

    const-string v1, "Trying to hide keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/rockstargames/hal/andView;->userInteractionEnabled:Z

    if-nez v0, :cond_1

    return p1

    .line 133
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 134
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getHandle()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/rockstargames/hal/andView;->onTouchEvent(IIIFF)V

    const/4 p1, 0x1

    return p1
.end method

.method native onTouchEvent(IIIFF)V
.end method

.method public printHierarchy(I)V
    .locals 7

    .line 445
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 448
    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getDebugId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/rockstargames/hal/andView;->originX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/rockstargames/hal/andView;->originY:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v4, p0, Lcom/rockstargames/hal/andView;->width:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " x "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v5, p0, Lcom/rockstargames/hal/andView;->height:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 455
    const-string v5, " / ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 457
    const-string v1, "andView"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andView;

    add-int/lit8 v2, p1, 0x1

    .line 460
    invoke-virtual {v1, v2}, Lcom/rockstargames/hal/andView;->printHierarchy(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected recalcLayout()V
    .locals 11

    .line 191
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getScale()F

    move-result v0

    .line 192
    iget v1, p0, Lcom/rockstargames/hal/andView;->originX:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/rockstargames/hal/andView;->originY:F

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 193
    iget v3, p0, Lcom/rockstargames/hal/andView;->width:F

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p0, Lcom/rockstargames/hal/andView;->height:F

    mul-float/2addr v4, v0

    float-to-int v0, v4

    .line 200
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v4

    .line 201
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 204
    instance-of v6, v4, Lcom/rockstargames/hal/ContainerLayout;

    const-string v7, " + "

    const-string v8, "LayoutParams failed: "

    const-string v9, "andView"

    const/4 v10, 0x0

    if-eqz v6, :cond_0

    .line 205
    move-object v5, v4

    check-cast v5, Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v5, v1, v2, v3, v0}, Lcom/rockstargames/hal/ContainerLayout;->setBounds(IIII)V

    goto :goto_2

    .line 210
    :cond_0
    :try_start_0
    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    :goto_0
    if-nez v5, :cond_1

    .line 218
    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v5, v3, v0, v1, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    goto :goto_1

    .line 221
    :cond_1
    iput v1, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 222
    iput v2, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 223
    iput v3, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 224
    iput v0, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 227
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    :goto_2
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getInnerView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v4, :cond_2

    goto/16 :goto_6

    .line 236
    :cond_2
    instance-of v2, v1, Lcom/rockstargames/hal/ContainerLayout;

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 237
    check-cast v1, Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v1, v5, v5, v3, v0}, Lcom/rockstargames/hal/ContainerLayout;->setBounds(IIII)V

    goto :goto_5

    .line 242
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 247
    :try_start_1
    check-cast v2, Landroid/widget/AbsoluteLayout$LayoutParams;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v2

    goto :goto_3

    :catch_1
    if-eqz v2, :cond_4

    .line 251
    instance-of v6, v2, Landroid/view/ViewGroup$LayoutParams;

    if-eqz v6, :cond_4

    goto :goto_6

    .line 254
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    if-nez v10, :cond_6

    .line 258
    new-instance v10, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v10, v3, v0, v5, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    goto :goto_4

    .line 261
    :cond_6
    iput v5, v10, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 262
    iput v5, v10, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 263
    iput v3, v10, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 264
    iput v0, v10, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 267
    :goto_4
    invoke-virtual {v1, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    :goto_5
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    if-eqz v0, :cond_7

    .line 271
    invoke-virtual {v0}, Lcom/rockstargames/hal/andSelectionRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 273
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/rockstargames/hal/andView;->width:F

    float-to-int v2, v2

    iget v3, p0, Lcom/rockstargames/hal/andView;->height:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3, v5, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andSelectionRect;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    iget v1, p0, Lcom/rockstargames/hal/andView;->width:F

    iput v1, v0, Lcom/rockstargames/hal/andSelectionRect;->Width:F

    .line 275
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    iget v1, p0, Lcom/rockstargames/hal/andView;->height:F

    iput v1, v0, Lcom/rockstargames/hal/andSelectionRect;->Height:F

    :cond_7
    :goto_6
    return-void
.end method

.method public removeAllSubviews()V
    .locals 2

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andView;

    .line 353
    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->removeFromSuperview()V

    .line 355
    iget-object v1, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeFromSuperview()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->parent:Lcom/rockstargames/hal/andView;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->parent:Lcom/rockstargames/hal/andView;

    iget-object v0, v0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 345
    :cond_0
    const-string v0, "andView"

    const-string v1, "Attempting to remove view with no parent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendViewToBack(Lcom/rockstargames/hal/andView;)V
    .locals 2

    .line 147
    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object p1

    .line 149
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 484
    iput p1, p0, Lcom/rockstargames/hal/andView;->alpha:F

    const/4 v0, 0x0

    .line 486
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 487
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setAntiFlicker()V
    .locals 2

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcom/rockstargames/hal/andView;->antiFlicker:Z

    .line 552
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andView;

    .line 553
    invoke-virtual {v1}, Lcom/rockstargames/hal/andView;->setAntiFlicker()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBackgroundColour(IIII)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setBounds(FFFFFF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/high16 v2, 0x44160000    # 600.0f

    if-gtz v1, :cond_0

    move p3, v2

    :cond_0
    cmpg-float v0, p4, v0

    if-gtz v0, :cond_1

    move p4, v2

    .line 171
    :cond_1
    iget-boolean v0, p0, Lcom/rockstargames/hal/andView;->positionOverridden:Z

    if-nez v0, :cond_2

    .line 173
    iput p1, p0, Lcom/rockstargames/hal/andView;->originX:F

    .line 174
    iput p2, p0, Lcom/rockstargames/hal/andView;->originY:F

    .line 177
    :cond_2
    iput p3, p0, Lcom/rockstargames/hal/andView;->width:F

    .line 178
    iput p4, p0, Lcom/rockstargames/hal/andView;->height:F

    .line 179
    iput p5, p0, Lcom/rockstargames/hal/andView;->paddingR:F

    .line 180
    iput p6, p0, Lcom/rockstargames/hal/andView;->paddingB:F

    .line 185
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->recalcLayout()V

    return-void
.end method

.method public setDebugString(Ljava/lang/String;)V
    .locals 1

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " (handle "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/rockstargames/hal/andView;->handle:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockstargames/hal/andView;->debugString:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Z)V
    .locals 1

    .line 527
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setHighlightView(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 509
    iget-object p1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andSelectionRect;->setVisibility(I)V

    goto :goto_0

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/rockstargames/hal/andSelectionRect;->setVisibility(I)V

    .line 513
    :goto_0
    iget-object p1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/rockstargames/hal/andView;->width:F

    float-to-int v2, v2

    iget v3, p0, Lcom/rockstargames/hal/andView;->height:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3, v0, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v1}, Lcom/rockstargames/hal/andSelectionRect;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    iget-object p1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    iget v0, p0, Lcom/rockstargames/hal/andView;->width:F

    iput v0, p1, Lcom/rockstargames/hal/andSelectionRect;->Width:F

    .line 515
    iget-object p1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    iget v0, p0, Lcom/rockstargames/hal/andView;->height:F

    iput v0, p1, Lcom/rockstargames/hal/andSelectionRect;->Height:F

    return-void
.end method

.method public setLayerType(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 495
    :goto_0
    iput p1, p0, Lcom/rockstargames/hal/andView;->layerType:I

    .line 496
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/rockstargames/hal/andView;->layerType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method native setPlatformSize(III)V
.end method

.method public setTransform(FFFFFF)V
    .locals 7

    .line 537
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

    .line 559
    iput-boolean p1, p0, Lcom/rockstargames/hal/andView;->userInteractionEnabled:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 5

    .line 79
    iput-object p1, p0, Lcom/rockstargames/hal/andView;->view:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    .line 83
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/rockstargames/hal/ContainerLayout;->setId(I)V

    .line 84
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/rockstargames/hal/ContainerLayout;->setPadding(IIII)V

    .line 91
    :cond_0
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v2, 0x64

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    invoke-virtual {v0, p1}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v0, Lcom/rockstargames/hal/andSelectionRect;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/rockstargames/hal/andSelectionRect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    .line 95
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v4, 0x12c

    invoke-direct {v3, v4, v2, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v3}, Lcom/rockstargames/hal/andSelectionRect;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/rockstargames/hal/andSelectionRect;->Height:F

    .line 97
    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, v0, Lcom/rockstargames/hal/andSelectionRect;->Width:F

    .line 98
    iget-object p1, p0, Lcom/rockstargames/hal/andView;->container:Lcom/rockstargames/hal/ContainerLayout;

    iget-object v0, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/ContainerLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object p1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    invoke-virtual {p1}, Lcom/rockstargames/hal/andSelectionRect;->bringToFront()V

    .line 100
    iget-object p1, p0, Lcom/rockstargames/hal/andView;->highlight:Lcom/rockstargames/hal/andSelectionRect;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/andSelectionRect;->setVisibility(I)V

    return-void
.end method

.method public toImage(Ljava/lang/String;)Lcom/rockstargames/hal/andImage;
    .locals 10

    .line 368
    iget v0, p0, Lcom/rockstargames/hal/andView;->width:F

    float-to-int v0, v0

    iget v1, p0, Lcom/rockstargames/hal/andView;->height:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 369
    invoke-virtual {p0}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 374
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 378
    iget v0, p0, Lcom/rockstargames/hal/andView;->width:F

    const/high16 v1, 0x42e40000    # 114.0f

    div-float v0, v1, v0

    .line 379
    iget v2, p0, Lcom/rockstargames/hal/andView;->height:F

    div-float v2, v1, v2

    .line 381
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 383
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 384
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 385
    invoke-virtual {v8, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 387
    iget v2, p0, Lcom/rockstargames/hal/andView;->width:F

    float-to-int v6, v2

    iget v2, p0, Lcom/rockstargames/hal/andView;->height:F

    float-to-int v7, v2

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 390
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v4, 0x72

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 393
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 394
    iget v6, p0, Lcom/rockstargames/hal/andView;->width:F

    mul-float/2addr v6, v0

    sub-float v6, v1, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    iget v8, p0, Lcom/rockstargames/hal/andView;->height:F

    mul-float/2addr v8, v0

    sub-float/2addr v1, v8

    mul-float/2addr v1, v7

    const/4 v0, 0x0

    invoke-virtual {v5, v2, v6, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 397
    new-instance v0, Lcom/rockstargames/hal/PackedImageAttributes;

    invoke-direct {v0}, Lcom/rockstargames/hal/PackedImageAttributes;-><init>()V

    const/4 v1, 0x0

    .line 398
    iput v1, v0, Lcom/rockstargames/hal/PackedImageAttributes;->x:I

    .line 399
    iput v1, v0, Lcom/rockstargames/hal/PackedImageAttributes;->y:I

    .line 400
    iput v4, v0, Lcom/rockstargames/hal/PackedImageAttributes;->width:I

    .line 401
    iput v4, v0, Lcom/rockstargames/hal/PackedImageAttributes;->height:I

    .line 402
    iput v4, v0, Lcom/rockstargames/hal/PackedImageAttributes;->packedWidth:I

    .line 403
    iput v4, v0, Lcom/rockstargames/hal/PackedImageAttributes;->packedHeight:I

    .line 404
    iput v1, v0, Lcom/rockstargames/hal/PackedImageAttributes;->offsetX:I

    .line 405
    iput v1, v0, Lcom/rockstargames/hal/PackedImageAttributes;->offsetY:I

    .line 406
    new-instance v1, Lcom/rockstargames/hal/TextureAtlas;

    invoke-direct {v1}, Lcom/rockstargames/hal/TextureAtlas;-><init>()V

    iput-object v1, v0, Lcom/rockstargames/hal/PackedImageAttributes;->textureAtlas:Lcom/rockstargames/hal/TextureAtlas;

    .line 407
    iget-object v1, v0, Lcom/rockstargames/hal/PackedImageAttributes;->textureAtlas:Lcom/rockstargames/hal/TextureAtlas;

    iput-object v3, v1, Lcom/rockstargames/hal/TextureAtlas;->bitmap:Landroid/graphics/Bitmap;

    .line 409
    new-instance v1, Lcom/rockstargames/hal/PackedImage;

    invoke-direct {v1, v0}, Lcom/rockstargames/hal/PackedImage;-><init>(Lcom/rockstargames/hal/PackedImageAttributes;)V

    .line 411
    new-instance v0, Lcom/rockstargames/hal/andImage;

    invoke-direct {v0, p1, v1}, Lcom/rockstargames/hal/andImage;-><init>(Ljava/lang/String;Lcom/rockstargames/hal/PackedImage;)V

    return-object v0
.end method
