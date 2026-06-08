.class public final Lcom/rockstargames/hal/B;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/rockstargames/hal/PackedImage;

.field private b:Z

.field private synthetic c:Lcom/rockstargames/hal/andImageView;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/rockstargames/hal/B;->c:Lcom/rockstargames/hal/andImageView;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/B;->setId(I)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/B;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/rockstargames/hal/B;->a:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/B;->a:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {p0}, Lcom/rockstargames/hal/B;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/B;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lcom/rockstargames/hal/B;->b:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/rockstargames/hal/PackedImage;->Draw(Landroid/graphics/Canvas;IIZ)V

    iget-object v0, p0, Lcom/rockstargames/hal/B;->c:Lcom/rockstargames/hal/andImageView;

    iget-boolean v0, v0, Lcom/rockstargames/hal/andImageView;->antiFlicker:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/hal/B;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setPackedImage(Lcom/rockstargames/hal/PackedImage;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/B;->a:Lcom/rockstargames/hal/PackedImage;

    invoke-virtual {p0}, Lcom/rockstargames/hal/B;->invalidate()V

    return-void
.end method

.method public final setTiled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rockstargames/hal/B;->b:Z

    return-void
.end method
