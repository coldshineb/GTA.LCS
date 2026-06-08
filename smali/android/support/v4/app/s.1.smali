.class public abstract Landroid/support/v4/app/s;
.super Landroid/support/v4/app/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/q;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/support/v4/app/u;

.field private final c:Landroid/app/Activity;

.field private final d:Landroid/os/Handler;

.field private e:I

.field private f:Landroid/support/v4/e/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/l",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/M;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/support/v4/app/N;

.field private i:Z

.field private j:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/q;-><init>()V

    new-instance v0, Landroid/support/v4/app/u;

    invoke-direct {v0}, Landroid/support/v4/app/u;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/app/u;

    iput-object p1, p0, Landroid/support/v4/app/s;->c:Landroid/app/Activity;

    iput-object p2, p0, Landroid/support/v4/app/s;->a:Landroid/content/Context;

    iput-object p3, p0, Landroid/support/v4/app/s;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/s;->e:I

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/m;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v4/app/m;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/s;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;ZZ)Landroid/support/v4/app/N;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/e/l;

    invoke-direct {v0}, Landroid/support/v4/e/l;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/N;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/support/v4/app/N;->a(Landroid/support/v4/app/s;)V

    :cond_1
    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final a(Landroid/support/v4/e/l;)V
    .locals 0
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

    iput-object p1, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/N;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/N;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/N;->g()V

    iget-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method final a(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/v4/app/s;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/s;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/s;->j:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->c()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/s;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/N;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/s;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/s;->e:I

    return v0
.end method

.method final g()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/app/Activity;

    return-object v0
.end method

.method final h()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/s;->d:Landroid/os/Handler;

    return-object v0
.end method

.method final i()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/s;->g:Z

    return v0
.end method

.method final j()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/s;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/s;->j:Z

    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->b()V

    :cond_1
    :goto_1
    iput-boolean v3, p0, Landroid/support/v4/app/s;->i:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/s;->i:Z

    if-nez v0, :cond_1

    const-string v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/s;->j:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/s;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/N;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    iget-boolean v0, v0, Landroid/support/v4/app/N;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->b()V

    goto :goto_1
.end method

.method final k()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/s;->h:Landroid/support/v4/app/N;

    invoke-virtual {v0}, Landroid/support/v4/app/N;->g()V

    goto :goto_0
.end method

.method final l()V
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    invoke-virtual {v0}, Landroid/support/v4/e/l;->size()I

    move-result v4

    new-array v5, v4, [Landroid/support/v4/app/N;

    add-int/lit8 v0, v4, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/l;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/N;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v6, v5, v2

    iget-boolean v0, v6, Landroid/support/v4/app/N;->e:Z

    if-eqz v0, :cond_2

    iput-boolean v3, v6, Landroid/support/v4/app/N;->e:Z

    iget-object v0, v6, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    iget-object v0, v6, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    iget-boolean v7, v0, Landroid/support/v4/app/O;->f:Z

    if-eqz v7, :cond_1

    iput-boolean v3, v0, Landroid/support/v4/app/O;->f:Z

    iget-boolean v7, v0, Landroid/support/v4/app/O;->e:Z

    iget-boolean v8, v0, Landroid/support/v4/app/O;->g:Z

    if-eq v7, v8, :cond_1

    iget-boolean v7, v0, Landroid/support/v4/app/O;->e:Z

    if-nez v7, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/O;->a()V

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/support/v4/app/N;->f()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method final m()Landroid/support/v4/e/l;
    .locals 6
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

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    invoke-virtual {v0}, Landroid/support/v4/e/l;->size()I

    move-result v3

    new-array v4, v3, [Landroid/support/v4/app/N;

    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    invoke-virtual {v0, v2}, Landroid/support/v4/e/l;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/N;

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v4, v2

    iget-boolean v5, v1, Landroid/support/v4/app/N;->e:Z

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/N;->g()V

    iget-object v5, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    iget-object v1, v1, Landroid/support/v4/app/N;->c:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/support/v4/e/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/s;->f:Landroid/support/v4/e/l;

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
