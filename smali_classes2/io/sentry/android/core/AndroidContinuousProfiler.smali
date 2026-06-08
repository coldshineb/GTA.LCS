.class public Lio/sentry/android/core/AndroidContinuousProfiler;
.super Ljava/lang/Object;
.source "AndroidContinuousProfiler.java"

# interfaces
.implements Lio/sentry/IContinuousProfiler;
.implements Lio/sentry/transport/RateLimiter$IRateLimitObserver;


# static fields
.field private static final MAX_CHUNK_DURATION_MILLIS:J = 0xea60L


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private chunkId:Lio/sentry/protocol/SentryId;

.field private final executorService:Lio/sentry/ISentryExecutorService;

.field private final frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isInitialized:Z

.field private isRunning:Z

.field private isSampled:Z

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final logger:Lio/sentry/ILogger;

.field private final payloadBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/ProfileChunk$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final payloadLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private performanceCollector:Lio/sentry/CompositePerformanceCollector;

.field private profiler:Lio/sentry/android/core/AndroidProfiler;

.field private profilerId:Lio/sentry/protocol/SentryId;

.field private final profilingTracesDirPath:Ljava/lang/String;

.field private final profilingTracesHz:I

.field private rootSpanCounter:I

.field private scopes:Lio/sentry/IScopes;

.field private volatile shouldSample:Z

.field private shouldStop:Z

.field private startProfileChunkTimestamp:Lio/sentry/SentryDate;

.field private stopFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ILio/sentry/ISentryExecutorService;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isInitialized:Z

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    .line 53
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning:Z

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadBuilders:Ljava/util/List;

    .line 58
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 59
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    .line 60
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v1, Lio/sentry/SentryNanotimeDate;

    invoke-direct {v1}, Lio/sentry/SentryNanotimeDate;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->startProfileChunkTimestamp:Lio/sentry/SentryDate;

    const/4 v1, 0x1

    .line 62
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldSample:Z

    .line 63
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldStop:Z

    .line 64
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isSampled:Z

    .line 65
    iput v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    .line 67
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 68
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 77
    iput-object p3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    .line 78
    iput-object p2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 79
    iput-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 80
    iput-object p4, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesDirPath:Ljava/lang/String;

    .line 81
    iput p5, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesHz:I

    .line 82
    iput-object p6, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->executorService:Lio/sentry/ISentryExecutorService;

    return-void
.end method

.method private init()V
    .locals 10

    .line 87
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isInitialized:Z

    .line 91
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesDirPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Disabling profiling because no profiling traces dir path is defined in options."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 97
    :cond_1
    iget v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesHz:I

    if-gtz v0, :cond_2

    .line 98
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    iget v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesHz:I

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 98
    const-string v3, "Disabling profiling because trace rate is set to %d"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 105
    :cond_2
    new-instance v4, Lio/sentry/android/core/AndroidProfiler;

    iget-object v5, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesDirPath:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesHz:I

    div-int v6, v0, v1

    iget-object v7, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    const/4 v8, 0x0

    iget-object v9, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    invoke-direct/range {v4 .. v9}, Lio/sentry/android/core/AndroidProfiler;-><init>(Ljava/lang/String;ILio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ISentryExecutorService;Lio/sentry/ILogger;)V

    iput-object v4, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    return-void
.end method

.method private initScopes()V
    .locals 2

    .line 155
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_0

    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 156
    :cond_0
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 157
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    .line 159
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 160
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0, p0}, Lio/sentry/transport/RateLimiter;->addRateLimitObserver(Lio/sentry/transport/RateLimiter$IRateLimitObserver;)V

    :cond_1
    return-void
.end method

.method private sendChunks(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 2

    .line 350
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/AndroidContinuousProfiler;Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V

    .line 351
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 369
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Failed to send profile chunks."

    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private start()V
    .locals 5

    .line 168
    invoke-direct {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->initScopes()V

    .line 172
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 175
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->init()V

    .line 177
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    if-nez v0, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_5

    .line 182
    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 183
    sget-object v2, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 184
    invoke-virtual {v0, v2}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lio/sentry/DataCategory;->ProfileChunkUi:Lio/sentry/DataCategory;

    .line 185
    invoke-virtual {v0, v2}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "SDK is rate limited. Stopping profiler."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-direct {p0, v1}, Lio/sentry/android/core/AndroidContinuousProfiler;->stop(Z)V

    return-void

    .line 193
    :cond_3
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    sget-object v2, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-ne v0, v2, :cond_4

    .line 194
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Device is offline. Stopping profiler."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-direct {p0, v1}, Lio/sentry/android/core/AndroidContinuousProfiler;->stop(Z)V

    return-void

    .line 199
    :cond_4
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->startProfileChunkTimestamp:Lio/sentry/SentryDate;

    goto :goto_0

    .line 201
    :cond_5
    new-instance v0, Lio/sentry/SentryNanotimeDate;

    invoke-direct {v0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->startProfileChunkTimestamp:Lio/sentry/SentryDate;

    .line 203
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    invoke-virtual {v0}, Lio/sentry/android/core/AndroidProfiler;->start()Lio/sentry/android/core/AndroidProfiler$ProfileStartData;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_1
    return-void

    :cond_6
    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning:Z

    .line 211
    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    if-ne v1, v2, :cond_7

    .line 212
    new-instance v1, Lio/sentry/protocol/SentryId;

    invoke-direct {v1}, Lio/sentry/protocol/SentryId;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 215
    :cond_7
    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    if-ne v1, v2, :cond_8

    .line 216
    new-instance v1, Lio/sentry/protocol/SentryId;

    invoke-direct {v1}, Lio/sentry/protocol/SentryId;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    .line 219
    :cond_8
    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    if-eqz v1, :cond_9

    .line 220
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v2}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/CompositePerformanceCollector;->start(Ljava/lang/String;)V

    .line 224
    :cond_9
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->executorService:Lio/sentry/ISentryExecutorService;

    new-instance v2, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/AndroidContinuousProfiler;)V

    const-wide/32 v3, 0xea60

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->stopFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 226
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to schedule profiling chunk finish. Did you call Sentry.close()?"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldStop:Z

    return-void
.end method

.method private stop(Z)V
    .locals 11

    .line 259
    invoke-direct {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->initScopes()V

    .line 260
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->stopFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 262
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 265
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning:Z

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 275
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x16

    if-ge v0, v2, :cond_2

    if-eqz v1, :cond_a

    .line 323
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    return-void

    .line 280
    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    if-eqz v0, :cond_3

    .line 281
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v2}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/sentry/CompositePerformanceCollector;->stop(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 284
    :goto_0
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    const/4 v3, 0x0

    .line 285
    invoke-virtual {v2, v3, v0}, Lio/sentry/android/core/AndroidProfiler;->endAndCollect(ZLjava/util/List;)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    move-result-object v0

    if-nez v0, :cond_4

    .line 289
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "An error occurred while collecting a profile chunk, and it won\'t be sent."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 296
    :cond_4
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 297
    :try_start_2
    iget-object v4, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadBuilders:Ljava/util/List;

    new-instance v5, Lio/sentry/ProfileChunk$Builder;

    iget-object v6, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    iget-object v7, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    iget-object v8, v0, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->measurementsMap:Ljava/util/Map;

    iget-object v9, v0, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->traceFile:Ljava/io/File;

    iget-object v10, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->startProfileChunkTimestamp:Lio/sentry/SentryDate;

    invoke-direct/range {v5 .. v10}, Lio/sentry/ProfileChunk$Builder;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Ljava/util/Map;Ljava/io/File;Lio/sentry/SentryDate;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    .line 304
    :try_start_3
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 307
    :cond_5
    :goto_1
    iput-boolean v3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning:Z

    .line 309
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    .line 311
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_6

    .line 312
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lio/sentry/android/core/AndroidContinuousProfiler;->sendChunks(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 315
    iget-boolean p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldStop:Z

    if-nez p1, :cond_7

    .line 316
    iget-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Profile chunk finished. Starting a new one."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-direct {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->start()V

    goto :goto_2

    .line 320
    :cond_7
    sget-object p1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 321
    iget-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Profile chunk finished."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v1, :cond_a

    .line 323
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz v2, :cond_8

    .line 296
    :try_start_4
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw p1

    .line 268
    :cond_9
    :goto_4
    sget-object p1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 269
    sget-object p1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_a

    .line 323
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_a
    return-void

    :catchall_2
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_b

    .line 260
    :try_start_6
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_5
    throw p1
.end method


# virtual methods
.method public close(Z)V
    .locals 3

    .line 332
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    const/4 v1, 0x0

    .line 333
    :try_start_0
    iput v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    const/4 v2, 0x1

    .line 334
    iput-boolean v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldStop:Z

    if-eqz p1, :cond_0

    .line 336
    invoke-direct {p0, v1}, Lio/sentry/android/core/AndroidContinuousProfiler;->stop(Z)V

    .line 337
    iget-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 339
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 332
    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
.end method

.method public getProfilerId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 344
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getRootSpanCounter()I
    .locals 1

    .line 386
    iget v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    return v0
.end method

.method getStopFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->stopFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning:Z

    return v0
.end method

.method synthetic lambda$sendChunks$1$io-sentry-android-core-AndroidContinuousProfiler(Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V
    .locals 4

    .line 354
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 357
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 359
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/ProfileChunk$Builder;

    .line 360
    invoke-virtual {v3, p1}, Lio/sentry/ProfileChunk$Builder;->build(Lio/sentry/SentryOptions;)Lio/sentry/ProfileChunk;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadBuilders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 363
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 364
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ProfileChunk;

    .line 365
    invoke-interface {p2, v0}, Lio/sentry/IScopes;->captureProfileChunk(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 358
    :try_start_1
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
.end method

.method synthetic lambda$start$0$io-sentry-android-core-AndroidContinuousProfiler()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 224
    invoke-direct {p0, v0}, Lio/sentry/android/core/AndroidContinuousProfiler;->stop(Z)V

    return-void
.end method

.method public onRateLimitChanged(Lio/sentry/transport/RateLimiter;)V
    .locals 4

    .line 392
    sget-object v0, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lio/sentry/DataCategory;->ProfileChunkUi:Lio/sentry/DataCategory;

    .line 393
    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 394
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "SDK is rate limited. Stopping profiler."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    invoke-direct {p0, v2}, Lio/sentry/android/core/AndroidContinuousProfiler;->stop(Z)V

    return-void
.end method

.method public reevaluateSampling()V
    .locals 1

    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldSample:Z

    return-void
.end method

.method public startProfiler(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V
    .locals 5

    .line 118
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 119
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldSample:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lio/sentry/util/SentryRandom;->current()Lio/sentry/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/util/Random;->nextDouble()D

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lio/sentry/TracesSampler;->sampleSessionProfile(D)Z

    move-result p2

    iput-boolean p2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isSampled:Z

    .line 121
    iput-boolean v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldSample:Z

    .line 123
    :cond_0
    iget-boolean p2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isSampled:Z

    if-nez p2, :cond_1

    .line 124
    iget-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Profiler was not started due to sampling decision."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    .line 151
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    return-void

    .line 127
    :cond_1
    :try_start_1
    sget-object p2, Lio/sentry/android/core/AndroidContinuousProfiler$1;->$SwitchMap$io$sentry$ProfileLifecycle:[I

    invoke-virtual {p1}, Lio/sentry/ProfileLifecycle;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 142
    iget-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Profiler is already running."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    .line 151
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    return-void

    .line 132
    :cond_3
    :try_start_2
    iget p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    if-gez p1, :cond_4

    .line 133
    iput v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    .line 135
    :cond_4
    iget p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    add-int/2addr p1, p2

    iput p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    .line 147
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning()Z

    move-result p1

    if-nez p1, :cond_6

    .line 148
    iget-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Started Profiler."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-direct {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    if-eqz v0, :cond_7

    .line 151
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_8

    .line 118
    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw p1
.end method

.method public stopProfiler(Lio/sentry/ProfileLifecycle;)V
    .locals 3

    .line 236
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 237
    :try_start_0
    sget-object v1, Lio/sentry/android/core/AndroidContinuousProfiler$1;->$SwitchMap$io$sentry$ProfileLifecycle:[I

    invoke-virtual {p1}, Lio/sentry/ProfileLifecycle;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldStop:Z

    goto :goto_0

    .line 239
    :cond_1
    iget p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    sub-int/2addr p1, v1

    iput p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_2

    if-eqz v0, :cond_4

    .line 255
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    return-void

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    .line 247
    :try_start_1
    iput p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    .line 249
    :cond_3
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_4

    .line 255
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_5

    .line 236
    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1
.end method
