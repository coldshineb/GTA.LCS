.class public final Lio/sentry/android/core/AndroidCpuCollector;
.super Ljava/lang/Object;
.source "AndroidCpuCollector.java"

# interfaces
.implements Lio/sentry/IPerformanceSnapshotCollector;


# instance fields
.field private final NANOSECOND_PER_SECOND:J

.field private clockSpeedHz:J

.field private isEnabled:Z

.field private lastCpuNanos:J

.field private lastRealtimeNanos:J

.field private final logger:Lio/sentry/ILogger;

.field private nanosecondsPerClockTick:D

.field private final newLinePattern:Ljava/util/regex/Pattern;

.field private numCores:J

.field private final selfStat:Ljava/io/File;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastRealtimeNanos:J

    .line 26
    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastCpuNanos:J

    const-wide/16 v0, 0x1

    .line 29
    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->clockSpeedHz:J

    .line 31
    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->numCores:J

    const-wide/32 v2, 0x3b9aca00

    .line 32
    iput-wide v2, p0, Lio/sentry/android/core/AndroidCpuCollector;->NANOSECOND_PER_SECOND:J

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    long-to-double v0, v0

    div-double/2addr v2, v0

    .line 35
    iput-wide v2, p0, Lio/sentry/android/core/AndroidCpuCollector;->nanosecondsPerClockTick:D

    .line 38
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/stat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->selfStat:Ljava/io/File;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->isEnabled:Z

    .line 42
    const-string v0, "[\n\t\r ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->newLinePattern:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "Logger is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/android/core/AndroidCpuCollector;->logger:Lio/sentry/ILogger;

    return-void
.end method

.method private readTotalCpuNanos()J
    .locals 11

    .line 81
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->selfStat:Ljava/io/File;

    invoke-static {v0}, Lio/sentry/util/FileUtils;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidCpuCollector;->isEnabled:Z

    .line 86
    iget-object v1, p0, Lio/sentry/android/core/AndroidCpuCollector;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Unable to read /proc/self/stat file. Disabling cpu collection."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v3, p0, Lio/sentry/android/core/AndroidCpuCollector;->newLinePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xd

    .line 94
    :try_start_1
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/16 v5, 0xe

    .line 96
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/16 v7, 0xf

    .line 98
    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/16 v9, 0x10

    .line 100
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v3, v5

    add-long/2addr v3, v7

    add-long/2addr v3, v9

    long-to-double v3, v3

    .line 101
    iget-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->nanosecondsPerClockTick:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    mul-double/2addr v3, v0

    double-to-long v0, v3

    return-wide v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 103
    :goto_1
    iget-object v3, p0, Lio/sentry/android/core/AndroidCpuCollector;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Error parsing /proc/self/stat file."

    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-wide v1
.end method


# virtual methods
.method public collect(Lio/sentry/PerformanceCollectionData;)V
    .locals 6

    .line 59
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->isEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 63
    iget-wide v2, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastRealtimeNanos:J

    sub-long v2, v0, v2

    .line 64
    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastRealtimeNanos:J

    .line 65
    invoke-direct {p0}, Lio/sentry/android/core/AndroidCpuCollector;->readTotalCpuNanos()J

    move-result-wide v0

    .line 66
    iget-wide v4, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastCpuNanos:J

    sub-long v4, v0, v4

    .line 67
    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastCpuNanos:J

    long-to-double v0, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 73
    iget-wide v2, p0, Lio/sentry/android/core/AndroidCpuCollector;->numCores:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Lio/sentry/PerformanceCollectionData;->setCpuUsagePercentage(Ljava/lang/Double;)V

    return-void
.end method

.method public setup()V
    .locals 4

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->isEnabled:Z

    .line 51
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->clockSpeedHz:J

    .line 52
    sget v0, Landroid/system/OsConstants;->_SC_NPROCESSORS_CONF:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->numCores:J

    .line 53
    iget-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->clockSpeedHz:J

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    iput-wide v2, p0, Lio/sentry/android/core/AndroidCpuCollector;->nanosecondsPerClockTick:D

    .line 54
    invoke-direct {p0}, Lio/sentry/android/core/AndroidCpuCollector;->readTotalCpuNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastCpuNanos:J

    return-void
.end method
