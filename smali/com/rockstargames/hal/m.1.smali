.class public final Lcom/rockstargames/hal/m;
.super Landroid/view/View;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/andDrawingView;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andDrawingView;)V
    .locals 1

    iput-object p1, p0, Lcom/rockstargames/hal/m;->a:Lcom/rockstargames/hal/andDrawingView;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rockstargames/hal/m;->a:Lcom/rockstargames/hal/andDrawingView;

    iget-object v0, v0, Lcom/rockstargames/hal/andDrawingView;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/l;

    iget-object v2, v0, Lcom/rockstargames/hal/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, v0, Lcom/rockstargames/hal/l;->d:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/rockstargames/hal/l;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v2, v0, Lcom/rockstargames/hal/l;->a:Landroid/graphics/Path;

    iget-object v0, v0, Lcom/rockstargames/hal/l;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    return-void
.end method
