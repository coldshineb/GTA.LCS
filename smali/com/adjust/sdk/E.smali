.class public final Lcom/adjust/sdk/E;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ScheduledExecutorService;

.field private b:Ljava/util/concurrent/ScheduledFuture;

.field private c:Ljava/lang/Runnable;

.field private d:J

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/E;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/adjust/sdk/E;->c:Ljava/lang/Runnable;

    iput-wide p2, p0, Lcom/adjust/sdk/E;->d:J

    iput-wide p4, p0, Lcom/adjust/sdk/E;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/E;->f:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-boolean v0, p0, Lcom/adjust/sdk/E;->f:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/E;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/adjust/sdk/E;->c:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/adjust/sdk/E;->d:J

    iget-wide v4, p0, Lcom/adjust/sdk/E;->e:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/E;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/E;->f:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/adjust/sdk/E;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/E;->b:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adjust/sdk/E;->d:J

    iget-object v0, p0, Lcom/adjust/sdk/E;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/E;->f:Z

    goto :goto_0
.end method
