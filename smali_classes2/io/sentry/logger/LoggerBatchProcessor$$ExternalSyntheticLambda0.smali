.class public final synthetic Lio/sentry/logger/LoggerBatchProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/logger/LoggerBatchProcessor;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/logger/LoggerBatchProcessor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/logger/LoggerBatchProcessor$$ExternalSyntheticLambda0;->f$0:Lio/sentry/logger/LoggerBatchProcessor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor$$ExternalSyntheticLambda0;->f$0:Lio/sentry/logger/LoggerBatchProcessor;

    invoke-virtual {v0}, Lio/sentry/logger/LoggerBatchProcessor;->lambda$close$0$io-sentry-logger-LoggerBatchProcessor()V

    return-void
.end method
