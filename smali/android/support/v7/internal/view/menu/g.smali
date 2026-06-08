.class public final Landroid/support/v7/internal/view/menu/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/internal/view/menu/x;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:Landroid/support/v7/internal/view/menu/i;

.field c:I

.field private d:Landroid/content/Context;

.field private e:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

.field private f:I

.field private g:Landroid/support/v7/internal/view/menu/y;

.field private h:Landroid/support/v7/internal/view/menu/h;


# direct methods
.method private constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v7/internal/view/menu/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/view/menu/g;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v7/internal/view/menu/g;-><init>(II)V

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/g;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->e:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->e:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/internal/view/menu/h;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/h;-><init>(Landroid/support/v7/internal/view/menu/g;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->e:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->e:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->e:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public final a()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/internal/view/menu/h;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/h;-><init>(Landroid/support/v7/internal/view/menu/g;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/g;->f:I

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroid/support/v7/internal/view/menu/g;->f:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/view/LayoutInflater;

    :cond_0
    :goto_0
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/g;->b:Landroid/support/v7/internal/view/menu/i;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->g:Landroid/support/v7/internal/view/menu/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->g:Landroid/support/v7/internal/view/menu/y;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/y;->a(Landroid/support/v7/internal/view/menu/i;Z)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/y;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/g;->g:Landroid/support/v7/internal/view/menu/y;

    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/C;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/C;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/support/v7/internal/view/menu/l;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/l;-><init>(Landroid/support/v7/internal/view/menu/i;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->g:Landroid/support/v7/internal/view/menu/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->g:Landroid/support/v7/internal/view/menu/y;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/y;->a(Landroid/support/v7/internal/view/menu/i;)Z

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/m;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroid/support/v7/internal/view/menu/m;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->b:Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v1, p3}, Landroid/support/v7/internal/view/menu/h;->a(I)Landroid/support/v7/internal/view/menu/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/view/MenuItem;Landroid/support/v7/internal/view/menu/x;I)Z

    return-void
.end method
