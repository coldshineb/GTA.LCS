.class public Lio/sentry/android/core/internal/util/Debouncer;
.super Ljava/lang/Object;
.source "Debouncer.java"


# instance fields
.field private final executions:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final lastExecutionTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final maxExecutions:I

.field private final timeProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private final waitTimeMs:J


# direct methods
.method public constructor <init>(Lio/sentry/transport/ICurrentDateProvider;JI)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/Debouncer;->executions:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/Debouncer;->lastExecutionTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    iput-object p1, p0, Lio/sentry/android/core/internal/util/Debouncer;->timeProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 25
    iput-wide p2, p0, Lio/sentry/android/core/internal/util/Debouncer;->waitTimeMs:J

    if-gtz p4, :cond_0

    const/4 p4, 0x1

    .line 26
    :cond_0
    iput p4, p0, Lio/sentry/android/core/internal/util/Debouncer;->maxExecutions:I

    return-void
.end method


# virtual methods
.method public checkForDebounce()Z
    .locals 8

    .line 34
    iget-object v0, p0, Lio/sentry/android/core/internal/util/Debouncer;->timeProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 35
    iget-object v2, p0, Lio/sentry/android/core/internal/util/Debouncer;->lastExecutionTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/android/core/internal/util/Debouncer;->lastExecutionTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-wide v6, p0, Lio/sentry/android/core/internal/util/Debouncer;->waitTimeMs:J

    add-long/2addr v4, v6

    cmp-long v2, v4, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/Debouncer;->executions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lio/sentry/android/core/internal/util/Debouncer;->maxExecutions:I

    if-ge v0, v1, :cond_1

    return v3

    .line 43
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/Debouncer;->executions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x1

    return v0

    .line 36
    :cond_2
    :goto_0
    iget-object v2, p0, Lio/sentry/android/core/internal/util/Debouncer;->executions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 37
    iget-object v2, p0, Lio/sentry/android/core/internal/util/Debouncer;->lastExecutionTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return v3
.end method
