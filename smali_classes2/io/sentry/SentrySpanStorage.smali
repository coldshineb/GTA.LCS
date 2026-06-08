.class public final Lio/sentry/SentrySpanStorage;
.super Ljava/lang/Object;
.source "SentrySpanStorage.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile INSTANCE:Lio/sentry/SentrySpanStorage;

.field private static final staticLock:Lio/sentry/util/AutoClosableReentrantLock;


# instance fields
.field private final spans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/SentrySpanStorage;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentrySpanStorage;->spans:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lio/sentry/SentrySpanStorage;
    .locals 2

    .line 24
    sget-object v0, Lio/sentry/SentrySpanStorage;->INSTANCE:Lio/sentry/SentrySpanStorage;

    if-nez v0, :cond_2

    .line 25
    sget-object v0, Lio/sentry/SentrySpanStorage;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 26
    :try_start_0
    sget-object v1, Lio/sentry/SentrySpanStorage;->INSTANCE:Lio/sentry/SentrySpanStorage;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lio/sentry/SentrySpanStorage;

    invoke-direct {v1}, Lio/sentry/SentrySpanStorage;-><init>()V

    sput-object v1, Lio/sentry/SentrySpanStorage;->INSTANCE:Lio/sentry/SentrySpanStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_2

    .line 29
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 25
    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 32
    :cond_2
    :goto_1
    sget-object v0, Lio/sentry/SentrySpanStorage;->INSTANCE:Lio/sentry/SentrySpanStorage;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/sentry/SentrySpanStorage;->spans:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    return-object p1
.end method

.method public removeAndGet(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/sentry/SentrySpanStorage;->spans:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    return-object p1
.end method

.method public store(Ljava/lang/String;Lio/sentry/ISpan;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lio/sentry/SentrySpanStorage;->spans:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
