.class public final Lio/sentry/logger/NoOpLoggerBatchProcessor;
.super Ljava/lang/Object;
.source "NoOpLoggerBatchProcessor.java"

# interfaces
.implements Lio/sentry/logger/ILoggerBatchProcessor;


# static fields
.field private static final instance:Lio/sentry/logger/NoOpLoggerBatchProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lio/sentry/logger/NoOpLoggerBatchProcessor;

    invoke-direct {v0}, Lio/sentry/logger/NoOpLoggerBatchProcessor;-><init>()V

    sput-object v0, Lio/sentry/logger/NoOpLoggerBatchProcessor;->instance:Lio/sentry/logger/NoOpLoggerBatchProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/logger/NoOpLoggerBatchProcessor;
    .locals 1

    .line 15
    sget-object v0, Lio/sentry/logger/NoOpLoggerBatchProcessor;->instance:Lio/sentry/logger/NoOpLoggerBatchProcessor;

    return-object v0
.end method


# virtual methods
.method public add(Lio/sentry/SentryLogEvent;)V
    .locals 0

    return-void
.end method

.method public close(Z)V
    .locals 0

    return-void
.end method

.method public flush(J)V
    .locals 0

    return-void
.end method
