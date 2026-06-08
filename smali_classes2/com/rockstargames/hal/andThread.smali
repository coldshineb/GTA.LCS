.class public Lcom/rockstargames/hal/andThread;
.super Ljava/lang/Object;
.source "andThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;
    }
.end annotation


# static fields
.field private static lock:Ljava/lang/Object; = null

.field private static pausedCache:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private static threadsRunning:Z = true

.field private static threadsStopping:Z

.field private static tid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andThread;->lock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 143
    sput v0, Lcom/rockstargames/hal/andThread;->tid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0

    .line 10
    invoke-static {p0}, Lcom/rockstargames/hal/andThread;->runNativeRunnable(I)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 10
    sget-boolean v0, Lcom/rockstargames/hal/andThread;->threadsStopping:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 10
    sput-boolean p0, Lcom/rockstargames/hal/andThread;->threadsRunning:Z

    return p0
.end method

.method public static currentThreadId()I
    .locals 2

    .line 146
    sget v0, Lcom/rockstargames/hal/andThread;->tid:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andThread;->tid:I

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Thread IDs overflowed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/rockstargames/hal/ActivityWrapper;->handleException(Ljava/lang/Exception;)V

    .line 152
    sget v0, Lcom/rockstargames/hal/andThread;->tid:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andThread;->tid:I

    .line 155
    :cond_0
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 158
    :cond_1
    sget v0, Lcom/rockstargames/hal/andThread;->tid:I

    return v0
.end method

.method private static native runNativeRunnable(I)V
.end method

.method public static runOnBackgroundThread(II)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rockstargames/hal/andThread$2;

    invoke-direct {v1, p1, p0}, Lcom/rockstargames/hal/andThread$2;-><init>(II)V

    const-string p0, "Native background thread"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static runOnMainThread(II)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 91
    :cond_0
    new-instance v0, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;-><init>(II)V

    .line 93
    sget-boolean p0, Lcom/rockstargames/hal/andThread;->threadsRunning:Z

    if-eqz p0, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;->post()Z

    return-void

    .line 99
    :cond_1
    sget-object p0, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    monitor-enter p0

    .line 101
    :try_start_0
    sget-object p1, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static setRunning(Z)V
    .locals 3

    if-eqz p0, :cond_1

    .line 52
    sput-boolean p0, Lcom/rockstargames/hal/andThread;->threadsRunning:Z

    const/4 p0, 0x0

    .line 53
    sput-boolean p0, Lcom/rockstargames/hal/andThread;->threadsStopping:Z

    .line 54
    sget-object p0, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    monitor-enter p0

    .line 56
    :try_start_0
    sget-object v0, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;

    .line 58
    invoke-virtual {v1}, Lcom/rockstargames/hal/andThread$DelayedNativeRunnable;->post()Z

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/rockstargames/hal/andThread;->pausedCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 p0, 0x1

    .line 66
    sput-boolean p0, Lcom/rockstargames/hal/andThread;->threadsStopping:Z

    .line 67
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getLayout()Landroid/view/ViewGroup;

    move-result-object p0

    new-instance v0, Lcom/rockstargames/hal/andThread$1;

    invoke-direct {v0}, Lcom/rockstargames/hal/andThread$1;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static sleep(J)V
    .locals 0

    .line 136
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
