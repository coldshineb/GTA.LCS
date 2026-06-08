.class final Lio/sentry/MovePreviousSession;
.super Ljava/lang/Object;
.source "MovePreviousSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/sentry/MovePreviousSession;->options:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 21
    iget-object v0, p0, Lio/sentry/MovePreviousSession;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lio/sentry/MovePreviousSession;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Cache dir is not set, not moving the previous session."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 27
    :cond_0
    iget-object v2, p0, Lio/sentry/MovePreviousSession;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    iget-object v0, p0, Lio/sentry/MovePreviousSession;->options:Lio/sentry/SentryOptions;

    .line 29
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Session tracking is disabled, bailing from previous session mover."

    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 34
    :cond_1
    iget-object v1, p0, Lio/sentry/MovePreviousSession;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v1

    .line 35
    instance-of v2, v1, Lio/sentry/cache/EnvelopeCache;

    if-eqz v2, :cond_2

    .line 36
    invoke-static {v0}, Lio/sentry/cache/EnvelopeCache;->getCurrentSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 37
    invoke-static {v0}, Lio/sentry/cache/EnvelopeCache;->getPreviousSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 39
    check-cast v1, Lio/sentry/cache/EnvelopeCache;

    invoke-virtual {v1, v2, v0}, Lio/sentry/cache/EnvelopeCache;->movePreviousSession(Ljava/io/File;Ljava/io/File;)V

    .line 41
    invoke-virtual {v1}, Lio/sentry/cache/EnvelopeCache;->flushPreviousSession()V

    :cond_2
    return-void
.end method
