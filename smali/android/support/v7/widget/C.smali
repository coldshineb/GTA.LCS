.class final Landroid/support/v7/widget/C;
.super Landroid/support/v7/internal/widget/D;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/support/v4/widget/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f01004a

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/widget/D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean p2, p0, Landroid/support/v7/widget/C;->b:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/C;->setCacheColorHint(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/C;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/C;->a:Z

    return p1
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/C;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/D;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;I)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v3, v1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    iput-boolean v1, p0, Landroid/support/v7/widget/C;->c:Z

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/C;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/C;->drawableStateChanged()V

    :cond_2
    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/C;->d:Landroid/support/v4/widget/u;

    if-nez v1, :cond_3

    new-instance v1, Landroid/support/v4/widget/u;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/u;-><init>(Landroid/widget/ListView;)V

    iput-object v1, p0, Landroid/support/v7/widget/C;->d:Landroid/support/v4/widget/u;

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/C;->d:Landroid/support/v4/widget/u;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/u;->a(Z)Landroid/support/v4/widget/a;

    iget-object v1, p0, Landroid/support/v7/widget/C;->d:Landroid/support/v4/widget/u;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/widget/u;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_4
    :goto_2
    return v0

    :pswitch_0
    move v3, v1

    move v0, v1

    goto :goto_1

    :pswitch_1
    move v0, v1

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_5

    move v3, v1

    move v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v5, v4}, Landroid/support/v7/widget/C;->pointToPosition(II)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/C;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/C;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    int-to-float v5, v5

    int-to-float v4, v4

    iput-boolean v2, p0, Landroid/support/v7/widget/C;->c:Z

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/C;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/C;->layoutChildren()V

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/C;->setSelection(I)V

    invoke-virtual {p0, v6, v0, v5, v4}, Landroid/support/v7/widget/C;->a(ILandroid/view/View;FF)V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/C;->setSelectorEnabled(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/C;->refreshDrawableState()V

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/C;->getItemIdAtPosition(I)J

    move-result-wide v4

    invoke-virtual {p0, v0, v6, v4, v5}, Landroid/support/v7/widget/C;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0

    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/C;->d:Landroid/support/v4/widget/u;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/C;->d:Landroid/support/v4/widget/u;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/u;->a(Z)Landroid/support/v4/widget/a;

    goto :goto_2

    :pswitch_2
    move v0, v2

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/C;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/D;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/C;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/D;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/C;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/D;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/C;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/C;->a:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/support/v7/internal/widget/D;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
