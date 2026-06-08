.class public final Landroid/support/v4/app/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/app/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/s",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/s",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    return-void
.end method

.method public static final a(Landroid/support/v4/app/s;)Landroid/support/v4/app/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/s",
            "<*>;)",
            "Landroid/support/v4/app/r;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0, p0}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/s;)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/t;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    return-object v0
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/u;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/u;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    iget-object v1, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v2, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/s;Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public final a(Landroid/support/v4/e/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/e/l",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/M;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/s;->a(Landroid/support/v4/e/l;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/s;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/s;->a(Z)V

    return-void
.end method

.method public final a(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/u;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/u;->j:Z

    return-void
.end method

.method public final d()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->e()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v4, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    const/4 v1, 0x0

    iget-object v0, v4, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, v4, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, v4, Landroid/support/v4/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->C:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->D:Z

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->j:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->g:I

    :goto_1
    iput v2, v0, Landroid/support/v4/app/Fragment;->k:I

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->f()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->g()V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->h()V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->i()V

    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/u;->a(IZ)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->k()V

    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/u;->a(IZ)V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->l()V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->m()V

    return-void
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->d()Z

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->j()V

    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->k()V

    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->l()V

    return-void
.end method

.method public final s()Landroid/support/v4/e/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/e/l",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/M;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/r;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->m()Landroid/support/v4/e/l;

    move-result-object v0

    return-object v0
.end method
