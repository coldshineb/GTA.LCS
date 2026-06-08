.class Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;
.super Ljava/lang/Object;
.source "SpanFrameMetricsCollector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SpanFrameMetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Frame"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;",
        ">;"
    }
.end annotation


# instance fields
.field private final delayNanos:J

.field private final durationNanos:J

.field private final endNanos:J

.field private final expectedDurationNanos:J

.field private final isFrozen:Z

.field private final isSlow:Z

.field private final startNanos:J


# direct methods
.method constructor <init>(J)V
    .locals 13

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-wide v3, p1

    move-object v0, p0

    move-wide v1, p1

    .line 340
    invoke-direct/range {v0 .. v12}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(JJJJZZJ)V

    return-void
.end method

.method constructor <init>(JJJJZZJ)V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-wide p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->startNanos:J

    .line 352
    iput-wide p3, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->endNanos:J

    .line 353
    iput-wide p5, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->durationNanos:J

    .line 354
    iput-wide p7, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->delayNanos:J

    .line 355
    iput-boolean p9, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->isSlow:Z

    .line 356
    iput-boolean p10, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->isFrozen:Z

    .line 357
    iput-wide p11, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->expectedDurationNanos:J

    return-void
.end method

.method static synthetic access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2

    .line 330
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->startNanos:J

    return-wide v0
.end method

.method static synthetic access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2

    .line 330
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->endNanos:J

    return-wide v0
.end method

.method static synthetic access$200(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2

    .line 330
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->durationNanos:J

    return-wide v0
.end method

.method static synthetic access$300(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2

    .line 330
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->delayNanos:J

    return-wide v0
.end method

.method static synthetic access$400(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)Z
    .locals 0

    .line 330
    iget-boolean p0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->isSlow:Z

    return p0
.end method

.method static synthetic access$500(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)Z
    .locals 0

    .line 330
    iget-boolean p0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->isFrozen:Z

    return p0
.end method

.method static synthetic access$600(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2

    .line 330
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->expectedDurationNanos:J

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)I
    .locals 4

    .line 362
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->endNanos:J

    iget-wide v2, p1, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->endNanos:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 330
    check-cast p1, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->compareTo(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)I

    move-result p1

    return p1
.end method
