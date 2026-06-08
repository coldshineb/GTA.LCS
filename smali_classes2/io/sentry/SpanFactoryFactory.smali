.class public final Lio/sentry/SpanFactoryFactory;
.super Ljava/lang/Object;
.source "SpanFactoryFactory.java"


# static fields
.field private static final OTEL_SPAN_FACTORY:Ljava/lang/String; = "io.sentry.opentelemetry.OtelSpanFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lio/sentry/util/LoadClass;Lio/sentry/ILogger;)Lio/sentry/ISpanFactory;
    .locals 2

    .line 17
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const-string v0, "io.sentry.opentelemetry.OtelSpanFactory"

    invoke-virtual {p0, v0, p1}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p0, v0, p1}, Lio/sentry/util/LoadClass;->loadClass(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 22
    :try_start_0
    new-array v0, p1, [Ljava/lang/Class;

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 24
    instance-of p1, p0, Lio/sentry/ISpanFactory;

    if-eqz p1, :cond_0

    .line 25
    check-cast p0, Lio/sentry/ISpanFactory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 40
    :catch_0
    :cond_0
    new-instance p0, Lio/sentry/DefaultSpanFactory;

    invoke-direct {p0}, Lio/sentry/DefaultSpanFactory;-><init>()V

    return-object p0
.end method
