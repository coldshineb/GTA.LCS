.class public Landroid/support/v7/internal/widget/D;
.super Landroid/widget/ListView;


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/reflect/Field;

.field private g:Landroid/support/v7/internal/widget/E;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/D;->a:Landroid/graphics/Rect;

    iput v1, p0, Landroid/support/v7/internal/widget/D;->b:I

    iput v1, p0, Landroid/support/v7/internal/widget/D;->c:I

    iput v1, p0, Landroid/support/v7/internal/widget/D;->d:I

    iput v1, p0, Landroid/support/v7/internal/widget/D;->e:I

    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/D;->f:Ljava/lang/reflect/Field;

    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->f:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(ILandroid/view/View;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/support/v7/internal/widget/D;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/support/v7/internal/widget/D;->c:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/internal/widget/D;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/internal/widget/D;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->f:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected final a(ILandroid/view/View;FF)V
    .locals 7

    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eq p1, v6, :cond_3

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/D;->a(ILandroid/view/View;)V

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/widget/D;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    :goto_1
    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-static {v3, v4, v2}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq p1, v6, :cond_2

    invoke-static {v0, p3, p4}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/D;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/D;->setSelectorEnabled(Z)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/D;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance v0, Landroid/support/v7/internal/widget/E;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/E;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v7/internal/widget/D;->g:Landroid/support/v7/internal/widget/E;

    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->g:Landroid/support/v7/internal/widget/E;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/v7/internal/widget/D;->b:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/v7/internal/widget/D;->c:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/v7/internal/widget/D;->d:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/support/v7/internal/widget/D;->e:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setSelectorEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->g:Landroid/support/v7/internal/widget/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/D;->g:Landroid/support/v7/internal/widget/E;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/E;->a(Z)V

    :cond_0
    return-void
.end method
