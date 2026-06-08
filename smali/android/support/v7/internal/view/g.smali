.class final Landroid/support/v7/internal/view/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/Menu;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:I

.field private n:C

.field private o:C

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Landroid/support/v4/view/k;

.field private synthetic z:Landroid/support/v7/internal/view/e;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/e;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/internal/view/g;->a:Landroid/view/Menu;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/g;->a()V

    return-void
.end method

.method private static a(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/internal/view/g;)Landroid/support/v4/view/k;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/g;->y:Landroid/support/v4/view/k;

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-static {v0}, Landroid/support/v7/internal/view/e;->a(Landroid/support/v7/internal/view/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SupportMenuInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot instantiate class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/MenuItem;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v7/internal/view/g;->q:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/g;->r:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/g;->s:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Landroid/support/v7/internal/view/g;->p:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/internal/view/g;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Landroid/support/v7/internal/view/g;->m:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/internal/view/g;->n:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/internal/view/g;->o:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    iget v0, p0, Landroid/support/v7/internal/view/g;->t:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/view/g;->t:I

    invoke-static {p1, v0}, Landroid/support/v4/view/G;->a(Landroid/view/MenuItem;I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/g;->x:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-static {v0}, Landroid/support/v7/internal/view/e;->a(Landroid/support/v7/internal/view/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v7/internal/view/f;

    iget-object v3, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-static {v3}, Landroid/support/v7/internal/view/e;->c(Landroid/support/v7/internal/view/e;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/view/g;->x:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/support/v7/internal/view/f;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_3
    iget v0, p0, Landroid/support/v7/internal/view/g;->p:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/m;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/m;->a(Z)V

    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/support/v7/internal/view/g;->v:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/view/g;->v:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/internal/view/e;->b()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-static {v3}, Landroid/support/v7/internal/view/e;->d(Landroid/support/v7/internal/view/e;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/internal/view/g;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p1, v0}, Landroid/support/v4/view/G;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    :goto_2
    iget v0, p0, Landroid/support/v7/internal/view/g;->u:I

    if-lez v0, :cond_5

    if-nez v1, :cond_8

    iget v0, p0, Landroid/support/v7/internal/view/g;->u:I

    invoke-static {p1, v0}, Landroid/support/v4/view/G;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/support/v7/internal/view/g;->y:Landroid/support/v4/view/k;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/internal/view/g;->y:Landroid/support/v4/view/k;

    invoke-static {p1, v0}, Landroid/support/v4/view/G;->a(Landroid/view/MenuItem;Landroid/support/v4/view/k;)Landroid/view/MenuItem;

    :cond_6
    return-void

    :cond_7
    instance-of v0, p1, Landroid/support/v7/internal/view/menu/o;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->a(Z)V

    goto :goto_1

    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/view/g;->b:I

    iput v0, p0, Landroid/support/v7/internal/view/g;->c:I

    iput v0, p0, Landroid/support/v7/internal/view/g;->d:I

    iput v0, p0, Landroid/support/v7/internal/view/g;->e:I

    iput-boolean v1, p0, Landroid/support/v7/internal/view/g;->f:Z

    iput-boolean v1, p0, Landroid/support/v7/internal/view/g;->g:Z

    return-void
.end method

.method public final a(Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-static {v0}, Landroid/support/v7/internal/view/e;->a(Landroid/support/v7/internal/view/e;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/a;->ae:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a;->ah:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/g;->b:I

    sget v1, Landroid/support/v7/a/a;->ai:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/g;->c:I

    sget v1, Landroid/support/v7/a/a;->aj:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/g;->d:I

    sget v1, Landroid/support/v7/a/a;->af:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/g;->e:I

    sget v1, Landroid/support/v7/a/a;->ak:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/g;->f:Z

    sget v1, Landroid/support/v7/a/a;->ag:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/g;->g:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/g;->h:Z

    iget-object v0, p0, Landroid/support/v7/internal/view/g;->a:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/internal/view/g;->b:I

    iget v2, p0, Landroid/support/v7/internal/view/g;->i:I

    iget v3, p0, Landroid/support/v7/internal/view/g;->j:I

    iget-object v4, p0, Landroid/support/v7/internal/view/g;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/g;->a(Landroid/view/MenuItem;)V

    return-void
.end method

.method public final b(Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-static {v0}, Landroid/support/v7/internal/view/e;->a(Landroid/support/v7/internal/view/e;)Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroid/support/v7/a/a;->al:[I

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v0, Landroid/support/v7/a/a;->au:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/g;->i:I

    sget v0, Landroid/support/v7/a/a;->av:I

    iget v4, p0, Landroid/support/v7/internal/view/g;->c:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v4, Landroid/support/v7/a/a;->ay:I

    iget v5, p0, Landroid/support/v7/internal/view/g;->d:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/high16 v5, -0x10000

    and-int/2addr v0, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroid/support/v7/internal/view/g;->j:I

    sget v0, Landroid/support/v7/a/a;->az:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/g;->k:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/a/a;->aA:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/g;->l:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/a/a;->at:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/g;->m:I

    sget v0, Landroid/support/v7/a/a;->ap:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/g;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/g;->n:C

    sget v0, Landroid/support/v7/a/a;->aw:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/g;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/g;->o:C

    sget v0, Landroid/support/v7/a/a;->aq:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/support/v7/a/a;->aq:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/support/v7/internal/view/g;->p:I

    :goto_1
    sget v0, Landroid/support/v7/a/a;->ar:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/g;->q:Z

    sget v0, Landroid/support/v7/a/a;->aB:I

    iget-boolean v4, p0, Landroid/support/v7/internal/view/g;->f:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/g;->r:Z

    sget v0, Landroid/support/v7/a/a;->as:I

    iget-boolean v4, p0, Landroid/support/v7/internal/view/g;->g:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/g;->s:Z

    sget v0, Landroid/support/v7/a/a;->aC:I

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/g;->t:I

    sget v0, Landroid/support/v7/a/a;->ax:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/g;->x:Ljava/lang/String;

    sget v0, Landroid/support/v7/a/a;->am:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/g;->u:I

    sget v0, Landroid/support/v7/a/a;->ao:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/g;->v:Ljava/lang/String;

    sget v0, Landroid/support/v7/a/a;->an:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/g;->w:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/internal/view/g;->w:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_2
    if-eqz v1, :cond_3

    iget v0, p0, Landroid/support/v7/internal/view/g;->u:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/view/g;->v:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/view/g;->w:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/internal/view/e;->a()[Ljava/lang/Class;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-static {v4}, Landroid/support/v7/internal/view/e;->b(Landroid/support/v7/internal/view/e;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Landroid/support/v7/internal/view/g;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/k;

    iput-object v0, p0, Landroid/support/v7/internal/view/g;->y:Landroid/support/v4/view/k;

    :goto_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v2, p0, Landroid/support/v7/internal/view/g;->h:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v7/internal/view/g;->e:I

    iput v0, p0, Landroid/support/v7/internal/view/g;->p:I

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/g;->y:Landroid/support/v4/view/k;

    goto :goto_3
.end method

.method public final c()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/g;->h:Z

    iget-object v0, p0, Landroid/support/v7/internal/view/g;->a:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/internal/view/g;->b:I

    iget v2, p0, Landroid/support/v7/internal/view/g;->i:I

    iget v3, p0, Landroid/support/v7/internal/view/g;->j:I

    iget-object v4, p0, Landroid/support/v7/internal/view/g;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/internal/view/g;->a(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/internal/view/g;->h:Z

    return v0
.end method
