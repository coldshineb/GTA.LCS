.class public final Landroid/support/v7/app/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v7/app/f;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/k;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/l;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/app/f;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroid/support/v7/app/k;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iput p2, p0, Landroid/support/v7/app/l;->b:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/l;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iput-object p1, v0, Landroid/support/v7/app/f;->g:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/l;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iput-object p1, v0, Landroid/support/v7/app/f;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final a(Landroid/view/View;)Landroid/support/v7/app/l;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iput-object p1, v0, Landroid/support/v7/app/f;->e:Landroid/view/View;

    return-object p0
.end method

.method public final a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/l;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iput-object p1, v0, Landroid/support/v7/app/f;->h:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iput-object p2, v0, Landroid/support/v7/app/f;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v7/app/l;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iput-object p1, v0, Landroid/support/v7/app/f;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final b()Landroid/support/v7/app/k;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/support/v7/app/k;

    iget-object v1, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iget-object v1, v1, Landroid/support/v7/app/f;->a:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/app/l;->b:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    invoke-static {v0}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k;)Landroid/support/v7/app/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/d;)V

    iget-object v1, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iget-boolean v1, v1, Landroid/support/v7/app/f;->f:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->setCancelable(Z)V

    iget-object v1, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iget-boolean v1, v1, Landroid/support/v7/app/f;->f:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->setCanceledOnTouchOutside(Z)V

    :cond_0
    invoke-virtual {v0, v3}, Landroid/support/v7/app/k;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/app/k;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iget-object v1, v1, Landroid/support/v7/app/f;->g:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/app/f;

    iget-object v1, v1, Landroid/support/v7/app/f;->g:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method
