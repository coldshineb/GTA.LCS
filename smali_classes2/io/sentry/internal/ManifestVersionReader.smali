.class public final Lio/sentry/internal/ManifestVersionReader;
.super Ljava/lang/Object;
.source "ManifestVersionReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lio/sentry/internal/ManifestVersionReader;

.field private static final staticLock:Lio/sentry/util/AutoClosableReentrantLock;


# instance fields
.field private volatile hasManifestBeenRead:Z

.field private lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final versionInfo:Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/internal/ManifestVersionReader;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lio/sentry/internal/ManifestVersionReader;->hasManifestBeenRead:Z

    .line 21
    new-instance v0, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    invoke-direct {v0}, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;-><init>()V

    iput-object v0, p0, Lio/sentry/internal/ManifestVersionReader;->versionInfo:Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    .line 22
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/internal/ManifestVersionReader;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    return-void
.end method

.method public static getInstance()Lio/sentry/internal/ManifestVersionReader;
    .locals 2

    .line 25
    sget-object v0, Lio/sentry/internal/ManifestVersionReader;->INSTANCE:Lio/sentry/internal/ManifestVersionReader;

    if-nez v0, :cond_2

    .line 26
    sget-object v0, Lio/sentry/internal/ManifestVersionReader;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 27
    :try_start_0
    sget-object v1, Lio/sentry/internal/ManifestVersionReader;->INSTANCE:Lio/sentry/internal/ManifestVersionReader;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lio/sentry/internal/ManifestVersionReader;

    invoke-direct {v1}, Lio/sentry/internal/ManifestVersionReader;-><init>()V

    sput-object v1, Lio/sentry/internal/ManifestVersionReader;->INSTANCE:Lio/sentry/internal/ManifestVersionReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_2

    .line 30
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 26
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

    .line 33
    :cond_2
    :goto_1
    sget-object v0, Lio/sentry/internal/ManifestVersionReader;->INSTANCE:Lio/sentry/internal/ManifestVersionReader;

    return-object v0
.end method


# virtual methods
.method public readManifestFiles()V
    .locals 11

    .line 47
    iget-boolean v0, p0, Lio/sentry/internal/ManifestVersionReader;->hasManifestBeenRead:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 51
    :try_start_0
    iget-object v1, p0, Lio/sentry/internal/ManifestVersionReader;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 52
    :try_start_1
    iget-boolean v2, p0, Lio/sentry/internal/ManifestVersionReader;->hasManifestBeenRead:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 107
    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 110
    :cond_1
    iput-boolean v0, p0, Lio/sentry/internal/ManifestVersionReader;->hasManifestBeenRead:Z

    return-void

    .line 56
    :cond_2
    :try_start_3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 57
    :catch_0
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_8

    .line 59
    :try_start_4
    new-instance v3, Ljava/util/jar/Manifest;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 60
    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 62
    const-string v4, "Sentry-Opentelemetry-SDK-Name"

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    const-string v5, "Implementation-Version"

    invoke-virtual {v3, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    const-string v6, "Sentry-SDK-Name"

    invoke-virtual {v3, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    const-string v7, "Sentry-SDK-Package-Name"

    invoke-virtual {v3, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 68
    iget-object v8, p0, Lio/sentry/internal/ManifestVersionReader;->versionInfo:Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    invoke-static {v8, v4}, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;->access$102(Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object v8, p0, Lio/sentry/internal/ManifestVersionReader;->versionInfo:Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    invoke-static {v8, v5}, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;->access$002(Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    const-string v8, "Sentry-Opentelemetry-Version-Name"

    .line 71
    invoke-virtual {v3, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 73
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v9

    const-string v10, "maven:io.opentelemetry:opentelemetry-sdk"

    .line 74
    invoke-virtual {v9, v10, v8}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v8

    const-string v9, "OpenTelemetry"

    invoke-virtual {v8, v9}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 77
    :cond_4
    const-string v8, "Sentry-Opentelemetry-Javaagent-Version-Name"

    .line 78
    invoke-virtual {v3, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 80
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v8

    const-string v9, "maven:io.opentelemetry.javaagent:opentelemetry-javaagent"

    .line 81
    invoke-virtual {v8, v9, v3}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v3

    const-string v8, "OpenTelemetry-Agent"

    invoke-virtual {v3, v8}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 86
    :cond_5
    const-string v3, "sentry.java.opentelemetry.agentless"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 87
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v3

    const-string v8, "OpenTelemetry-Agentless"

    .line 88
    invoke-virtual {v3, v8}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 90
    :cond_6
    const-string v3, "sentry.java.opentelemetry.agentless-spring"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 91
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v3

    const-string v4, "OpenTelemetry-Agentless-Spring"

    .line 92
    invoke-virtual {v3, v4}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    :cond_7
    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    if-eqz v7, :cond_3

    .line 96
    const-string v3, "sentry.java"

    .line 99
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v3

    invoke-virtual {v3, v7, v5}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_a

    .line 107
    :try_start_5
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_9

    .line 51
    :try_start_6
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_1
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    .line 110
    iput-boolean v0, p0, Lio/sentry/internal/ManifestVersionReader;->hasManifestBeenRead:Z

    .line 111
    throw v1

    .line 110
    :catch_1
    :cond_a
    :goto_2
    iput-boolean v0, p0, Lio/sentry/internal/ManifestVersionReader;->hasManifestBeenRead:Z

    :goto_3
    return-void
.end method

.method public readOpenTelemetryVersion()Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lio/sentry/internal/ManifestVersionReader;->readManifestFiles()V

    .line 40
    iget-object v0, p0, Lio/sentry/internal/ManifestVersionReader;->versionInfo:Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    invoke-static {v0}, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;->access$000(Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lio/sentry/internal/ManifestVersionReader;->versionInfo:Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    return-object v0
.end method
