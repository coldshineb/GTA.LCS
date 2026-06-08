.class final Lio/sentry/android/core/SentryFrameMetrics;
.super Ljava/lang/Object;
.source "SentryFrameMetrics.java"


# instance fields
.field private frozenFrameCount:I

.field private frozenFrameDelayNanos:J

.field private slowFrameCount:I

.field private slowFrameDelayNanos:J

.field private totalDurationNanos:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJIJJ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    .line 26
    iput-wide p2, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    .line 28
    iput p4, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    .line 29
    iput-wide p5, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    .line 30
    iput-wide p7, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    return-void
.end method


# virtual methods
.method public addFrame(JJZZ)V
    .locals 2

    .line 38
    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    if-eqz p6, :cond_0

    .line 40
    iget-wide p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    .line 41
    iget p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 43
    iget-wide p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    .line 44
    iget p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    const-wide/16 v1, 0x0

    .line 75
    iput-wide v1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    .line 77
    iput v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    .line 78
    iput-wide v1, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    .line 80
    iput-wide v1, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    return-void
.end method

.method public containsValidData()Z
    .locals 4

    .line 112
    iget v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public diffTo(Lio/sentry/android/core/SentryFrameMetrics;)Lio/sentry/android/core/SentryFrameMetrics;
    .locals 11

    .line 99
    new-instance v0, Lio/sentry/android/core/SentryFrameMetrics;

    iget v1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    iget v2, p1, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    sub-int/2addr v1, v2

    iget-wide v2, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    iget-wide v4, p1, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    sub-long/2addr v2, v4

    iget v4, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    iget v5, p1, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    sub-int/2addr v4, v5

    iget-wide v5, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    iget-wide v7, p1, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    iget-wide v9, p1, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    sub-long/2addr v7, v9

    invoke-direct/range {v0 .. v8}, Lio/sentry/android/core/SentryFrameMetrics;-><init>(IJIJJ)V

    return-object v0
.end method

.method public duplicate()Lio/sentry/android/core/SentryFrameMetrics;
    .locals 9

    .line 85
    new-instance v0, Lio/sentry/android/core/SentryFrameMetrics;

    iget v1, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    iget-wide v2, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    iget v4, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    iget-wide v5, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    iget-wide v7, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    invoke-direct/range {v0 .. v8}, Lio/sentry/android/core/SentryFrameMetrics;-><init>(IJIJJ)V

    return-object v0
.end method

.method public getFrozenFrameCount()I
    .locals 1

    .line 53
    iget v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    return v0
.end method

.method public getFrozenFrameDelayNanos()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameDelayNanos:J

    return-wide v0
.end method

.method public getSlowFrameCount()I
    .locals 1

    .line 49
    iget v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    return v0
.end method

.method public getSlowFrameDelayNanos()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameDelayNanos:J

    return-wide v0
.end method

.method public getSlowFrozenFrameCount()I
    .locals 2

    .line 66
    iget v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->slowFrameCount:I

    iget v1, p0, Lio/sentry/android/core/SentryFrameMetrics;->frozenFrameCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalDurationNanos()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->totalDurationNanos:J

    return-wide v0
.end method
