.class public final Lio/sentry/SentryIntegrationPackageStorage;
.super Ljava/lang/Object;
.source "SentryIntegrationPackageStorage.java"


# static fields
.field private static volatile INSTANCE:Lio/sentry/SentryIntegrationPackageStorage;

.field private static volatile mixedVersionsDetected:Ljava/lang/Boolean;

.field private static final mixedVersionsLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private static final staticLock:Lio/sentry/util/AutoClosableReentrantLock;


# instance fields
.field private final integrations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final packages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/sentry/protocol/SentryPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/SentryIntegrationPackageStorage;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    const/4 v0, 0x0

    .line 18
    sput-object v0, Lio/sentry/SentryIntegrationPackageStorage;->mixedVersionsDetected:Ljava/lang/Boolean;

    .line 19
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/SentryIntegrationPackageStorage;->mixedVersionsLock:Lio/sentry/util/AutoClosableReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryIntegrationPackageStorage;->integrations:Ljava/util/Set;

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryIntegrationPackageStorage;->packages:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lio/sentry/SentryIntegrationPackageStorage;
    .locals 2

    .line 23
    sget-object v0, Lio/sentry/SentryIntegrationPackageStorage;->INSTANCE:Lio/sentry/SentryIntegrationPackageStorage;

    if-nez v0, :cond_2

    .line 24
    sget-object v0, Lio/sentry/SentryIntegrationPackageStorage;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 25
    :try_start_0
    sget-object v1, Lio/sentry/SentryIntegrationPackageStorage;->INSTANCE:Lio/sentry/SentryIntegrationPackageStorage;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lio/sentry/SentryIntegrationPackageStorage;

    invoke-direct {v1}, Lio/sentry/SentryIntegrationPackageStorage;-><init>()V

    sput-object v1, Lio/sentry/SentryIntegrationPackageStorage;->INSTANCE:Lio/sentry/SentryIntegrationPackageStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_2

    .line 28
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 24
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

    .line 31
    :cond_2
    :goto_1
    sget-object v0, Lio/sentry/SentryIntegrationPackageStorage;->INSTANCE:Lio/sentry/SentryIntegrationPackageStorage;

    return-object v0
.end method


# virtual methods
.method public addIntegration(Ljava/lang/String;)V
    .locals 1

    .line 56
    const-string v0, "integration is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lio/sentry/SentryIntegrationPackageStorage;->integrations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    const-string v0, "name is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    const-string v0, "version is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    new-instance v0, Lio/sentry/protocol/SentryPackage;

    invoke-direct {v0, p1, p2}, Lio/sentry/protocol/SentryPackage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lio/sentry/SentryIntegrationPackageStorage;->packages:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object p1, Lio/sentry/SentryIntegrationPackageStorage;->mixedVersionsLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {p1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object p1

    const/4 p2, 0x0

    .line 71
    :try_start_0
    sput-object p2, Lio/sentry/SentryIntegrationPackageStorage;->mixedVersionsDetected:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 70
    :try_start_1
    invoke-interface {p1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public checkForMixedVersions(Lio/sentry/ILogger;)Z
    .locals 9

    .line 80
    const-string v0, "8.19.1"

    const-string v1, "^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

    sget-object v2, Lio/sentry/SentryIntegrationPackageStorage;->mixedVersionsDetected:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 84
    :cond_0
    sget-object v2, Lio/sentry/SentryIntegrationPackageStorage;->mixedVersionsLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2

    .line 88
    :try_start_0
    iget-object v3, p0, Lio/sentry/SentryIntegrationPackageStorage;->packages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/sentry/protocol/SentryPackage;

    .line 89
    invoke-virtual {v6}, Lio/sentry/protocol/SentryPackage;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "maven:io.sentry:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 90
    invoke-virtual {v6}, Lio/sentry/protocol/SentryPackage;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 91
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "The Sentry SDK has been configured with mixed versions. Expected %s to match core SDK version %s but was %s"

    .line 94
    invoke-virtual {v6}, Lio/sentry/protocol/SentryPackage;->getName()Ljava/lang/String;

    move-result-object v8

    .line 96
    invoke-virtual {v6}, Lio/sentry/protocol/SentryPackage;->getVersion()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v8, v0, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 91
    invoke-interface {p1, v5, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    .line 102
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lio/sentry/SentryIntegrationPackageStorage;->mixedVersionsDetected:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 109
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_4
    return v5

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_5

    .line 84
    :try_start_1
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
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

.method public clearStorage()V
    .locals 1

    .line 114
    iget-object v0, p0, Lio/sentry/SentryIntegrationPackageStorage;->integrations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 115
    iget-object v0, p0, Lio/sentry/SentryIntegrationPackageStorage;->packages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getIntegrations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lio/sentry/SentryIntegrationPackageStorage;->integrations:Ljava/util/Set;

    return-object v0
.end method

.method public getPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/sentry/protocol/SentryPackage;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/sentry/SentryIntegrationPackageStorage;->packages:Ljava/util/Set;

    return-object v0
.end method
