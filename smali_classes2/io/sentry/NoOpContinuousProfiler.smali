.class public final Lio/sentry/NoOpContinuousProfiler;
.super Ljava/lang/Object;
.source "NoOpContinuousProfiler.java"

# interfaces
.implements Lio/sentry/IContinuousProfiler;


# static fields
.field private static final instance:Lio/sentry/NoOpContinuousProfiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lio/sentry/NoOpContinuousProfiler;

    invoke-direct {v0}, Lio/sentry/NoOpContinuousProfiler;-><init>()V

    sput-object v0, Lio/sentry/NoOpContinuousProfiler;->instance:Lio/sentry/NoOpContinuousProfiler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpContinuousProfiler;
    .locals 1

    .line 13
    sget-object v0, Lio/sentry/NoOpContinuousProfiler;->instance:Lio/sentry/NoOpContinuousProfiler;

    return-object v0
.end method


# virtual methods
.method public close(Z)V
    .locals 0

    return-void
.end method

.method public getProfilerId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 37
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reevaluateSampling()V
    .locals 0

    return-void
.end method

.method public startProfiler(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V
    .locals 0

    return-void
.end method

.method public stopProfiler(Lio/sentry/ProfileLifecycle;)V
    .locals 0

    return-void
.end method
