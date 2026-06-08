.class public Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;
.super Landroid/view/View;
.source "andDrawingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andDrawingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "andDrawingViewImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/andDrawingView;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andDrawingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;->this$0:Lcom/rockstargames/hal/andDrawingView;

    .line 179
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 185
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 187
    iget-object v0, p0, Lcom/rockstargames/hal/andDrawingView$andDrawingViewImpl;->this$0:Lcom/rockstargames/hal/andDrawingView;

    iget-object v0, v0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andDrawingView$Shape;

    .line 188
    invoke-virtual {v1, p1}, Lcom/rockstargames/hal/andDrawingView$Shape;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
