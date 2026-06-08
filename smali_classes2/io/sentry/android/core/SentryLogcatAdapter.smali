.class public final Lio/sentry/android/core/SentryLogcatAdapter;
.super Ljava/lang/Object;
.source "SentryLogcatAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, p1, p2, v0}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 37
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 38
    const-string v1, "Logcat"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p2}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    if-eqz p0, :cond_0

    .line 42
    const-string p1, "tag"

    invoke-virtual {v0, p1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 44
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 45
    const-string p0, "throwable"

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    :cond_1
    invoke-static {v0}, Lio/sentry/Sentry;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    return-void
.end method

.method private static addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, v0, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 54
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions$Logs;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 59
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 60
    :goto_0
    new-instance v2, Lio/sentry/logger/SentryLogParameters;

    invoke-direct {v2}, Lio/sentry/logger/SentryLogParameters;-><init>()V

    .line 61
    const-string v3, "auto.log.logcat"

    invoke-virtual {v2, v3}, Lio/sentry/logger/SentryLogParameters;->setOrigin(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    if-nez v1, :cond_2

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->logger()Lio/sentry/logger/ILoggerApi;

    move-result-object p2

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-array p1, v3, [Ljava/lang/Object;

    invoke-interface {p2, p0, v2, v1, p1}, Lio/sentry/logger/ILoggerApi;->log(Lio/sentry/SentryLogLevel;Lio/sentry/logger/SentryLogParameters;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->logger()Lio/sentry/logger/ILoggerApi;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p2, p0, v2, p1, v0}, Lio/sentry/logger/ILoggerApi;->log(Lio/sentry/SentryLogLevel;Lio/sentry/logger/SentryLogParameters;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 83
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lio/sentry/SentryLogLevel;->DEBUG:Lio/sentry/SentryLogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 89
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    sget-object v0, Lio/sentry/SentryLogLevel;->DEBUG:Lio/sentry/SentryLogLevel;

    invoke-static {v0, p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 125
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lio/sentry/SentryLogLevel;->ERROR:Lio/sentry/SentryLogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 131
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    sget-object v0, Lio/sentry/SentryLogLevel;->ERROR:Lio/sentry/SentryLogLevel;

    invoke-static {v0, p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 95
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lio/sentry/SentryLogLevel;->INFO:Lio/sentry/SentryLogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 101
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    sget-object v0, Lio/sentry/SentryLogLevel;->INFO:Lio/sentry/SentryLogLevel;

    invoke-static {v0, p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 71
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lio/sentry/SentryLogLevel;->TRACE:Lio/sentry/SentryLogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 77
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    sget-object v0, Lio/sentry/SentryLogLevel;->TRACE:Lio/sentry/SentryLogLevel;

    invoke-static {v0, p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 107
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lio/sentry/SentryLogLevel;->WARN:Lio/sentry/SentryLogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 113
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    sget-object v0, Lio/sentry/SentryLogLevel;->WARN:Lio/sentry/SentryLogLevel;

    invoke-static {v0, p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 119
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/Throwable;)V

    .line 120
    sget-object v0, Lio/sentry/SentryLogLevel;->WARN:Lio/sentry/SentryLogLevel;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 137
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lio/sentry/SentryLogLevel;->FATAL:Lio/sentry/SentryLogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 149
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    sget-object v0, Lio/sentry/SentryLogLevel;->FATAL:Lio/sentry/SentryLogLevel;

    invoke-static {v0, p1, p2}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 143
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-static {p0, v0, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsBreadcrumb(Ljava/lang/String;Lio/sentry/SentryLevel;Ljava/lang/Throwable;)V

    .line 144
    sget-object v0, Lio/sentry/SentryLogLevel;->FATAL:Lio/sentry/SentryLogLevel;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lio/sentry/android/core/SentryLogcatAdapter;->addAsLog(Lio/sentry/SentryLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
