.class Lio/flutter/plugin/platform/PlatformViewsController2$1;
.super Ljava/lang/Object;
.source "PlatformViewsController2.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/PlatformViewsController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/PlatformViewsController2;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController2;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFocus(I)V
    .locals 3

    .line 702
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$000(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 703
    const-string v1, "PlatformViewsController2"

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Clearing focus on an unknown view with id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 707
    :cond_0
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Clearing focus on a null view with id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 712
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public createPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewCreationRequest;)V
    .locals 1

    .line 625
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->createFlutterPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewCreationRequest;)Lio/flutter/plugin/platform/PlatformView;

    return-void
.end method

.method public dispose(I)V
    .locals 4

    .line 630
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$000(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 631
    const-string v1, "PlatformViewsController2"

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Disposing unknown platform view with id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 635
    :cond_0
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 636
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v2

    .line 637
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 642
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 645
    :cond_1
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$000(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 647
    :try_start_0
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->dispose()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 649
    const-string v2, "Disposing platform view threw an exception"

    invoke-static {v1, v2, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 653
    :goto_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$100(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    if-eqz v0, :cond_3

    .line 655
    invoke-virtual {v0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->removeAllViews()V

    .line 656
    invoke-virtual {v0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->unsetOnDescendantFocusChangeListener()V

    .line 658
    invoke-virtual {v0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 660
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 662
    :cond_2
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$100(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    return-void
.end method

.method public isSurfaceControlEnabled()Z
    .locals 1

    .line 717
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$300(Lio/flutter/plugin/platform/PlatformViewsController2;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 720
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$300(Lio/flutter/plugin/platform/PlatformViewsController2;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->IsSurfaceControlEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewTouch;)V
    .locals 4

    .line 668
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewTouch;->viewId:I

    .line 669
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$200(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 671
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$000(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/plugin/platform/PlatformView;

    .line 672
    const-string v3, "PlatformViewsController2"

    if-nez v2, :cond_0

    .line 673
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Sending touch to an unknown view with id: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 676
    :cond_0
    invoke-interface {v2}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 678
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Sending touch to a null view with id: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->toMotionEvent(FLio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewTouch;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 682
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public setDirection(II)V
    .locals 2

    .line 687
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$000(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 688
    const-string v1, "PlatformViewsController2"

    if-nez v0, :cond_0

    .line 689
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Setting direction to an unknown view with id: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 692
    :cond_0
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 694
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Setting direction to a null view with id: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 697
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method
