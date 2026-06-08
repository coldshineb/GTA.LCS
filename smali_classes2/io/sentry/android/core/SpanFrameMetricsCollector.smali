.class public Lio/sentry/android/core/SpanFrameMetricsCollector;
.super Ljava/lang/Object;
.source "SpanFrameMetricsCollector.java"

# interfaces
.implements Lio/sentry/IPerformanceContinuousCollector;
.implements Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;
    }
.end annotation


# static fields
.field private static final EMPTY_NANO_TIME:Lio/sentry/SentryNanotimeDate;

.field private static final MAX_FRAMES_COUNT:I = 0xe10

.field private static final ONE_SECOND_NANOS:J


# instance fields
.field private final enabled:Z

.field private final frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field private final frames:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private lastKnownFrameDurationNanos:J

.field private volatile listenerId:Ljava/lang/String;

.field protected final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final runningSpans:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->ONE_SECOND_NANOS:J

    .line 36
    new-instance v0, Lio/sentry/SentryNanotimeDate;

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryNanotimeDate;-><init>(Ljava/util/Date;J)V

    sput-object v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->EMPTY_NANO_TIME:Lio/sentry/SentryNanotimeDate;

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 45
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lio/sentry/android/core/SpanFrameMetricsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/android/core/SpanFrameMetricsCollector$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    const-wide/32 v0, 0xfe502a

    .line 70
    iput-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lastKnownFrameDurationNanos:J

    .line 75
    iput-object p2, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 77
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableFramesTracking()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->enabled:Z

    return-void
.end method

.method private static addPendingFrameDelay(Lio/sentry/android/core/SentryFrameMetrics;JJJ)I
    .locals 7

    sub-long/2addr p3, p5

    const-wide/16 p5, 0x0

    .line 296
    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 298
    invoke-static {v1, v2, p1, p2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isSlow(JJ)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 301
    invoke-static {v1, v2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isFrozen(J)Z

    move-result v6

    sub-long p1, v1, p1

    .line 302
    invoke-static {p5, p6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object v0, p0

    .line 303
    invoke-virtual/range {v0 .. v6}, Lio/sentry/android/core/SentryFrameMetrics;->addFrame(JJZZ)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private captureFrameMetrics(Lio/sentry/ISpan;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 137
    iget-object v2, v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2

    .line 138
    :try_start_0
    iget-object v3, v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    invoke-interface {v3, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    if-eqz v2, :cond_b

    .line 226
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V

    return-void

    .line 143
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    if-eqz v2, :cond_b

    .line 226
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V

    return-void

    .line 148
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/android/core/SpanFrameMetricsCollector;->toNanoTime(Lio/sentry/SentryDate;)J

    move-result-wide v4

    .line 149
    invoke-static {v3}, Lio/sentry/android/core/SpanFrameMetricsCollector;->toNanoTime(Lio/sentry/SentryDate;)J

    move-result-wide v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v13, v9, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v13, v6

    if-gtz v3, :cond_2

    if-eqz v2, :cond_b

    .line 226
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V

    return-void

    .line 155
    :cond_2
    :try_start_3
    new-instance v15, Lio/sentry/android/core/SentryFrameMetrics;

    invoke-direct {v15}, Lio/sentry/android/core/SentryFrameMetrics;-><init>()V

    .line 157
    iget-wide v11, v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->lastKnownFrameDurationNanos:J

    .line 159
    iget-object v3, v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 161
    iget-object v3, v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v8, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    invoke-direct {v8, v4, v5}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(J)V

    invoke-virtual {v3, v8}, Ljava/util/concurrent/ConcurrentSkipListSet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 164
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 165
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 167
    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v16

    cmp-long v16, v16, v9

    if-lez v16, :cond_3

    goto/16 :goto_2

    .line 171
    :cond_3
    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v11

    cmp-long v11, v11, v4

    if-ltz v11, :cond_4

    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-gtz v11, :cond_4

    .line 174
    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$200(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v16

    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$300(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v18

    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$400(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)Z

    move-result v20

    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$500(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)Z

    move-result v21

    .line 173
    invoke-virtual/range {v15 .. v21}, Lio/sentry/android/core/SentryFrameMetrics;->addFrame(JJZZ)V

    goto :goto_1

    .line 175
    :cond_4
    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v11

    cmp-long v11, v4, v11

    if-lez v11, :cond_5

    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v11

    cmp-long v11, v4, v11

    if-ltz v11, :cond_6

    .line 176
    :cond_5
    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v11

    cmp-long v11, v9, v11

    if-lez v11, :cond_7

    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v11

    cmp-long v11, v9, v11

    if-gez v11, :cond_7

    .line 179
    :cond_6
    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v11

    sub-long v11, v4, v11

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 181
    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$600(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v16

    sub-long v11, v11, v16

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 183
    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$300(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v16

    sub-long v11, v16, v11

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    .line 185
    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v11

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 186
    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v6

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long/2addr v6, v11

    .line 191
    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$600(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v11

    invoke-static {v6, v7, v11, v12}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isSlow(JJ)Z

    move-result v20

    .line 192
    invoke-static {v6, v7}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isFrozen(J)Z

    move-result v21

    move-wide/from16 v16, v6

    .line 188
    invoke-virtual/range {v15 .. v21}, Lio/sentry/android/core/SentryFrameMetrics;->addFrame(JJZZ)V

    .line 195
    :cond_7
    :goto_1
    invoke-static {v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$600(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v11

    const-wide/16 v6, 0x0

    goto/16 :goto_0

    :cond_8
    :goto_2
    move-wide v7, v11

    .line 199
    invoke-virtual {v15}, Lio/sentry/android/core/SentryFrameMetrics;->getSlowFrozenFrameCount()I

    move-result v3

    .line 201
    iget-object v4, v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    invoke-virtual {v4}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->getLastKnownFrameStartTimeNanos()J

    move-result-wide v11

    const-wide/16 v4, -0x1

    cmp-long v4, v11, v4

    if-eqz v4, :cond_9

    move-object v6, v15

    .line 206
    invoke-static/range {v6 .. v12}, Lio/sentry/android/core/SpanFrameMetricsCollector;->addPendingFrameDelay(Lio/sentry/android/core/SentryFrameMetrics;JJJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 209
    invoke-static {v15, v7, v8, v13, v14}, Lio/sentry/android/core/SpanFrameMetricsCollector;->interpolateFrameCount(Lio/sentry/android/core/SentryFrameMetrics;JJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 212
    :cond_9
    invoke-virtual {v15}, Lio/sentry/android/core/SentryFrameMetrics;->getSlowFrameDelayNanos()J

    move-result-wide v4

    invoke-virtual {v15}, Lio/sentry/android/core/SentryFrameMetrics;->getFrozenFrameDelayNanos()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    .line 215
    const-string v6, "frames.total"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    const-string v6, "frames.slow"

    invoke-virtual {v15}, Lio/sentry/android/core/SentryFrameMetrics;->getSlowFrameCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const-string v6, "frames.frozen"

    invoke-virtual {v15}, Lio/sentry/android/core/SentryFrameMetrics;->getFrozenFrameCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    const-string v6, "frames.delay"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    instance-of v6, v0, Lio/sentry/ITransaction;

    if-eqz v6, :cond_a

    .line 221
    const-string v6, "frames_total"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    .line 222
    const-string v3, "frames_slow"

    invoke-virtual {v15}, Lio/sentry/android/core/SentryFrameMetrics;->getSlowFrameCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    .line 223
    const-string v3, "frames_frozen"

    invoke-virtual {v15}, Lio/sentry/android/core/SentryFrameMetrics;->getFrozenFrameCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    .line 224
    const-string v3, "frames_delay"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    if-eqz v2, :cond_b

    .line 226
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_c

    .line 137
    :try_start_4
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_3
    throw v3
.end method

.method private static interpolateFrameCount(Lio/sentry/android/core/SentryFrameMetrics;JJ)I
    .locals 2

    .line 283
    invoke-virtual {p0}, Lio/sentry/android/core/SentryFrameMetrics;->getTotalDurationNanos()J

    move-result-wide v0

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-lez p0, :cond_0

    long-to-double p3, p3

    long-to-double p0, p1

    div-double/2addr p3, p0

    .line 286
    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$new$0(Lio/sentry/ISpan;Lio/sentry/ISpan;)I
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_0
    invoke-interface {p0}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v0

    invoke-interface {p1}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryDate;->compareTo(Lio/sentry/SentryDate;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 57
    :cond_1
    invoke-interface {p0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lio/sentry/SpanId;->toString()Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SpanId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static toNanoTime(Lio/sentry/SentryDate;)J
    .locals 4

    .line 319
    instance-of v0, p0, Lio/sentry/SentryNanotimeDate;

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->EMPTY_NANO_TIME:Lio/sentry/SentryNanotimeDate;

    invoke-virtual {p0, v0}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v0

    return-wide v0

    .line 325
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->millisToNanos(J)J

    move-result-wide v0

    .line 326
    invoke-virtual {p0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 327
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 231
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v2, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->stopCollection(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 234
    iput-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    .line 236
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V

    .line 237
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 238
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 231
    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public onFrameMetricCollected(JJJJZZF)V
    .locals 16

    move-object/from16 v0, p0

    .line 253
    iget-object v1, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v1

    const/16 v2, 0xe10

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    sget-wide v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->ONE_SECOND_NANOS:J

    long-to-double v1, v1

    move/from16 v3, p11

    float-to-double v3, v3

    div-double/2addr v1, v3

    double-to-long v14, v1

    .line 259
    iput-wide v14, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lastKnownFrameDurationNanos:J

    if-nez p9, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 262
    :cond_2
    :goto_1
    iget-object v1, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v3, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v3 .. v15}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(JJJJZZJ)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSpanFinished(Lio/sentry/ISpan;)V
    .locals 5

    .line 103
    iget-boolean v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->enabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    instance-of v0, p1, Lio/sentry/NoOpSpan;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    instance-of v0, p1, Lio/sentry/NoOpTransaction;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 116
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_3

    if-eqz v0, :cond_6

    .line 120
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 122
    :cond_4
    invoke-direct {p0, p1}, Lio/sentry/android/core/SpanFrameMetricsCollector;->captureFrameMetrics(Lio/sentry/ISpan;)V

    .line 124
    iget-object p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {p1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object p1

    .line 125
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    invoke-virtual {p0}, Lio/sentry/android/core/SpanFrameMetricsCollector;->clear()V

    goto :goto_0

    .line 129
    :cond_5
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    .line 130
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v2, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    invoke-interface {v0}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/SpanFrameMetricsCollector;->toNanoTime(Lio/sentry/SentryDate;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_6

    .line 132
    invoke-interface {p1}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_6
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_7

    .line 124
    :try_start_2
    invoke-interface {p1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v0

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_8

    .line 116
    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw p1
.end method

.method public onSpanStarted(Lio/sentry/ISpan;)V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->enabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    instance-of v0, p1, Lio/sentry/NoOpSpan;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    instance-of v0, p1, Lio/sentry/NoOpTransaction;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 96
    iget-object p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->startCollection(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    .line 98
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_5

    .line 92
    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1
.end method
