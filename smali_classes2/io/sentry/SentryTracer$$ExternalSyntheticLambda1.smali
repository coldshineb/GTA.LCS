.class public final synthetic Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/SpanFinishedCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/SentryTracer;

.field public final synthetic f$1:Lio/sentry/SpanFinishedCallback;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryTracer;Lio/sentry/SpanFinishedCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;->f$0:Lio/sentry/SentryTracer;

    iput-object p2, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;->f$1:Lio/sentry/SpanFinishedCallback;

    iput-object p3, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final execute(Lio/sentry/Span;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;->f$0:Lio/sentry/SentryTracer;

    iget-object v1, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;->f$1:Lio/sentry/SpanFinishedCallback;

    iget-object v2, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, v2, p1}, Lio/sentry/SentryTracer;->lambda$finish$0$io-sentry-SentryTracer(Lio/sentry/SpanFinishedCallback;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/Span;)V

    return-void
.end method
