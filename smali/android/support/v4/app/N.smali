.class final Landroid/support/v4/app/N;
.super Landroid/support/v4/app/M;


# static fields
.field static a:Z


# instance fields
.field final b:Landroid/support/v4/e/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/m",
            "<",
            "Landroid/support/v4/app/O;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;

.field d:Z

.field e:Z

.field private f:Landroid/support/v4/e/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/m",
            "<",
            "Landroid/support/v4/app/O;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/support/v4/app/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/N;->a:Z

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v4/app/s;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/N;->g:Landroid/support/v4/app/s;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v4, v1}, Landroid/support/v4/e/m;->a(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/O;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/O;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/N;->f:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/N;->f:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/N;->f:Landroid/support/v4/e/m;

    invoke-virtual {v0, v2}, Landroid/support/v4/e/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/N;->f:Landroid/support/v4/e/m;

    invoke-virtual {v3, v2}, Landroid/support/v4/e/m;->a(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/O;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/O;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v4

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0, v2}, Landroid/support/v4/e/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    iget-boolean v5, v0, Landroid/support/v4/app/O;->e:Z

    if-eqz v5, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/O;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return v3
.end method

.method final b()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/N;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStart when already started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :cond_1
    iput-boolean v4, p0, Landroid/support/v4/app/N;->d:Z

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    iget-boolean v2, v0, Landroid/support/v4/app/O;->f:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Landroid/support/v4/app/O;->g:Z

    if-eqz v2, :cond_3

    iput-boolean v4, v0, Landroid/support/v4/app/O;->e:Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-boolean v2, v0, Landroid/support/v4/app/O;->e:Z

    if-nez v2, :cond_2

    iput-boolean v4, v0, Landroid/support/v4/app/O;->e:Z

    iget-object v2, v0, Landroid/support/v4/app/O;->c:Landroid/support/v4/a/b;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v4/app/O;->c:Landroid/support/v4/a/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/support/v4/app/O;->c:Landroid/support/v4/a/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/support/v4/app/O;->c:Landroid/support/v4/a/b;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-boolean v2, v0, Landroid/support/v4/app/O;->i:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Landroid/support/v4/app/O;->c:Landroid/support/v4/a/b;

    iget v3, v0, Landroid/support/v4/app/O;->a:I

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/a/b;->a(ILandroid/support/v4/a/c;)V

    iget-object v2, v0, Landroid/support/v4/app/O;->c:Landroid/support/v4/a/b;

    invoke-virtual {v2, v0}, Landroid/support/v4/a/b;->b(Landroid/support/v4/a/c;)V

    iput-boolean v4, v0, Landroid/support/v4/app/O;->i:Z

    :cond_5
    iget-object v0, v0, Landroid/support/v4/app/O;->c:Landroid/support/v4/a/b;

    invoke-virtual {v0}, Landroid/support/v4/a/b;->a()V

    goto :goto_1
.end method

.method final c()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v4/app/N;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStop when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    invoke-virtual {v0}, Landroid/support/v4/app/O;->a()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/N;->d:Z

    goto :goto_0
.end method

.method final d()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/v4/app/N;->d:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doRetain when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :cond_1
    iput-boolean v4, p0, Landroid/support/v4/app/N;->e:Z

    iput-boolean v3, p0, Landroid/support/v4/app/N;->d:Z

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    iput-boolean v4, v0, Landroid/support/v4/app/O;->f:Z

    iget-boolean v2, v0, Landroid/support/v4/app/O;->e:Z

    iput-boolean v2, v0, Landroid/support/v4/app/O;->g:Z

    iput-boolean v3, v0, Landroid/support/v4/app/O;->e:Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/app/O;->b:Landroid/support/v7/app/h;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method final e()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/O;->h:Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method final f()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    iget-boolean v2, v0, Landroid/support/v4/app/O;->e:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/O;->h:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/O;->h:Z

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final g()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/N;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    invoke-virtual {v0}, Landroid/support/v4/app/O;->b()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/N;->b:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->b()V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/N;->f:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/N;->f:Landroid/support/v4/e/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    invoke-virtual {v0}, Landroid/support/v4/app/O;->b()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/N;->f:Landroid/support/v4/e/m;

    invoke-virtual {v0}, Landroid/support/v4/e/m;->b()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/N;->g:Landroid/support/v4/app/s;

    invoke-static {v1, v0}, Landroid/support/v4/app/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
