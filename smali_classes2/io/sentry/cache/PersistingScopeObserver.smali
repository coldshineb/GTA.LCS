.class public final Lio/sentry/cache/PersistingScopeObserver;
.super Lio/sentry/ScopeObserverAdapter;
.source "PersistingScopeObserver.java"


# static fields
.field public static final BREADCRUMBS_FILENAME:Ljava/lang/String; = "breadcrumbs.json"

.field public static final CONTEXTS_FILENAME:Ljava/lang/String; = "contexts.json"

.field public static final EXTRAS_FILENAME:Ljava/lang/String; = "extras.json"

.field public static final FINGERPRINT_FILENAME:Ljava/lang/String; = "fingerprint.json"

.field public static final LEVEL_FILENAME:Ljava/lang/String; = "level.json"

.field public static final REPLAY_FILENAME:Ljava/lang/String; = "replay.json"

.field public static final REQUEST_FILENAME:Ljava/lang/String; = "request.json"

.field public static final SCOPE_CACHE:Ljava/lang/String; = ".scope-cache"

.field public static final TAGS_FILENAME:Ljava/lang/String; = "tags.json"

.field public static final TRACE_FILENAME:Ljava/lang/String; = "trace.json"

.field public static final TRANSACTION_FILENAME:Ljava/lang/String; = "transaction.json"

.field public static final USER_FILENAME:Ljava/lang/String; = "user.json"

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final breadcrumbsQueue:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/cache/tape/ObjectQueue<",
            "Lio/sentry/Breadcrumb;",
            ">;>;"
        }
    .end annotation
.end field

.field private options:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/cache/PersistingScopeObserver;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Lio/sentry/ScopeObserverAdapter;-><init>()V

    .line 54
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda7;-><init>(Lio/sentry/cache/PersistingScopeObserver;)V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->breadcrumbsQueue:Lio/sentry/util/LazyEvaluator;

    .line 109
    iput-object p1, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    return-void
.end method

.method static synthetic access$000()Ljava/nio/charset/Charset;
    .locals 1

    .line 36
    sget-object v0, Lio/sentry/cache/PersistingScopeObserver;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$100(Lio/sentry/cache/PersistingScopeObserver;)Lio/sentry/SentryOptions;
    .locals 0

    .line 36
    iget-object p0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    return-object p0
.end method

.method private delete(Ljava/lang/String;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    const-string v1, ".scope-cache"

    invoke-static {v0, v1, p1}, Lio/sentry/cache/CacheUtils;->delete(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private serializeToDisk(Ljava/lang/Runnable;)V
    .locals 3

    .line 229
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableScopePersistence()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SentryExecutor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 237
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Serialization task failed"

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 243
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 244
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda9;-><init>(Lio/sentry/cache/PersistingScopeObserver;Ljava/lang/Runnable;)V

    .line 245
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 254
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Serialization task could not be scheduled"

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static store(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 270
    const-string v0, ".scope-cache"

    invoke-static {p0, p1, v0, p2}, Lio/sentry/cache/CacheUtils;->store(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private store(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-static {v0, p1, p2}, Lio/sentry/cache/PersistingScopeObserver;->store(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1

    .line 126
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda13;-><init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/Breadcrumb;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$addBreadcrumb$2$io-sentry-cache-PersistingScopeObserver(Lio/sentry/Breadcrumb;)V
    .locals 3

    .line 129
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->breadcrumbsQueue:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/cache/tape/ObjectQueue;

    invoke-virtual {v0, p1}, Lio/sentry/cache/tape/ObjectQueue;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 131
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Failed to add breadcrumb to file queue"

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$new$0$io-sentry-cache-PersistingScopeObserver()Lio/sentry/cache/tape/ObjectQueue;
    .locals 4

    .line 57
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    const-string v1, ".scope-cache"

    invoke-static {v0, v1}, Lio/sentry/cache/CacheUtils;->ensureCacheDir(Lio/sentry/SentryOptions;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cache dir is not set, cannot store in scope cache"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Lio/sentry/cache/tape/ObjectQueue;->createEmpty()Lio/sentry/cache/tape/ObjectQueue;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "breadcrumbs.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    :try_start_0
    new-instance v0, Lio/sentry/cache/tape/QueueFile$Builder;

    invoke-direct {v0, v1}, Lio/sentry/cache/tape/QueueFile$Builder;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/sentry/cache/tape/QueueFile$Builder;->size(I)Lio/sentry/cache/tape/QueueFile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile$Builder;->build()Lio/sentry/cache/tape/QueueFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 76
    new-instance v0, Lio/sentry/cache/tape/QueueFile$Builder;

    invoke-direct {v0, v1}, Lio/sentry/cache/tape/QueueFile$Builder;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/sentry/cache/tape/QueueFile$Builder;->size(I)Lio/sentry/cache/tape/QueueFile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile$Builder;->build()Lio/sentry/cache/tape/QueueFile;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    :goto_0
    new-instance v1, Lio/sentry/cache/PersistingScopeObserver$1;

    invoke-direct {v1, p0}, Lio/sentry/cache/PersistingScopeObserver$1;-><init>(Lio/sentry/cache/PersistingScopeObserver;)V

    invoke-static {v0, v1}, Lio/sentry/cache/tape/ObjectQueue;->create(Lio/sentry/cache/tape/QueueFile;Lio/sentry/cache/tape/ObjectQueue$Converter;)Lio/sentry/cache/tape/ObjectQueue;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    .line 79
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to create breadcrumbs queue"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    invoke-static {}, Lio/sentry/cache/tape/ObjectQueue;->createEmpty()Lio/sentry/cache/tape/ObjectQueue;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$serializeToDisk$13$io-sentry-cache-PersistingScopeObserver(Ljava/lang/Runnable;)V
    .locals 3

    .line 248
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 250
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Serialization task failed"

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$setBreadcrumbs$3$io-sentry-cache-PersistingScopeObserver()V
    .locals 4

    .line 144
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->breadcrumbsQueue:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/cache/tape/ObjectQueue;

    invoke-virtual {v0}, Lio/sentry/cache/tape/ObjectQueue;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to clear breadcrumbs from file queue"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$setContexts$11$io-sentry-cache-PersistingScopeObserver(Lio/sentry/protocol/Contexts;)V
    .locals 1

    .line 219
    const-string v0, "contexts.json"

    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setExtras$5$io-sentry-cache-PersistingScopeObserver(Ljava/util/Map;)V
    .locals 1

    .line 159
    const-string v0, "extras.json"

    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setFingerprint$7$io-sentry-cache-PersistingScopeObserver(Ljava/util/Collection;)V
    .locals 1

    .line 176
    const-string v0, "fingerprint.json"

    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setLevel$8$io-sentry-cache-PersistingScopeObserver(Lio/sentry/SentryLevel;)V
    .locals 1

    .line 183
    const-string v0, "level.json"

    if-nez p1, :cond_0

    .line 184
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setReplayId$12$io-sentry-cache-PersistingScopeObserver(Lio/sentry/protocol/SentryId;)V
    .locals 1

    .line 224
    const-string v0, "replay.json"

    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setRequest$6$io-sentry-cache-PersistingScopeObserver(Lio/sentry/protocol/Request;)V
    .locals 1

    .line 166
    const-string v0, "request.json"

    if-nez p1, :cond_0

    .line 167
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    return-void

    .line 169
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setTags$4$io-sentry-cache-PersistingScopeObserver(Ljava/util/Map;)V
    .locals 1

    .line 154
    const-string v0, "tags.json"

    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setTrace$10$io-sentry-cache-PersistingScopeObserver(Lio/sentry/SpanContext;Lio/sentry/IScope;)V
    .locals 1

    .line 207
    const-string v0, "trace.json"

    if-nez p1, :cond_0

    .line 210
    invoke-interface {p2}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/PropagationContext;->toSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setTransaction$9$io-sentry-cache-PersistingScopeObserver(Ljava/lang/String;)V
    .locals 1

    .line 195
    const-string v0, "transaction.json"

    if-nez p1, :cond_0

    .line 196
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    return-void

    .line 198
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setUser$1$io-sentry-cache-PersistingScopeObserver(Lio/sentry/protocol/User;)V
    .locals 1

    .line 116
    const-string v0, "user.json"

    if-nez p1, :cond_0

    .line 117
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 277
    const-string v0, "breadcrumbs.json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    iget-object p2, p0, Lio/sentry/cache/PersistingScopeObserver;->breadcrumbsQueue:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {p2}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/cache/tape/ObjectQueue;

    invoke-virtual {p2}, Lio/sentry/cache/tape/ObjectQueue;->asList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 281
    :catch_0
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "Unable to read serialized breadcrumbs from QueueFile"

    invoke-interface {p1, p2, v0, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 285
    :cond_0
    const-string v0, ".scope-cache"

    invoke-static {p1, v0, p2, p3, v1}, Lio/sentry/cache/CacheUtils;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public resetCache()V
    .locals 4

    .line 295
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->breadcrumbsQueue:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/cache/tape/ObjectQueue;

    invoke-virtual {v0}, Lio/sentry/cache/tape/ObjectQueue;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 297
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to clear breadcrumbs from file queue"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    :goto_0
    const-string v0, "user.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 302
    const-string v0, "level.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 303
    const-string v0, "request.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 304
    const-string v0, "fingerprint.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 305
    const-string v0, "contexts.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 306
    const-string v0, "extras.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 307
    const-string v0, "tags.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 308
    const-string v0, "trace.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    .line 309
    const-string v0, "transaction.json"

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public setBreadcrumbs(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/sentry/Breadcrumb;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    new-instance p1, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda4;-><init>(Lio/sentry/cache/PersistingScopeObserver;)V

    invoke-direct {p0, p1}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setContexts(Lio/sentry/protocol/Contexts;)V
    .locals 1

    .line 219
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda1;-><init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/protocol/Contexts;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 159
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda2;-><init>(Lio/sentry/cache/PersistingScopeObserver;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFingerprint(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda12;-><init>(Lio/sentry/cache/PersistingScopeObserver;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 1

    .line 181
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda8;-><init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/SentryLevel;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 1

    .line 224
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda0;-><init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/protocol/SentryId;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRequest(Lio/sentry/protocol/Request;)V
    .locals 1

    .line 164
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda11;-><init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/protocol/Request;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda10;-><init>(Lio/sentry/cache/PersistingScopeObserver;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTrace(Lio/sentry/SpanContext;Lio/sentry/IScope;)V
    .locals 1

    .line 205
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda3;-><init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/SpanContext;Lio/sentry/IScope;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 1

    .line 193
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda5;-><init>(Lio/sentry/cache/PersistingScopeObserver;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 1

    .line 114
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda6;-><init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/protocol/User;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method
