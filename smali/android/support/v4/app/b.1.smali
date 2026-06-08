.class final Landroid/support/v4/app/b;
.super Landroid/support/v4/app/F;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static n:Z


# instance fields
.field a:Landroid/support/v4/app/e;

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:Ljava/lang/CharSequence;

.field j:I

.field k:Ljava/lang/CharSequence;

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/support/v4/app/u;

.field private p:Landroid/support/v4/app/e;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/b;->n:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/u;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/F;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/b;->g:I

    iput-object p1, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    return-void
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/f;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;Z)",
            "Landroid/support/v4/app/f;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v7, 0x0

    new-instance v2, Landroid/support/v4/app/f;

    invoke-direct {v2, p0}, Landroid/support/v4/app/f;-><init>(Landroid/support/v4/app/b;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v1, v1, Landroid/support/v4/app/u;->h:Landroid/support/v4/app/s;

    iget-object v1, v1, Landroid/support/v4/app/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroid/support/v4/app/f;->d:Landroid/view/View;

    move v6, v7

    move v8, v7

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/b;->a(ILandroid/support/v4/app/f;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v9

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    goto :goto_0

    :cond_0
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/b;->a(ILandroid/support/v4/app/f;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v9

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    if-nez v8, :cond_3

    const/4 v2, 0x0

    :cond_3
    return-object v2

    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v4/app/b;Landroid/support/v4/app/f;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/e/a;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    iget-object v1, p3, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->a(Ljava/util/Map;Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/e/a;)Landroid/support/v4/e/a;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p3, Landroid/support/v4/app/Fragment;->U:Landroid/support/v4/app/az;

    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/f;Landroid/support/v4/e/a;Z)V

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->a(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/az;

    invoke-static {p1, v0, v3}, Landroid/support/v4/app/b;->b(Landroid/support/v4/app/f;Landroid/support/v4/e/a;Z)V

    goto :goto_1
.end method

.method private a(Landroid/support/v4/app/f;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/e/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/f;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    iget-object v1, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->a(Ljava/util/Map;Landroid/view/View;)V

    if-eqz p3, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->a(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/az;

    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/f;Landroid/support/v4/e/a;Z)V

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/e/a;)Landroid/support/v4/e/a;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->U:Landroid/support/v4/app/az;

    invoke-static {p1, v0, v3}, Landroid/support/v4/app/b;->b(Landroid/support/v4/app/f;Landroid/support/v4/e/a;Z)V

    goto :goto_1
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/e/a;)Landroid/support/v4/e/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/support/v4/e/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    new-instance v1, Landroid/support/v4/e/a;

    invoke-direct {v1}, Landroid/support/v4/e/a;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object p2, v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/app/b;Landroid/support/v4/app/f;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/f;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/b;Landroid/support/v4/app/f;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/e/a;)V
    .locals 1

    if-eqz p4, :cond_0

    iget-object v0, p3, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/az;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/az;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/app/b;Landroid/support/v4/e/a;Landroid/support/v4/app/f;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/e/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p2, Landroid/support/v4/app/f;->c:Landroid/support/v4/app/K;

    iput-object v0, v1, Landroid/support/v4/app/K;->a:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private a(Landroid/support/v4/app/f;ILjava/lang/Object;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->I:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/support/v4/app/Fragment;->y:I

    if-ne v3, p2, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->A:Z

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/support/v4/app/f;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {p3, v3, v4}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    iget-object v3, p1, Landroid/support/v4/app/f;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-static {p3, v3, v2}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    iget-object v3, p1, Landroid/support/v4/app/f;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Landroid/support/v4/app/f;Landroid/support/v4/e/a;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/f;",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v2, v0

    :goto_0
    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/support/v4/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_2

    iget-object v4, p1, Landroid/support/v4/app/f;->a:Landroid/support/v4/e/a;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/b;->a(Landroid/support/v4/e/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v4, p1, Landroid/support/v4/app/f;->a:Landroid/support/v4/e/a;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/e/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static a(Landroid/support/v4/e/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/e/a;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v4/e/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/e/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/support/v4/app/Fragment;->y:I

    if-eqz v1, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->u:Landroid/support/v4/app/s;

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->m:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILandroid/support/v4/app/f;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/app/f;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v4, v4, Landroid/support/v4/app/u;->i:Landroid/support/v4/app/q;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v4/app/q;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-nez v6, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/app/Fragment;

    if-nez v11, :cond_2

    const/16 v25, 0x0

    :goto_1
    if-eqz v11, :cond_1

    if-nez v12, :cond_5

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-nez v12, :cond_a

    const/4 v4, 0x0

    move-object v13, v4

    :goto_3
    const/16 v17, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v12, v2}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/f;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/e/a;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/e/a;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object v10, v7

    :goto_4
    if-nez v25, :cond_10

    if-nez v10, :cond_10

    if-nez v13, :cond_10

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    iget-object v4, v11, Landroid/support/v4/app/Fragment;->R:Ljava/lang/Object;

    sget-object v5, Landroid/support/v4/app/Fragment;->a:Ljava/lang/Object;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x0

    :goto_5
    invoke-static {v4}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    goto :goto_1

    :cond_3
    iget-object v4, v11, Landroid/support/v4/app/Fragment;->R:Ljava/lang/Object;

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    if-eqz p3, :cond_7

    iget-object v4, v12, Landroid/support/v4/app/Fragment;->S:Ljava/lang/Object;

    sget-object v5, Landroid/support/v4/app/Fragment;->a:Ljava/lang/Object;

    if-ne v4, v5, :cond_6

    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_8

    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    iget-object v4, v12, Landroid/support/v4/app/Fragment;->S:Ljava/lang/Object;

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    check-cast v4, Landroid/transition/Transition;

    if-nez v4, :cond_9

    const/4 v7, 0x0

    goto :goto_2

    :cond_9
    new-instance v7, Landroid/transition/TransitionSet;

    invoke-direct {v7}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v7, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_2

    :cond_a
    if-eqz p3, :cond_c

    iget-object v4, v12, Landroid/support/v4/app/Fragment;->Q:Ljava/lang/Object;

    sget-object v5, Landroid/support/v4/app/Fragment;->a:Ljava/lang/Object;

    if-ne v4, v5, :cond_b

    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    goto :goto_3

    :cond_b
    iget-object v4, v12, Landroid/support/v4/app/Fragment;->Q:Ljava/lang/Object;

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    goto :goto_7

    :cond_d
    if-eqz p3, :cond_f

    iget-object v4, v12, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/az;

    :goto_8
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v14

    new-instance v4, Landroid/support/v4/app/c;

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v4 .. v12}, Landroid/support/v4/app/c;-><init>(Landroid/support/v4/app/b;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/f;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v14, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_e
    move-object v10, v7

    goto :goto_4

    :cond_f
    iget-object v4, v11, Landroid/support/v4/app/Fragment;->T:Landroid/support/v4/app/az;

    goto :goto_8

    :cond_10
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/f;->d:Landroid/view/View;

    if-eqz v13, :cond_1a

    iget-object v5, v12, Landroid/support/v4/app/Fragment;->J:Landroid/view/View;

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v13, v5, v0, v1, v4}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v7

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    if-eqz v4, :cond_12

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/support/v4/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_12

    if-eqz v7, :cond_11

    invoke-static {v7, v4}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;Landroid/view/View;)V

    :cond_11
    if-eqz v10, :cond_12

    invoke-static {v10, v4}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;Landroid/view/View;)V

    :cond_12
    new-instance v12, Landroid/support/v4/app/a;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11}, Landroid/support/v4/app/a;-><init>(Landroid/support/v4/app/b;Landroid/support/v4/app/Fragment;)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Landroid/support/v4/e/a;

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/e/a;-><init>()V

    if-eqz v11, :cond_13

    :cond_13
    move-object/from16 v4, v25

    check-cast v4, Landroid/transition/Transition;

    move-object v5, v7

    check-cast v5, Landroid/transition/Transition;

    move-object v9, v10

    check-cast v9, Landroid/transition/Transition;

    if-eqz v4, :cond_14

    if-eqz v5, :cond_14

    :cond_14
    new-instance v24, Landroid/transition/TransitionSet;

    invoke-direct/range {v24 .. v24}, Landroid/transition/TransitionSet;-><init>()V

    if-eqz v4, :cond_15

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_15
    if-eqz v5, :cond_16

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_16
    if-eqz v9, :cond_17

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_17
    if-eqz v24, :cond_18

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/support/v4/app/f;->d:Landroid/view/View;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/support/v4/app/f;->c:Landroid/support/v4/app/K;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/support/v4/app/f;->a:Landroid/support/v4/e/a;

    move-object/from16 v9, v25

    move-object v11, v6

    move-object/from16 v19, v8

    invoke-static/range {v9 .. v19}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/L;Landroid/view/View;Landroid/support/v4/app/K;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v19, Landroid/support/v4/app/d;

    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, p2

    move/from16 v23, p1

    invoke-direct/range {v19 .. v24}, Landroid/support/v4/app/d;-><init>(Landroid/support/v4/app/b;Landroid/view/View;Landroid/support/v4/app/f;ILjava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/f;->d:Landroid/view/View;

    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-static {v0, v4, v5}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/f;ILjava/lang/Object;)V

    move-object/from16 v4, v24

    check-cast v4, Landroid/transition/Transition;

    invoke-static {v6, v4}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/f;->d:Landroid/view/View;

    move-object/from16 v36, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/f;->b:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v27, v25

    check-cast v27, Landroid/transition/Transition;

    move-object/from16 v29, v7

    check-cast v29, Landroid/transition/Transition;

    move-object/from16 v31, v10

    check-cast v31, Landroid/transition/Transition;

    move-object/from16 v35, v24

    check-cast v35, Landroid/transition/Transition;

    if-eqz v35, :cond_18

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v25, Landroid/support/v4/app/J;

    move-object/from16 v26, v6

    move-object/from16 v28, v16

    move-object/from16 v32, v8

    move-object/from16 v33, v18

    invoke-direct/range {v25 .. v36}, Landroid/support/v4/app/J;-><init>(Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_18
    if-eqz v24, :cond_19

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1a
    move-object v7, v13

    goto/16 :goto_9
.end method

.method private static b(Landroid/support/v4/app/f;Landroid/support/v4/e/a;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/f;",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/e/a;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/support/v4/e/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/support/v4/e/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v4, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/e/a;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/b;->a(Landroid/support/v4/e/a;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/e/a;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/e/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/support/v4/app/Fragment;->y:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->i:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/e;

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_0

    iget v0, v3, Landroid/support/v4/app/e;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, v3, Landroid/support/v4/app/e;->a:Landroid/support/v4/app/e;

    move-object v3, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/b;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, v3, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    iget v4, v0, Landroid/support/v4/app/Fragment;->y:I

    iget v5, v2, Landroid/support/v4/app/Fragment;->y:I

    if-ne v4, v5, :cond_3

    :cond_2
    if-ne v0, v2, :cond_4

    const/4 v2, 0x0

    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-static {p1, v0}, Landroid/support/v4/app/b;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    :cond_5
    invoke-static {p2, v2}, Landroid/support/v4/app/b;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/b;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/b;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/b;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/b;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/b;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/b;->q:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/b;->q:Z

    iget-boolean v0, p0, Landroid/support/v4/app/b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/b;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/b;->g:I

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/Runnable;Z)V

    iget v0, p0, Landroid/support/v4/app/b;->g:I

    return v0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/b;->g:I

    goto :goto_0
.end method

.method public final a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/F;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->t:Landroid/support/v4/app/u;

    if-eqz p3, :cond_1

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->z:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->z:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change tag of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->z:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_3

    iget v0, p2, Landroid/support/v4/app/Fragment;->x:I

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/support/v4/app/Fragment;->x:I

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change container ID of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p2, Landroid/support/v4/app/Fragment;->x:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->y:I

    :cond_3
    new-instance v0, Landroid/support/v4/app/e;

    invoke-direct {v0}, Landroid/support/v4/app/e;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/app/e;->c:I

    iput-object p2, v0, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/e;)V

    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/F;
    .locals 2

    new-instance v0, Landroid/support/v4/app/e;

    invoke-direct {v0}, Landroid/support/v4/app/e;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/e;->c:I

    iput-object p1, v0, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/e;)V

    return-object p0
.end method

.method public final a(ZLandroid/support/v4/app/f;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/f;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/support/v4/app/f;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/support/v4/app/f;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v3, 0x0

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    sget-boolean v0, Landroid/support/v4/app/b;->n:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_2

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p3, p4, v10}, Landroid/support/v4/app/b;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/f;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, v9}, Landroid/support/v4/app/b;->a(I)V

    if-eqz p2, :cond_3

    move v7, v3

    :goto_0
    if-eqz p2, :cond_4

    move v1, v3

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/b;->p:Landroid/support/v4/app/e;

    move-object v6, v0

    :goto_2
    if-eqz v6, :cond_9

    if-eqz p2, :cond_5

    move v5, v3

    :goto_3
    if-eqz p2, :cond_6

    move v0, v3

    :goto_4
    iget v2, v6, Landroid/support/v4/app/e;->c:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Landroid/support/v4/app/e;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p1, :cond_1

    iget-object v5, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    move v2, v3

    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v7, p2, Landroid/support/v4/app/f;->a:Landroid/support/v4/e/a;

    invoke-static {v7, v0, v1}, Landroid/support/v4/app/b;->a(Landroid/support/v4/e/a;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_3
    iget v0, p0, Landroid/support/v4/app/b;->d:I

    move v7, v0

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/support/v4/app/b;->c:I

    move v1, v0

    goto :goto_1

    :cond_5
    iget v0, v6, Landroid/support/v4/app/e;->g:I

    move v5, v0

    goto :goto_3

    :cond_6
    iget v0, v6, Landroid/support/v4/app/e;->h:I

    goto :goto_4

    :pswitch_0
    iget-object v2, v6, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iput v0, v2, Landroid/support/v4/app/Fragment;->H:I

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-static {v1}, Landroid/support/v4/app/u;->a(I)I

    move-result v5

    invoke-virtual {v0, v2, v5, v7}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;II)V

    :cond_7
    :goto_6
    iget-object v0, v6, Landroid/support/v4/app/e;->b:Landroid/support/v4/app/e;

    move-object v6, v0

    goto :goto_2

    :pswitch_1
    iget-object v2, v6, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_8

    iput v0, v2, Landroid/support/v4/app/Fragment;->H:I

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-static {v1}, Landroid/support/v4/app/u;->a(I)I

    move-result v8

    invoke-virtual {v0, v2, v8, v7}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;II)V

    :cond_8
    iget-object v0, v6, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    move v2, v3

    :goto_7
    iget-object v0, v6, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, v6, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->H:I

    iget-object v8, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-virtual {v8, v0, v3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :pswitch_2
    iget-object v0, v6, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->H:I

    iget-object v2, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_6

    :pswitch_3
    iget-object v0, v6, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->H:I

    iget-object v2, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-static {v1}, Landroid/support/v4/app/u;->a(I)I

    move-result v5

    invoke-virtual {v2, v0, v5, v7}, Landroid/support/v4/app/u;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    :pswitch_4
    iget-object v2, v6, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iput v0, v2, Landroid/support/v4/app/Fragment;->H:I

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-static {v1}, Landroid/support/v4/app/u;->a(I)I

    move-result v5

    invoke-virtual {v0, v2, v5, v7}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    :pswitch_5
    iget-object v0, v6, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->H:I

    iget-object v2, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-static {v1}, Landroid/support/v4/app/u;->a(I)I

    move-result v5

    invoke-virtual {v2, v0, v5, v7}, Landroid/support/v4/app/u;->e(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    :pswitch_6
    iget-object v0, v6, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iput v5, v0, Landroid/support/v4/app/Fragment;->H:I

    iget-object v2, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-static {v1}, Landroid/support/v4/app/u;->a(I)I

    move-result v5

    invoke-virtual {v2, v0, v5, v7}, Landroid/support/v4/app/u;->d(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    :cond_9
    if-eqz p1, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v2, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget v2, v2, Landroid/support/v4/app/u;->g:I

    invoke-static {v1}, Landroid/support/v4/app/u;->a(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v7, v10}, Landroid/support/v4/app/u;->a(IIIZ)V

    move-object p2, v4

    :cond_a
    iget v0, p0, Landroid/support/v4/app/b;->g:I

    if-ltz v0, :cond_c

    iget-object v1, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget v0, p0, Landroid/support/v4/app/b;->g:I

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Landroid/support/v4/app/u;->e:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-nez v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    :cond_b
    iget-object v2, v1, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v9, p0, Landroid/support/v4/app/b;->g:I

    :cond_c
    return-object p2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method final a(I)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v4/app/b;->e:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/e;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->s:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->s:I

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    :cond_2
    iget-object v0, v2, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, v2, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    iget-object v0, v2, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v3, v0, Landroid/support/v4/app/Fragment;->s:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->s:I

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, v2, Landroid/support/v4/app/e;->a:Landroid/support/v4/app/e;

    move-object v2, v0

    goto :goto_0
.end method

.method final a(Landroid/support/v4/app/e;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/e;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/b;->p:Landroid/support/v4/app/e;

    iput-object p1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/e;

    :goto_0
    iput v1, p1, Landroid/support/v4/app/e;->e:I

    iput v1, p1, Landroid/support/v4/app/e;->f:I

    iput v1, p1, Landroid/support/v4/app/e;->g:I

    iput v1, p1, Landroid/support/v4/app/e;->h:I

    iget v0, p0, Landroid/support/v4/app/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/b;->b:I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/b;->p:Landroid/support/v4/app/e;

    iput-object v0, p1, Landroid/support/v4/app/e;->b:Landroid/support/v4/app/e;

    iget-object v0, p0, Landroid/support/v4/app/b;->p:Landroid/support/v4/app/e;

    iput-object p1, v0, Landroid/support/v4/app/e;->a:Landroid/support/v4/app/e;

    iput-object p1, p0, Landroid/support/v4/app/b;->p:Landroid/support/v4/app/e;

    goto :goto_0
.end method

.method public final a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->i:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/e;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    iget v0, v2, Landroid/support/v4/app/e;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, v2, Landroid/support/v4/app/e;->a:Landroid/support/v4/app/e;

    move-object v2, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, v2, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/b;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, v2, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    iget-object v0, v2, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/b;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, v2, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/b;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, v2, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/b;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, v2, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/b;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, v2, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/b;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, v2, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/b;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, v2, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/b;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/b;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->g:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/b;->q:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroid/support/v4/app/b;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/b;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/b;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/b;->i:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Landroid/support/v4/app/b;->j:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/b;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/b;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/e;

    if-eqz v0, :cond_c

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/e;

    move v2, v1

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_c

    iget v0, v3, Landroid/support/v4/app/e;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "cmd="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Landroid/support/v4/app/e;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget v0, v3, Landroid/support/v4/app/e;->e:I

    if-nez v0, :cond_5

    iget v0, v3, Landroid/support/v4/app/e;->f:I

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/e;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/e;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget v0, v3, Landroid/support/v4/app/e;->g:I

    if-nez v0, :cond_7

    iget v0, v3, Landroid/support/v4/app/e;->h:I

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/e;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v3, Landroid/support/v4/app/e;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v3, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, v3, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    move v0, v1

    :goto_2
    iget-object v5, v3, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    iget-object v5, v3, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    const-string v0, "NULL"

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "ADD"

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "REPLACE"

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "REMOVE"

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "HIDE"

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "SHOW"

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "DETACH"

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "ATTACH"

    goto/16 :goto_1

    :cond_9
    if-nez v0, :cond_a

    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget-object v3, v3, Landroid/support/v4/app/e;->a:Landroid/support/v4/app/e;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/F;
    .locals 2

    new-instance v0, Landroid/support/v4/app/e;

    invoke-direct {v0}, Landroid/support/v4/app/e;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/e;->c:I

    iput-object p1, v0, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/e;)V

    return-object p0
.end method

.method public final run()V
    .locals 14

    const/4 v6, 0x0

    const/4 v13, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    iget-boolean v0, p0, Landroid/support/v4/app/b;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/b;->g:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v13}, Landroid/support/v4/app/b;->a(I)V

    sget-boolean v0, Landroid/support/v4/app/b;->n:Z

    if-eqz v0, :cond_f

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/b;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/b;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/f;

    move-result-object v0

    move-object v10, v0

    :goto_0
    if-eqz v10, :cond_1

    move v9, v2

    :goto_1
    if-eqz v10, :cond_2

    move v1, v2

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/e;

    move-object v8, v0

    :goto_3
    if-eqz v8, :cond_c

    if-eqz v10, :cond_3

    move v7, v2

    :goto_4
    if-eqz v10, :cond_4

    move v3, v2

    :goto_5
    iget v0, v8, Landroid/support/v4/app/e;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Landroid/support/v4/app/e;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/support/v4/app/b;->d:I

    move v9, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/support/v4/app/b;->c:I

    move v1, v0

    goto :goto_2

    :cond_3
    iget v0, v8, Landroid/support/v4/app/e;->e:I

    move v7, v0

    goto :goto_4

    :cond_4
    iget v0, v8, Landroid/support/v4/app/e;->f:I

    move v3, v0

    goto :goto_5

    :pswitch_0
    iget-object v0, v8, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iput v7, v0, Landroid/support/v4/app/Fragment;->H:I

    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Z)V

    :cond_5
    :goto_6
    iget-object v0, v8, Landroid/support/v4/app/e;->a:Landroid/support/v4/app/e;

    move-object v8, v0

    goto :goto_3

    :pswitch_1
    iget-object v0, v8, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iget v11, v0, Landroid/support/v4/app/Fragment;->y:I

    iget-object v4, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v4, v4, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    move v4, v2

    move-object v5, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    sget-boolean v12, Landroid/support/v4/app/u;->a:Z

    iget v12, v0, Landroid/support/v4/app/Fragment;->y:I

    if-ne v12, v11, :cond_6

    if-ne v0, v5, :cond_7

    iput-object v6, v8, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    move-object v5, v6

    :cond_6
    :goto_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    :cond_7
    iget-object v12, v8, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    if-nez v12, :cond_8

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v8, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    :cond_8
    iget-object v12, v8, Landroid/support/v4/app/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, v0, Landroid/support/v4/app/Fragment;->H:I

    iget-boolean v12, p0, Landroid/support/v4/app/b;->e:Z

    if-eqz v12, :cond_9

    iget v12, v0, Landroid/support/v4/app/Fragment;->s:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Landroid/support/v4/app/Fragment;->s:I

    sget-boolean v12, Landroid/support/v4/app/u;->a:Z

    :cond_9
    iget-object v12, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-virtual {v12, v0, v1, v9}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;II)V

    goto :goto_8

    :cond_a
    move-object v5, v0

    :cond_b
    if-eqz v5, :cond_5

    iput v7, v5, Landroid/support/v4/app/Fragment;->H:I

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-virtual {v0, v5, v2}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_6

    :pswitch_2
    iget-object v0, v8, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iput v3, v0, Landroid/support/v4/app/Fragment;->H:I

    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-virtual {v3, v0, v1, v9}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    :pswitch_3
    iget-object v0, v8, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iput v3, v0, Landroid/support/v4/app/Fragment;->H:I

    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-virtual {v3, v0, v1, v9}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    :pswitch_4
    iget-object v0, v8, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iput v7, v0, Landroid/support/v4/app/Fragment;->H:I

    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-virtual {v3, v0, v1, v9}, Landroid/support/v4/app/u;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    :pswitch_5
    iget-object v0, v8, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iput v3, v0, Landroid/support/v4/app/Fragment;->H:I

    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-virtual {v3, v0, v1, v9}, Landroid/support/v4/app/u;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    :pswitch_6
    iget-object v0, v8, Landroid/support/v4/app/e;->d:Landroid/support/v4/app/Fragment;

    iput v7, v0, Landroid/support/v4/app/Fragment;->H:I

    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    invoke-virtual {v3, v0, v1, v9}, Landroid/support/v4/app/u;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v2, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget v2, v2, Landroid/support/v4/app/u;->g:I

    invoke-virtual {v0, v2, v1, v9, v13}, Landroid/support/v4/app/u;->a(IIIZ)V

    iget-boolean v0, p0, Landroid/support/v4/app/b;->e:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/u;

    iget-object v1, v0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    :cond_d
    iget-object v0, v0, Landroid/support/v4/app/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    return-void

    :cond_f
    move-object v10, v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/b;->g:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
