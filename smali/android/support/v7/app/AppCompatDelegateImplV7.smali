.class Landroid/support/v7/app/AppCompatDelegateImplV7;
.super Landroid/support/v7/app/o;

# interfaces
.implements Landroid/support/v4/view/B;
.implements Landroid/support/v7/internal/view/menu/j;


# instance fields
.field private A:Z

.field private B:I

.field private final C:Ljava/lang/Runnable;

.field private D:Z

.field private E:Landroid/graphics/Rect;

.field private F:Landroid/graphics/Rect;

.field private G:Landroid/support/v7/internal/a/a;

.field j:Landroid/support/v7/c/a;

.field k:Landroid/support/v7/internal/widget/ActionBarContextView;

.field l:Landroid/widget/PopupWindow;

.field m:Ljava/lang/Runnable;

.field private n:Landroid/support/v7/internal/widget/z;

.field private o:Landroid/support/v7/app/x;

.field private p:Landroid/support/v7/app/B;

.field private q:Z

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

.field private z:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/m;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/o;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/m;)V

    new-instance v0, Landroid/support/v7/app/t;

    invoke-direct {v0, p0}, Landroid/support/v7/app/t;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:I

    return v0
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, v3, v2

    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 10

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-nez v0, :cond_3

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    move v0, v9

    :goto_0
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    move v4, v9

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, v9}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    if-eqz v8, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-eqz v0, :cond_14

    :cond_5
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->g()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v5, 0x7f010012

    invoke-virtual {v4, v5, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_6

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_6
    const v5, 0x7f010050

    invoke-virtual {v4, v5, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_b

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v1, Landroid/support/v7/internal/view/a;

    invoke-direct {v1, v0, v3}, Landroid/support/v7/internal/view/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/content/Context;

    sget-object v0, Landroid/support/v7/a/a;->aV:[I

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a;->aY:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->b:I

    sget v1, Landroid/support/v7/a/a;->aW:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->d:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/support/v7/app/z;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/z;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->c:I

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    :cond_7
    :goto_4
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    move v0, v9

    :goto_5
    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    if-eqz v0, :cond_12

    move v0, v9

    :goto_6
    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    :goto_7
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->b:I

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    move v1, v2

    :cond_a
    :goto_8
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Z

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->d:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v9, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    goto/16 :goto_2

    :cond_b
    const v1, 0x7f0c00f9

    invoke-virtual {v4, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto/16 :goto_3

    :cond_c
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_4

    :cond_d
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Landroid/support/v7/app/B;

    if-nez v0, :cond_e

    new-instance v0, Landroid/support/v7/app/B;

    invoke-direct {v0, p0, v3}, Landroid/support/v7/app/B;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;B)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Landroid/support/v7/app/B;

    :cond_e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Landroid/support/v7/app/B;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    if-nez v1, :cond_f

    const/4 v0, 0x0

    :goto_9
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    if-eqz v0, :cond_11

    move v0, v9

    goto/16 :goto_5

    :cond_f
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/support/v7/internal/view/menu/g;

    if-nez v1, :cond_10

    new-instance v1, Landroid/support/v7/internal/view/menu/g;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/content/Context;

    const v5, 0x7f03000e

    invoke-direct {v1, v4, v5}, Landroid/support/v7/internal/view/menu/g;-><init>(Landroid/content/Context;I)V

    iput-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/support/v7/internal/view/menu/g;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/support/v7/internal/view/menu/y;)V

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;)V

    :cond_10
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/support/v7/internal/view/menu/g;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    goto :goto_9

    :cond_11
    move v0, v3

    goto/16 :goto_5

    :cond_12
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/g;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_13

    move v0, v9

    goto/16 :goto_6

    :cond_13
    move v0, v3

    goto/16 :goto_6

    :cond_14
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_15

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_a

    :cond_15
    move v1, v2

    goto/16 :goto_8

    :cond_16
    move-object v1, v0

    goto/16 :goto_7
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/z;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/internal/view/menu/i;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_2
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Z

    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-direct {p0, v0, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    :cond_3
    iput-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-ne v0, p1, :cond_0

    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->f()V

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->clear()V

    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/internal/view/menu/i;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/internal/view/menu/i;)V

    return-void
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/internal/view/menu/i;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:I

    return v0
.end method

.method private b(Landroid/support/v7/internal/view/menu/i;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Z

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/z;->h()V

    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Z

    goto :goto_0
.end method

.method private b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 11

    const v10, 0x7f010016

    const/16 v5, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    if-eqz v0, :cond_1

    move v4, v3

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-direct {p0, v0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    if-eqz v7, :cond_3

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-interface {v7, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    :cond_3
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-ne v0, v5, :cond_d

    :cond_4
    move v6, v3

    :goto_1
    if-eqz v6, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/z;->g()V

    :cond_5
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    if-nez v0, :cond_14

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    if-eqz v0, :cond_10

    :cond_6
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    if-nez v0, :cond_a

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-eqz v0, :cond_7

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-ne v0, v5, :cond_17

    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    if-eqz v0, :cond_17

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v0, 0x7f010015

    invoke-virtual {v8, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_e

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v0, v10, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_2
    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_9

    if-nez v0, :cond_8

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_8
    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_9
    move-object v5, v0

    if-eqz v5, :cond_17

    new-instance v0, Landroid/support/v7/internal/view/a;

    invoke-direct {v0, v2, v4}, Landroid/support/v7/internal/view/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :goto_3
    new-instance v2, Landroid/support/v7/internal/view/menu/i;

    invoke-direct {v2, v0}, Landroid/support/v7/internal/view/menu/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/j;)V

    invoke-virtual {p1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Landroid/support/v7/internal/view/menu/i;)V

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_0

    :cond_a
    if-eqz v6, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/support/v7/app/x;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/app/x;

    invoke-direct {v0, p0, v4}, Landroid/support/v7/app/x;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;B)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/support/v7/app/x;

    :cond_b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/support/v7/app/x;

    invoke-interface {v0, v2, v5}, Landroid/support/v7/internal/widget/z;->a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V

    :cond_c
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->f()V

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v7, v0, v2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Landroid/support/v7/internal/view/menu/i;)V

    if-eqz v6, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/support/v7/app/x;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/internal/widget/z;->a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V

    goto/16 :goto_0

    :cond_d
    move v6, v4

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v8, v10, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v0, v1

    goto :goto_2

    :cond_f
    iput-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    :cond_10
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->f()V

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Landroid/os/Bundle;

    if-eqz v0, :cond_11

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/i;->b(Landroid/os/Bundle;)V

    iput-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Landroid/os/Bundle;

    :cond_11
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v7, v4, v0, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz v6, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/support/v7/app/x;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/internal/widget/z;->a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V

    :cond_12
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->g()V

    goto/16 :goto_0

    :cond_13
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_4
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v3, :cond_16

    move v0, v3

    :goto_5
    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->setQwertyMode(Z)V

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->g()V

    :cond_14
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    iput-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Z

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move v4, v3

    goto/16 :goto_0

    :cond_15
    const/4 v0, -0x1

    goto :goto_4

    :cond_16
    move v0, v4

    goto :goto_5

    :cond_17
    move-object v0, v2

    goto/16 :goto_3
.end method

.method static synthetic c(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:Landroid/graphics/Rect;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/internal/widget/ac;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    if-nez v1, :cond_5

    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    if-eqz v4, :cond_7

    :goto_2
    iget-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->g:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v4, v3

    :goto_3
    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v4

    :goto_4
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return p1

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    goto :goto_2

    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v3

    move v4, v2

    goto :goto_3

    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v1, v2

    move v4, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method static synthetic d(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    return-void
.end method

.method private e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v0, :cond_1

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object v0, v1

    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private f(I)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:I

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/aa;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:Z

    :cond_0
    return-void
.end method

.method private i()V
    .locals 8

    const v7, 0x1020002

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v1, :cond_1

    const v1, 0x7f03000a

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    iput-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Z

    iput-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Z

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x7f010015

    invoke-virtual {v0, v2, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_4

    new-instance v0, Landroid/support/v7/internal/view/a;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/support/v7/internal/view/a;-><init>(Landroid/content/Context;I)V

    :goto_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030014

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/z;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    iget-object v1, p0, Landroid/support/v7/app/o;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/z;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/z;->a(I)V

    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/z;->a(I)V

    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/z;->a(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->g:Z

    if-eqz v1, :cond_6

    const v1, 0x7f030013

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    new-instance v1, Landroid/support/v7/app/u;

    invoke-direct {v1, p0}, Landroid/support/v7/app/u;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/aa;->a(Landroid/view/View;Landroid/support/v4/view/T;)V

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f030012

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    check-cast v0, Landroid/support/v7/internal/widget/B;

    new-instance v1, Landroid/support/v7/app/v;

    invoke-direct {v1, p0}, Landroid/support/v7/app/v;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/B;->setOnFitSystemWindowsListener(Landroid/support/v7/internal/widget/C;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Landroid/widget/TextView;

    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ac;->b(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ContentFrameLayout;

    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_a
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v1, v7}, Landroid/support/v7/internal/widget/ContentFrameLayout;->setId(I)V

    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_b

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->h()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/support/v7/internal/widget/ContentFrameLayout;->a(IIII)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/a/a;->aV:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Landroid/support/v7/a/a;->bg:I

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Landroid/support/v7/a/a;->bh:I

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Landroid/support/v7/a/a;->be:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Landroid/support/v7/a/a;->be:I

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_d
    sget v2, Landroid/support/v7/a/a;->bf:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_e

    sget v2, Landroid/support/v7/a/a;->bf:I

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_e
    sget v2, Landroid/support/v7/a/a;->bc:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Landroid/support/v7/a/a;->bc:I

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_f
    sget v2, Landroid/support/v7/a/a;->bd:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_10

    sget v2, Landroid/support/v7/a/a;->bd:I

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_10
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ContentFrameLayout;->requestLayout()V

    iput-boolean v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Z

    invoke-direct {p0, v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    if-nez v0, :cond_12

    :cond_11
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->f(I)V

    :cond_12
    return-void
.end method

.method private j()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->c()V

    :cond_0
    new-instance v3, Landroid/support/v7/app/y;

    invoke-direct {v3, p0, p1}, Landroid/support/v7/app/y;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/c/b;)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v0, :cond_5

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v5, 0x7f010015

    invoke-virtual {v0, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v0, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v0, Landroid/support/v7/internal/view/a;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-direct {v0, v6, v2}, Landroid/support/v7/internal/view/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :goto_0
    new-instance v5, Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-direct {v5, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    new-instance v5, Landroid/widget/PopupWindow;

    const v6, 0x7f010028

    invoke-direct {v5, v0, v7, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f010017

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v0, Landroid/support/v7/app/w;

    invoke-direct {v0, p0}, Landroid/support/v7/app/w;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Ljava/lang/Runnable;

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->c()V

    new-instance v4, Landroid/support/v7/internal/view/b;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    invoke-direct {v4, v5, v6, v3, v0}, Landroid/support/v7/internal/view/b;-><init>(Landroid/content/Context;Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/c/b;Z)V

    invoke-virtual {v4}, Landroid/support/v7/c/a;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Landroid/support/v7/c/a;->d()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/support/v7/c/a;)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/aa;->m(Landroid/view/View;)V

    :cond_3
    :goto_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    return-object v0

    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    const v4, 0x7f0a0059

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ViewStubCompat;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->g()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    iput-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    goto :goto_3
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    move v6, v7

    :goto_1
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Landroid/support/v7/internal/a/a;

    if-nez v1, :cond_1

    new-instance v1, Landroid/support/v7/internal/a/a;

    invoke-direct {v1}, Landroid/support/v7/internal/a/a;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Landroid/support/v7/internal/a/a;

    :cond_1
    if-eqz v6, :cond_3

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Z

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-eq v1, v2, :cond_3

    invoke-static {p1}, Landroid/support/v4/view/aa;->r(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    move v5, v7

    :goto_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Landroid/support/v7/internal/a/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/internal/a/a;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v6, v0

    goto :goto_1

    :cond_3
    move v5, v0

    goto :goto_2
.end method

.method public final a()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->i()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/app/o;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/P;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->f()Landroid/support/v7/app/a;

    move-result-object v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Z)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/z;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ap;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/z;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/z;->c()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-direct {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/z;->e()Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/z;->f()Z

    invoke-direct {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    invoke-direct {p0, v0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->i()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->i()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method final a(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/support/v7/app/a;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    iput-boolean v0, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v3

    iput-boolean v1, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    if-nez v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/o;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/i;->n()Landroid/support/v7/internal/view/menu/i;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    packed-switch v3, :pswitch_data_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    move v1, v0

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    iget-boolean v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-nez v2, :cond_2

    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    sparse-switch v3, :sswitch_data_0

    :cond_5
    move v0, v2

    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/z;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ap;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/z;->c()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/z;->e()Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/z;->f()Z

    move-result v0

    goto :goto_3

    :cond_7
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-nez v0, :cond_8

    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Z

    if-eqz v0, :cond_9

    :cond_8
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    invoke-direct {p0, v3, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_3

    :cond_9
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    if-eqz v0, :cond_f

    iput-boolean v2, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->k:Z

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_e

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    move v0, v1

    goto :goto_3

    :cond_a
    const-string v0, "AppCompatDelegate"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :sswitch_1
    invoke-direct {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-eqz v3, :cond_b

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->c()V

    move v0, v1

    :goto_5
    if-eqz v0, :cond_5

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/support/v7/app/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_5

    :cond_d
    move v0, v2

    goto :goto_5

    :cond_e
    move v0, v2

    goto :goto_3

    :cond_f
    move v0, v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/support/v7/app/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->f(I)V

    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->i()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method final b(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/z;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/z;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->f()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->f()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->j()V

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->j()V

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Z

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->j()V

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->g:Z

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->j()V

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Z

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->j()V

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Z

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->j()V

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0, p0}, Landroid/support/v4/view/v;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/B;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method final c(I)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/support/v7/app/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->c(Z)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_1

    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public final d()Landroid/support/v7/app/a;
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->i()V

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/support/v7/internal/a/b;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/internal/a/b;-><init>(Landroid/app/Activity;Z)V

    move-object v0, v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Z)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Dialog;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/support/v7/internal/a/b;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/a/b;-><init>(Landroid/app/Dialog;)V

    move-object v0, v1

    goto :goto_0
.end method

.method final d(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/support/v7/app/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->c(Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
