.class public final Lcom/adjust/sdk/A;
.super Landroid/os/HandlerThread;

# interfaces
.implements Lcom/adjust/sdk/v;


# instance fields
.field private final a:Lcom/adjust/sdk/B;

.field private b:Lcom/adjust/sdk/w;

.field private c:Lcom/adjust/sdk/s;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Lcom/adjust/sdk/u;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/s;Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Adjust"

    invoke-direct {p0, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/adjust/sdk/A;->setDaemon(Z)V

    invoke-virtual {p0}, Lcom/adjust/sdk/A;->start()V

    new-instance v0, Lcom/adjust/sdk/B;

    invoke-virtual {p0}, Lcom/adjust/sdk/A;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/adjust/sdk/B;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/A;)V

    iput-object v0, p0, Lcom/adjust/sdk/A;->a:Lcom/adjust/sdk/B;

    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/A;->h:Lcom/adjust/sdk/u;

    iput-object p1, p0, Lcom/adjust/sdk/A;->c:Lcom/adjust/sdk/s;

    iput-object p2, p0, Lcom/adjust/sdk/A;->g:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/adjust/sdk/A;->f:Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/adjust/sdk/A;->a:Lcom/adjust/sdk/B;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/B;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/adjust/sdk/A;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/adjust/sdk/l;->a(Lcom/adjust/sdk/v;)Lcom/adjust/sdk/w;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/A;->b:Lcom/adjust/sdk/w;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/A;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/A;->g:Landroid/content/Context;

    const-string v1, "AdjustIoPackageQueue"

    const-string v2, "Package queue"

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/A;->h:Lcom/adjust/sdk/u;

    const-string v1, "Package handler read %d packages"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adjust/sdk/A;->h:Lcom/adjust/sdk/u;

    const-string v2, "Failed to read %s file (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Package queue"

    aput-object v4, v3, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    goto :goto_1
.end method

.method static synthetic a(Lcom/adjust/sdk/A;Lcom/adjust/sdk/g;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/adjust/sdk/g;->d()Lcom/adjust/sdk/e;

    move-result-object v0

    sget-object v1, Lcom/adjust/sdk/e;->d:Lcom/adjust/sdk/e;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    invoke-interface {v0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/A;->h:Lcom/adjust/sdk/u;

    const-string v1, "Added package %d (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/A;->h:Lcom/adjust/sdk/u;

    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/adjust/sdk/g;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/adjust/sdk/A;->g()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/adjust/sdk/A;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/A;->f()V

    return-void
.end method

.method static synthetic c(Lcom/adjust/sdk/A;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/adjust/sdk/A;->g()V

    iget-object v0, p0, Lcom/adjust/sdk/A;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/adjust/sdk/A;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/adjust/sdk/A;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/A;->h:Lcom/adjust/sdk/u;

    const-string v1, "Package handler is paused"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/A;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/A;->h:Lcom/adjust/sdk/u;

    const-string v1, "Package handler is already sending"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/g;

    iget-object v1, p0, Lcom/adjust/sdk/A;->b:Lcom/adjust/sdk/w;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/w;->a(Lcom/adjust/sdk/g;)V

    goto :goto_0
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/adjust/sdk/A;->g:Landroid/content/Context;

    const-string v2, "AdjustIoPackageQueue"

    const-string v3, "Package queue"

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/c;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adjust/sdk/A;->h:Lcom/adjust/sdk/u;

    const-string v1, "Package handler wrote %d packages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/A;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/adjust/sdk/A;->a:Lcom/adjust/sdk/B;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/B;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/adjust/sdk/g;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/adjust/sdk/A;->a:Lcom/adjust/sdk/B;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/B;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/A;->c:Lcom/adjust/sdk/s;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/s;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/adjust/sdk/A;->a:Lcom/adjust/sdk/B;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/B;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/A;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/A;->f:Z

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/A;->f:Z

    return-void
.end method
