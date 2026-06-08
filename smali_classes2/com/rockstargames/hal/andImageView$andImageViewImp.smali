.class public Lcom/rockstargames/hal/andImageView$andImageViewImp;
.super Landroid/view/View;
.source "andImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andImageViewImp"
.end annotation


# instance fields
.field attached:Z

.field packedImage:Lcom/rockstargames/hal/PackedImage;

.field final synthetic this$0:Lcom/rockstargames/hal/andImageView;

.field tiled:Z


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/rockstargames/hal/andImageView$andImageViewImp;->this$0:Lcom/rockstargames/hal/andImageView;

    .line 153
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/rockstargames/hal/andImageView$andImageViewImp;->attached:Z

    .line 155
    invoke-static {}, Lcom/rockstargames/hal/andViewManager;->genID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->setId(I)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public isAttached()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/rockstargames/hal/andImageView$andImageViewImp;->attached:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/rockstargames/hal/andImageView$andImageViewImp;->attached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 171
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/rockstargames/hal/andImageView$andImageViewImp;->attached:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/rockstargames/hal/andImageView$andImageViewImp;->packedImage:Lcom/rockstargames/hal/PackedImage;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lcom/rockstargames/hal/andImageView$andImageViewImp;->tiled:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/rockstargames/hal/PackedImage;->Draw(Landroid/graphics/Canvas;IIZ)V

    .line 202
    iget-object p1, p0, Lcom/rockstargames/hal/andImageView$andImageViewImp;->this$0:Lcom/rockstargames/hal/andImageView;

    iget-boolean p1, p1, Lcom/rockstargames/hal/andImageView;->antiFlicker:Z

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPackedImage(Lcom/rockstargames/hal/PackedImage;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/rockstargames/hal/andImageView$andImageViewImp;->packedImage:Lcom/rockstargames/hal/PackedImage;

    .line 187
    invoke-virtual {p0}, Lcom/rockstargames/hal/andImageView$andImageViewImp;->invalidate()V

    return-void
.end method

.method public setTiled(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/rockstargames/hal/andImageView$andImageViewImp;->tiled:Z

    return-void
.end method
