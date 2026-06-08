.class public Lcom/rockstargames/hal/andThread;
.super Ljava/lang/Object;


# static fields
.field private static lock:Ljava/lang/Object;

.field private static pausedCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rockstargames/hal/V;",
            ">;"
        }
    .end annotation
.end field

.field private static threadsRunning:Z

.field private static threadsStopping:Z

.field private static tid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rockstargames/hal/andThread;->threadsRunning:Z

    sput-boolean v1, Lcom/rockstargames/hal/andThread;->threadsStopping:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andThread;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    sput v1, Lcom/rockstargames/hal/andThread;->tid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0

    invoke-static {p0}, Lcom/rockstargames/hal/andThread;->runNativeRunnable(I)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/rockstargames/hal/andThread;->threadsStopping:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/rockstargames/hal/andThread;->threadsRunning:Z

    return p0
.end method

.method public static currentThreadId()I
    .locals 2

    sget v0, Lcom/rockstargames/hal/andThread;->tid:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andThread;->tid:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Thread IDs overflowed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    sget v0, Lcom/rockstargames/hal/andThread;->tid:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andThread;->tid:I

    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/rockstargames/hal/andThread;->tid:I

    goto :goto_0
.end method

.method private static native runNativeRunnable(I)V
.end method

.method public static runOnBackgroundThread(II)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockstargames/hal/U;

    invoke-direct {v1, p1, p0}, Lcom/rockstargames/hal/U;-><init>(II)V

    const-string v2, "Native background thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static runOnMainThread(II)V
    .locals 3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    new-instance v0, Lcom/rockstargames/hal/V;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/V;-><init>(II)V

    sget-boolean v1, Lcom/rockstargames/hal/andThread;->threadsRunning:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/rockstargames/hal/V;->a()Z

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setRunning(Z)V
    .locals 4

    if-eqz p0, :cond_1

    sput-boolean p0, Lcom/rockstargames/hal/andThread;->threadsRunning:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rockstargames/hal/andThread;->threadsStopping:Z

    sget-object v1, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/V;

    invoke-virtual {v0}, Lcom/rockstargames/hal/V;->a()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/rockstargames/hal/andThread;->threadsStopping:Z

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/rockstargames/hal/T;

    invoke-direct {v1}, Lcom/rockstargames/hal/T;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public static sleep(J)V
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
