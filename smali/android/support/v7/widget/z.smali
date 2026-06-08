.class public Landroid/support/v7/widget/z;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/reflect/Method;


# instance fields
.field b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/PopupWindow;

.field private e:Landroid/widget/ListAdapter;

.field private f:Landroid/support/v7/widget/C;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Landroid/database/DataSetObserver;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/AdapterView$OnItemClickListener;

.field private final s:Landroid/support/v7/widget/K;

.field private final t:Landroid/support/v7/widget/J;

.field private final u:Landroid/support/v7/widget/I;

.field private final v:Landroid/support/v7/widget/G;

.field private w:Landroid/os/Handler;

.field private x:Landroid/graphics/Rect;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/z;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f01004b

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/widget/z;->g:I

    iput v0, p0, Landroid/support/v7/widget/z;->h:I

    iput v2, p0, Landroid/support/v7/widget/z;->l:I

    iput-boolean v2, p0, Landroid/support/v7/widget/z;->m:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/z;->n:Z

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/z;->b:I

    iput v2, p0, Landroid/support/v7/widget/z;->o:I

    new-instance v0, Landroid/support/v7/widget/K;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/K;-><init>(Landroid/support/v7/widget/z;B)V

    iput-object v0, p0, Landroid/support/v7/widget/z;->s:Landroid/support/v7/widget/K;

    new-instance v0, Landroid/support/v7/widget/J;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/J;-><init>(Landroid/support/v7/widget/z;B)V

    iput-object v0, p0, Landroid/support/v7/widget/z;->t:Landroid/support/v7/widget/J;

    new-instance v0, Landroid/support/v7/widget/I;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/I;-><init>(Landroid/support/v7/widget/z;B)V

    iput-object v0, p0, Landroid/support/v7/widget/z;->u:Landroid/support/v7/widget/I;

    new-instance v0, Landroid/support/v7/widget/G;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/G;-><init>(Landroid/support/v7/widget/z;B)V

    iput-object v0, p0, Landroid/support/v7/widget/z;->v:Landroid/support/v7/widget/G;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/z;->w:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/widget/z;->c:Landroid/content/Context;

    sget-object v0, Landroid/support/v7/a/a;->ab:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a;->ac:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/z;->i:I

    sget v1, Landroid/support/v7/a/a;->ad:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/z;->j:I

    iget v1, p0, Landroid/support/v7/widget/z;->j:I

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Landroid/support/v7/widget/z;->k:Z

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/support/v7/internal/widget/x;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v7/internal/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/support/v4/d/h;->a(Ljava/util/Locale;)I

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/z;)Landroid/support/v7/widget/C;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/widget/z;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/z;)Landroid/support/v7/widget/K;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->s:Landroid/support/v7/widget/K;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/z;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->w:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    iget-object v0, p0, Landroid/support/v7/widget/z;->w:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/z;->s:Landroid/support/v7/widget/K;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/z;->o:I

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/z;->q:Landroid/view/View;

    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/z;->r:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/z;->p:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v7/widget/H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/H;-><init>(Landroid/support/v7/widget/z;B)V

    iput-object v0, p0, Landroid/support/v7/widget/z;->p:Landroid/database/DataSetObserver;

    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/z;->e:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/support/v7/widget/z;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/z;->p:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    iget-object v1, p0, Landroid/support/v7/widget/z;->e:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/z;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/z;->e:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/widget/z;->p:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/z;->y:Z

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/z;->l:I

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 14

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/z;->c:Landroid/content/Context;

    new-instance v0, Landroid/support/v7/widget/A;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/A;-><init>(Landroid/support/v7/widget/z;)V

    new-instance v2, Landroid/support/v7/widget/C;

    iget-boolean v0, p0, Landroid/support/v7/widget/z;->y:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v1, v0}, Landroid/support/v7/widget/C;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    iget-object v1, p0, Landroid/support/v7/widget/z;->e:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    iget-object v1, p0, Landroid/support/v7/widget/z;->r:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->setFocusable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    new-instance v1, Landroid/support/v7/widget/B;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/B;-><init>(Landroid/support/v7/widget/z;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    iget-object v1, p0, Landroid/support/v7/widget/z;->u:Landroid/support/v7/widget/I;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    iget-object v1, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_1
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/support/v7/widget/z;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/z;->j:I

    :cond_0
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    iget-object v1, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/support/v7/widget/z;->q:Landroid/view/View;

    iget v3, p0, Landroid/support/v7/widget/z;->j:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v8

    iget v1, p0, Landroid/support/v7/widget/z;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    add-int/2addr v0, v8

    :goto_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/z;->f()Z

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_14

    iget v1, p0, Landroid/support/v7/widget/z;->h:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    const/4 v4, -0x1

    :goto_4
    iget v1, p0, Landroid/support/v7/widget/z;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    if-eqz v3, :cond_e

    move v5, v0

    :goto_5
    if-eqz v3, :cond_10

    iget-object v1, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/z;->h:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    const/4 v0, -0x1

    :goto_6
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    :goto_7
    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/z;->q:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/widget/z;->i:I

    iget v3, p0, Landroid/support/v7/widget/z;->j:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_1
    :goto_8
    return-void

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    :cond_5
    iget v1, p0, Landroid/support/v7/widget/z;->h:I

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Landroid/support/v7/widget/z;->h:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_9
    iget-object v10, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/D;->getListPaddingTop()I

    move-result v3

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/D;->getListPaddingBottom()I

    move-result v4

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/D;->getListPaddingLeft()I

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/D;->getListPaddingRight()I

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/D;->getDividerHeight()I

    move-result v2

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/D;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v10}, Landroid/support/v7/internal/widget/D;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    if-nez v11, :cond_7

    add-int/2addr v4, v3

    :cond_6
    :goto_a
    if-lez v4, :cond_1c

    add-int/lit8 v0, v0, 0x0

    :goto_b
    add-int/2addr v0, v4

    goto :goto_3

    :pswitch_0
    iget-object v1, p0, Landroid/support/v7/widget/z;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_9

    :pswitch_1
    iget-object v1, p0, Landroid/support/v7/widget/z;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_9

    :cond_7
    add-int/2addr v4, v3

    if-lez v2, :cond_9

    if-eqz v5, :cond_9

    :goto_c
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    const/4 v3, 0x0

    move v9, v3

    :goto_d
    if-ge v9, v12, :cond_6

    invoke-interface {v11, v9}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    if-eq v3, v5, :cond_8

    const/4 v6, 0x0

    move v5, v3

    :cond_8
    invoke-interface {v11, v9, v6, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_a

    iget v13, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v13, :cond_a

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_e
    invoke-virtual {v6, v1, v3}, Landroid/view/View;->measure(II)V

    if-lez v9, :cond_1d

    add-int v3, v4, v2

    :goto_f
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    if-lt v4, v8, :cond_b

    move v4, v8

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    goto :goto_c

    :cond_a
    const/4 v3, 0x0

    const/4 v13, 0x0

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_e

    :cond_b
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_d

    :cond_c
    iget v1, p0, Landroid/support/v7/widget/z;->h:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/z;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    goto/16 :goto_4

    :cond_d
    iget v4, p0, Landroid/support/v7/widget/z;->h:I

    goto/16 :goto_4

    :cond_e
    const/4 v5, -0x1

    goto/16 :goto_5

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_10
    iget-object v1, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/z;->h:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    const/4 v0, -0x1

    :goto_10
    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto/16 :goto_7

    :cond_11
    const/4 v0, 0x0

    goto :goto_10

    :cond_12
    iget v1, p0, Landroid/support/v7/widget/z;->g:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_13

    move v5, v0

    goto/16 :goto_7

    :cond_13
    iget v5, p0, Landroid/support/v7/widget/z;->g:I

    goto/16 :goto_7

    :cond_14
    iget v3, p0, Landroid/support/v7/widget/z;->h:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_18

    const/4 v1, -0x1

    :goto_11
    iget v3, p0, Landroid/support/v7/widget/z;->g:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    const/4 v0, -0x1

    :goto_12
    iget-object v2, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    sget-object v0, Landroid/support/v7/widget/z;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    :try_start_0
    sget-object v0, Landroid/support/v7/widget/z;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_15
    :goto_13
    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/z;->t:Landroid/support/v7/widget/J;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/z;->q:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/widget/z;->i:I

    iget v3, p0, Landroid/support/v7/widget/z;->j:I

    iget v4, p0, Landroid/support/v7/widget/z;->l:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/widget/x;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->setSelection(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/z;->y:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    invoke-virtual {p0}, Landroid/support/v7/widget/z;->e()V

    :cond_17
    iget-boolean v0, p0, Landroid/support/v7/widget/z;->y:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/z;->w:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/z;->v:Landroid/support/v7/widget/G;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    :cond_18
    iget v3, p0, Landroid/support/v7/widget/z;->h:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_19

    iget-object v3, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/support/v7/widget/z;->q:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_11

    :cond_19
    iget-object v3, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/widget/z;->h:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_11

    :cond_1a
    iget v3, p0, Landroid/support/v7/widget/z;->g:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1b

    iget-object v3, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto :goto_12

    :cond_1b
    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/support/v7/widget/z;->g:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto/16 :goto_12

    :catch_0
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v1, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_1c
    move v0, v7

    goto/16 :goto_b

    :cond_1d
    move v3, v4

    goto/16 :goto_f

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/z;->x:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/z;->h:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/z;->h:I

    goto :goto_0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->q:Landroid/view/View;

    return-object v0
.end method

.method public final d(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/C;->a(Landroid/support/v7/widget/C;Z)Z

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->f:Landroid/support/v7/widget/C;

    return-object v0
.end method
