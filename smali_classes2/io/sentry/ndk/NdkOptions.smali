.class public final Lio/sentry/ndk/NdkOptions;
.super Ljava/lang/Object;
.source "NdkOptions.java"


# instance fields
.field private final dist:Ljava/lang/String;

.field private final dsn:Ljava/lang/String;

.field private final environment:Ljava/lang/String;

.field private final isDebug:Z

.field private final maxBreadcrumbs:I

.field private ndkHandlerStrategy:Lio/sentry/ndk/NdkHandlerStrategy;

.field private final outboxPath:Ljava/lang/String;

.field private final release:Ljava/lang/String;

.field private final sdkName:Ljava/lang/String;

.field private tracesSampleRate:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lio/sentry/ndk/NdkHandlerStrategy;->SENTRY_HANDLER_STRATEGY_DEFAULT:Lio/sentry/ndk/NdkHandlerStrategy;

    iput-object v0, p0, Lio/sentry/ndk/NdkOptions;->ndkHandlerStrategy:Lio/sentry/ndk/NdkHandlerStrategy;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lio/sentry/ndk/NdkOptions;->tracesSampleRate:F

    .line 28
    iput-object p1, p0, Lio/sentry/ndk/NdkOptions;->dsn:Ljava/lang/String;

    .line 29
    iput-boolean p2, p0, Lio/sentry/ndk/NdkOptions;->isDebug:Z

    .line 30
    iput-object p3, p0, Lio/sentry/ndk/NdkOptions;->outboxPath:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lio/sentry/ndk/NdkOptions;->release:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lio/sentry/ndk/NdkOptions;->environment:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lio/sentry/ndk/NdkOptions;->dist:Ljava/lang/String;

    .line 34
    iput p7, p0, Lio/sentry/ndk/NdkOptions;->maxBreadcrumbs:I

    .line 35
    iput-object p8, p0, Lio/sentry/ndk/NdkOptions;->sdkName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDist()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->dist:Ljava/lang/String;

    return-object v0
.end method

.method public getDsn()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->dsn:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxBreadcrumbs()I
    .locals 1

    .line 68
    iget v0, p0, Lio/sentry/ndk/NdkOptions;->maxBreadcrumbs:I

    return v0
.end method

.method public getNdkHandlerStrategy()I
    .locals 1

    .line 81
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->ndkHandlerStrategy:Lio/sentry/ndk/NdkHandlerStrategy;

    invoke-virtual {v0}, Lio/sentry/ndk/NdkHandlerStrategy;->getValue()I

    move-result v0

    return v0
.end method

.method public getOutboxPath()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->outboxPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/sentry/ndk/NdkOptions;->sdkName:Ljava/lang/String;

    return-object v0
.end method

.method public getTracesSampleRate()F
    .locals 1

    .line 89
    iget v0, p0, Lio/sentry/ndk/NdkOptions;->tracesSampleRate:F

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lio/sentry/ndk/NdkOptions;->isDebug:Z

    return v0
.end method

.method public setNdkHandlerStrategy(Lio/sentry/ndk/NdkHandlerStrategy;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lio/sentry/ndk/NdkOptions;->ndkHandlerStrategy:Lio/sentry/ndk/NdkHandlerStrategy;

    return-void
.end method

.method public setTracesSampleRate(F)V
    .locals 0

    .line 85
    iput p1, p0, Lio/sentry/ndk/NdkOptions;->tracesSampleRate:F

    return-void
.end method
