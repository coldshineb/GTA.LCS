.class public final Lio/sentry/android/core/internal/util/CpuInfoUtils;
.super Ljava/lang/Object;
.source "CpuInfoUtils.java"


# static fields
.field static final CPUINFO_MAX_FREQ_PATH:Ljava/lang/String; = "cpufreq/cpuinfo_max_freq"

.field private static final SYSTEM_CPU_PATH:Ljava/lang/String; = "/sys/devices/system/cpu"

.field private static final instance:Lio/sentry/android/core/internal/util/CpuInfoUtils;


# instance fields
.field private final cpuMaxFrequenciesMhz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lio/sentry/android/core/internal/util/CpuInfoUtils;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;-><init>()V

    sput-object v0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->instance:Lio/sentry/android/core/internal/util/CpuInfoUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;
    .locals 1

    .line 22
    sget-object v0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->instance:Lio/sentry/android/core/internal/util/CpuInfoUtils;

    return-object v0
.end method


# virtual methods
.method final clear()V
    .locals 1

    .line 86
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method getSystemCpuPath()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "/sys/devices/system/cpu"

    return-object v0
.end method

.method public readMaxFrequencies()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    iget-object v1, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_0
    return-object v1

    .line 45
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getSystemCpuPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 69
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_2
    return-object v1

    .line 50
    :cond_3
    :try_start_2
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    aget-object v4, v1, v3

    .line 51
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cpu[0-9]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 52
    :cond_4
    new-instance v5, Ljava/io/File;

    const-string v6, "cpufreq/cpuinfo_max_freq"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_5

    goto :goto_1

    .line 58
    :cond_5
    :try_start_3
    invoke-static {v5}, Lio/sentry/util/FileUtils;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 60
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :try_start_4
    iget-object v6, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_8
    iget-object v1, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_9

    .line 69
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_9
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_a

    .line 41
    :try_start_5
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    throw v1
.end method

.method public setCpuMaxFrequencies(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->cpuMaxFrequenciesMhz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
