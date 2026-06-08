.class public final Landroid/support/v7/app/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/view/View;

.field public f:Z

.field public g:Landroid/content/DialogInterface$OnKeyListener;

.field public h:Landroid/widget/ListAdapter;

.field public i:Landroid/content/DialogInterface$OnClickListener;

.field private j:I

.field private k:I

.field private l:Z

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/app/f;->j:I

    iput v0, p0, Landroid/support/v7/app/f;->k:I

    iput-boolean v0, p0, Landroid/support/v7/app/f;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/f;->m:I

    iput-object p1, p0, Landroid/support/v7/app/f;->a:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/f;->f:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/app/d;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/d;->a(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/f;->h:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/f;->b:Landroid/view/LayoutInflater;

    invoke-static {p1}, Landroid/support/v7/app/d;->i(Landroid/support/v7/app/d;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {p1}, Landroid/support/v7/app/d;->j(Landroid/support/v7/app/d;)I

    move-result v2

    iget-object v1, p0, Landroid/support/v7/app/f;->h:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/app/f;->h:Landroid/widget/ListAdapter;

    :goto_1
    invoke-static {p1, v1}, Landroid/support/v7/app/d;->a(Landroid/support/v7/app/d;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    iget v1, p0, Landroid/support/v7/app/f;->m:I

    invoke-static {p1, v1}, Landroid/support/v7/app/d;->a(Landroid/support/v7/app/d;I)I

    iget-object v1, p0, Landroid/support/v7/app/f;->i:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/support/v7/app/g;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/app/g;-><init>(Landroid/support/v7/app/f;Landroid/support/v7/app/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    invoke-static {p1, v0}, Landroid/support/v7/app/d;->a(Landroid/support/v7/app/d;Landroid/widget/ListView;)Landroid/widget/ListView;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/f;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/f;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/d;->a(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/d;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/support/v7/app/j;

    iget-object v3, p0, Landroid/support/v7/app/f;->a:Landroid/content/Context;

    const v4, 0x1020014

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/support/v7/app/j;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
