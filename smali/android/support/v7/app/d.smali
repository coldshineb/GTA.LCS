.class final Landroid/support/v7/app/d;
.super Ljava/lang/Object;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/ListAdapter;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Landroid/os/Handler;

.field private final N:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v7/app/C;

.field private final c:Landroid/view/Window;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/widget/Button;

.field private o:Ljava/lang/CharSequence;

.field private p:Landroid/os/Message;

.field private q:Landroid/widget/Button;

.field private r:Ljava/lang/CharSequence;

.field private s:Landroid/os/Message;

.field private t:Landroid/widget/Button;

.field private u:Ljava/lang/CharSequence;

.field private v:Landroid/os/Message;

.field private w:Landroid/widget/ScrollView;

.field private x:I

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/C;Landroid/view/Window;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Landroid/support/v7/app/d;->m:Z

    iput v3, p0, Landroid/support/v7/app/d;->x:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/d;->E:I

    iput v3, p0, Landroid/support/v7/app/d;->L:I

    new-instance v0, Landroid/support/v7/app/e;

    invoke-direct {v0, p0}, Landroid/support/v7/app/e;-><init>(Landroid/support/v7/app/d;)V

    iput-object v0, p0, Landroid/support/v7/app/d;->N:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/support/v7/app/d;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/app/d;->b:Landroid/support/v7/app/C;

    iput-object p3, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    new-instance v0, Landroid/support/v7/app/i;

    invoke-direct {v0, p2}, Landroid/support/v7/app/i;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Landroid/support/v7/app/d;->M:Landroid/os/Handler;

    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/a/a;->E:[I

    const v2, 0x7f01005a

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a;->F:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->F:I

    sget v1, Landroid/support/v7/a/a;->G:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->G:I

    sget v1, Landroid/support/v7/a/a;->I:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->H:I

    sget v1, Landroid/support/v7/a/a;->J:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->I:I

    sget v1, Landroid/support/v7/a/a;->K:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->J:I

    sget v1, Landroid/support/v7/a/a;->H:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->K:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/d;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/app/d;->E:I

    return p1
.end method

.method static synthetic a(Landroid/support/v7/app/d;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/app/d;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/d;->D:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/app/d;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    return-object p1
.end method

.method private static a(Landroid/widget/Button;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/app/d;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/d;->p:Landroid/os/Message;

    return-object v0
.end method

.method private static b(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :cond_2
    if-lez v2, :cond_3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/app/d;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/app/d;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/app/d;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/d;->s:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/app/d;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/app/d;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/d;->v:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/app/d;)Landroid/support/v7/app/C;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/d;->b:Landroid/support/v7/app/C;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/app/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/d;->M:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/app/d;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/app/d;->H:I

    return v0
.end method

.method static synthetic j(Landroid/support/v7/app/d;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/app/d;->K:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 12

    const/high16 v11, 0x20000

    const/4 v10, -0x1

    const/4 v3, 0x1

    const/16 v9, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/d;->b:Landroid/support/v7/app/C;

    invoke-virtual {v0}, Landroid/support/v7/app/C;->a()Landroid/support/v7/app/n;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/n;->b(I)Z

    iget v0, p0, Landroid/support/v7/app/d;->G:I

    iget v0, p0, Landroid/support/v7/app/d;->F:I

    iget-object v1, p0, Landroid/support/v7/app/d;->b:Landroid/support/v7/app/C;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/C;->setContentView(I)V

    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v1, 0x7f0a004e

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v4, 0x7f0a004f

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    iget-object v1, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/d;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/d;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v7/app/d;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/app/d;->o:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v4, 0x102001a

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/d;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/app/d;->r:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v4, 0x102001b

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/d;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/app/d;->u:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/content/Context;

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v5, 0x7f01005c

    invoke-virtual {v0, v5, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v4, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_e

    move v0, v3

    :goto_4
    if-eqz v0, :cond_1

    if-ne v1, v3, :cond_f

    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v7/app/d;->a(Landroid/widget/Button;)V

    :cond_1
    :goto_5
    if-eqz v1, :cond_11

    move v4, v3

    :goto_6
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/app/d;->a:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Landroid/support/v7/a/a;->E:[I

    const v7, 0x7f01005a

    invoke-static {v1, v5, v6, v7, v2}, Lcom/google/android/vending/expansion/downloader/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/google/android/vending/expansion/downloader/c;

    move-result-object v5

    iget-object v1, p0, Landroid/support/v7/app/d;->C:Landroid/view/View;

    if-eqz v1, :cond_12

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v1, v10, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v6, p0, Landroid/support/v7/app/d;->C:Landroid/view/View;

    invoke-virtual {v0, v6, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v1, 0x7f0a004c

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v4, :cond_2

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/support/v7/app/d;->g:Landroid/view/View;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/support/v7/app/d;->g:Landroid/view/View;

    move-object v4, v1

    :goto_8
    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v4}, Landroid/support/v7/app/d;->b(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    invoke-virtual {v1, v11, v11}, Landroid/view/Window;->setFlags(II)V

    :cond_5
    if-eqz v2, :cond_19

    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Landroid/support/v7/app/d;->m:Z

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/support/v7/app/d;->i:I

    iget v4, p0, Landroid/support/v7/app/d;->j:I

    iget v6, p0, Landroid/support/v7/app/d;->k:I

    iget v7, p0, Landroid/support/v7/app/d;->l:I

    invoke-virtual {v1, v2, v4, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_6
    iget-object v1, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_7
    :goto_9
    iget-object v0, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    iget-object v1, p0, Landroid/support/v7/app/d;->D:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/app/d;->D:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, p0, Landroid/support/v7/app/d;->E:I

    if-ltz v1, :cond_8

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_8
    invoke-virtual {v5}, Lcom/google/android/vending/expansion/downloader/c;->b()V

    return-void

    :cond_9
    iget-object v1, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    iget-object v4, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_a

    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v7/app/d;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/d;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/d;->u:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x4

    goto/16 :goto_3

    :cond_e
    move v0, v2

    goto/16 :goto_4

    :cond_f
    const/4 v0, 0x2

    if-ne v1, v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v7/app/d;->a(Landroid/widget/Button;)V

    goto/16 :goto_5

    :cond_10
    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v7/app/d;->a(Landroid/widget/Button;)V

    goto/16 :goto_5

    :cond_11
    move v4, v2

    goto/16 :goto_6

    :cond_12
    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v6, 0x1020006

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/app/d;->d:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    move v1, v3

    :goto_a
    if-eqz v1, :cond_16

    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/d;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/support/v7/app/d;->x:I

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/d;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_13
    move v1, v2

    goto :goto_a

    :cond_14
    iget-object v0, p0, Landroid/support/v7/app/d;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/app/d;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_15
    iget-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v6, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_16
    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v6, 0x7f0a004c

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    :cond_17
    iget v1, p0, Landroid/support/v7/app/d;->h:I

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/support/v7/app/d;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v4, p0, Landroid/support/v7/app/d;->h:I

    invoke-virtual {v1, v4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_8

    :cond_18
    const/4 v1, 0x0

    move-object v4, v1

    goto/16 :goto_8

    :cond_19
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/app/d;->y:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/d;->x:I

    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/d;->C:Landroid/view/View;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/app/d;->d:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
