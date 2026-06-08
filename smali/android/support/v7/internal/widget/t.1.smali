.class public abstract Landroid/support/v7/internal/widget/t;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v7/app/h;

.field private c:Landroid/support/v7/app/h;

.field private d:Landroid/view/View;

.field private e:Z

.field f:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field g:I

.field h:J

.field i:Z

.field j:I

.field k:Z

.field l:Landroid/support/v7/internal/widget/v;

.field m:Z

.field n:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field o:J

.field p:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field q:J

.field r:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field s:I

.field t:I

.field u:J

.field v:Z

.field private w:Z

.field private x:Landroid/support/v7/internal/widget/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/internal/widget/t",
            "<TT;>.android/support/v7/internal/widget/w;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Landroid/support/v7/internal/widget/t;->f:I

    iput-wide v2, p0, Landroid/support/v7/internal/widget/t;->h:J

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/t;->i:Z

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/t;->k:Z

    iput v1, p0, Landroid/support/v7/internal/widget/t;->n:I

    iput-wide v2, p0, Landroid/support/v7/internal/widget/t;->o:J

    iput v1, p0, Landroid/support/v7/internal/widget/t;->p:I

    iput-wide v2, p0, Landroid/support/v7/internal/widget/t;->q:J

    iput v1, p0, Landroid/support/v7/internal/widget/t;->t:I

    iput-wide v2, p0, Landroid/support/v7/internal/widget/t;->u:J

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/t;->v:Z

    return-void
.end method

.method private a(I)J
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/t;)Landroid/os/Parcelable;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->b:Landroid/support/v7/app/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getSelectedView()Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/t;Landroid/os/Parcelable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/t;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/t;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/t;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/t;->onLayout(ZIIII)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/t;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/t;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/t;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/internal/widget/t;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IJ)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/widget/t;->l:Landroid/support/v7/internal/widget/v;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/t;->playSoundEffect(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final b()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    move v3, v1

    :goto_1
    if-eqz v3, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/t;->w:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz v3, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/t;->e:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/t;->a(Z)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method final c()V
    .locals 18

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/t;->r:I

    const/4 v7, 0x0

    if-lez v9, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/internal/widget/t;->i:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/internal/widget/t;->i:Z

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/internal/widget/t;->r:I

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/v7/internal/widget/t;->h:J

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/internal/widget/t;->g:I

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v3, v12, v4

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v10, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v14, 0x64

    add-long/2addr v14, v2

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v11

    if-eqz v11, :cond_d

    move v3, v4

    move v5, v4

    move v6, v4

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v4, v16, v14

    if-gtz v4, :cond_d

    invoke-interface {v11, v6}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v16

    cmp-long v4, v16, v12

    if-nez v4, :cond_6

    :goto_1
    if-ltz v6, :cond_e

    if-ne v6, v6, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/t;->setNextSelectedPositionInt(I)V

    const/4 v7, 0x1

    move v2, v7

    :goto_2
    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/t;->getSelectedItemPosition()I

    move-result v3

    if-lt v3, v9, :cond_1

    add-int/lit8 v3, v9, -0x1

    :cond_1
    if-gez v3, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-gez v3, :cond_3

    :cond_3
    if-ltz v3, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/t;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/t;->d()V

    const/4 v2, 0x1

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/internal/widget/t;->p:I

    const-wide/high16 v2, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/support/v7/internal/widget/t;->q:J

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/internal/widget/t;->n:I

    const-wide/high16 v2, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/support/v7/internal/widget/t;->o:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/internal/widget/t;->i:Z

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/t;->d()V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v4, v10, -0x1

    if-ne v3, v4, :cond_9

    const/4 v4, 0x1

    move v8, v4

    :goto_4
    if-nez v5, :cond_a

    const/4 v4, 0x1

    :goto_5
    if-eqz v8, :cond_7

    if-nez v4, :cond_d

    :cond_7
    if-nez v4, :cond_8

    if-eqz v2, :cond_b

    if-nez v8, :cond_b

    :cond_8
    add-int/lit8 v4, v3, 0x1

    const/4 v2, 0x0

    move v3, v4

    move v6, v4

    goto :goto_0

    :cond_9
    const/4 v4, 0x0

    move v8, v4

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    if-nez v8, :cond_c

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    :cond_c
    add-int/lit8 v4, v5, -0x1

    const/4 v2, 0x1

    move v5, v4

    move v6, v4

    goto :goto_0

    :cond_d
    const/4 v6, -0x1

    goto :goto_1

    :cond_e
    move v2, v7

    goto :goto_2

    :cond_f
    move v2, v7

    goto :goto_3
.end method

.method protected canAnimate()Z
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/t;->r:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()V
    .locals 4

    iget v0, p0, Landroid/support/v7/internal/widget/t;->p:I

    iget v1, p0, Landroid/support/v7/internal/widget/t;->t:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/support/v7/internal/widget/t;->q:J

    iget-wide v2, p0, Landroid/support/v7/internal/widget/t;->u:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->b:Landroid/support/v7/app/h;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/t;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/t;->v:Z

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->x:Landroid/support/v7/internal/widget/w;

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v7/internal/widget/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/w;-><init>(Landroid/support/v7/internal/widget/t;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/t;->x:Landroid/support/v7/internal/widget/w;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->x:Landroid/support/v7/internal/widget/w;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/t;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    iget v0, p0, Landroid/support/v7/internal/widget/t;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/t;->sendAccessibilityEvent(I)V

    :cond_4
    iget v0, p0, Landroid/support/v7/internal/widget/t;->p:I

    iput v0, p0, Landroid/support/v7/internal/widget/t;->t:I

    iget-wide v0, p0, Landroid/support/v7/internal/widget/t;->q:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/t;->u:J

    :cond_5
    return-void

    :cond_6
    invoke-direct {p0}, Landroid/support/v7/internal/widget/t;->a()V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/t;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/t;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Landroid/support/v7/internal/widget/t;->r:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    iget v0, p0, Landroid/support/v7/internal/widget/t;->f:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/widget/t;->f:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Landroid/support/v7/internal/widget/v;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->l:Landroid/support/v7/internal/widget/v;

    return-object v0
.end method

.method public final getOnItemLongClickListener$5e3e1f29()Landroid/support/v7/app/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/support/v7/app/h;

    return-object v0
.end method

.method public final getOnItemSelectedListener$6ab2a050()Landroid/support/v7/app/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->b:Landroid/support/v7/app/h;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getSelectedItemPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-wide v0, p0, Landroid/support/v7/internal/widget/t;->o:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Landroid/support/v7/internal/widget/t;->n:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/t;->x:Landroid/support/v7/internal/widget/w;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/t;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/t;->a:I

    return-void
.end method

.method public removeAllViews()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/internal/widget/t;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/t;->a(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/t;->e:Z

    if-nez p1, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/t;->w:Z

    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/t;->w:Z

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/t;->e:Z

    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2

    iput p1, p0, Landroid/support/v7/internal/widget/t;->n:I

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/t;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/t;->o:J

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/t;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/t;->j:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/support/v7/internal/widget/t;->g:I

    iget-wide v0, p0, Landroid/support/v7/internal/widget/t;->o:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/t;->h:J

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Landroid/support/v7/internal/widget/v;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/t;->l:Landroid/support/v7/internal/widget/v;

    return-void
.end method

.method public setOnItemLongClickListener$c9b218b(Landroid/support/v7/app/h;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/t;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/t;->setLongClickable(Z)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/t;->c:Landroid/support/v7/app/h;

    return-void
.end method

.method public setOnItemSelectedListener$685d046a(Landroid/support/v7/app/h;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/t;->b:Landroid/support/v7/app/h;

    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2

    iput p1, p0, Landroid/support/v7/internal/widget/t;->p:I

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/t;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/t;->q:J

    return-void
.end method

.method public abstract setSelection(I)V
.end method
