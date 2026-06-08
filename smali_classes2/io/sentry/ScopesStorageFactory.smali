.class public final Lio/sentry/ScopesStorageFactory;
.super Ljava/lang/Object;
.source "ScopesStorageFactory.java"


# static fields
.field private static final OTEL_SCOPES_STORAGE:Ljava/lang/String; = "io.sentry.opentelemetry.OtelContextScopesStorage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lio/sentry/util/LoadClass;Lio/sentry/ILogger;)Lio/sentry/IScopesStorage;
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lio/sentry/ScopesStorageFactory;->createInternal(Lio/sentry/util/LoadClass;Lio/sentry/ILogger;)Lio/sentry/IScopesStorage;

    move-result-object p0

    .line 19
    invoke-interface {p0}, Lio/sentry/IScopesStorage;->init()V

    return-object p0
.end method

.method private static createInternal(Lio/sentry/util/LoadClass;Lio/sentry/ILogger;)Lio/sentry/IScopesStorage;
    .locals 2

    .line 25
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "io.sentry.opentelemetry.OtelContextScopesStorage"

    invoke-virtual {p0, v0, p1}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p0, v0, p1}, Lio/sentry/util/LoadClass;->loadClass(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 30
    :try_start_0
    new-array v0, p1, [Ljava/lang/Class;

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 32
    instance-of p1, p0, Lio/sentry/IScopesStorage;

    if-eqz p1, :cond_0

    .line 33
    check-cast p0, Lio/sentry/IScopesStorage;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 48
    :catch_0
    :cond_0
    new-instance p0, Lio/sentry/DefaultScopesStorage;

    invoke-direct {p0}, Lio/sentry/DefaultScopesStorage;-><init>()V

    return-object p0
.end method
