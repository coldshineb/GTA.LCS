.class public final synthetic Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic f$0:Lio/sentry/transport/RateLimiter;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/transport/RateLimiter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda2;->f$0:Lio/sentry/transport/RateLimiter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/transport/RateLimiter$$ExternalSyntheticLambda2;->f$0:Lio/sentry/transport/RateLimiter;

    check-cast p1, Lio/sentry/hints/DiskFlushNotification;

    invoke-virtual {v0, p1}, Lio/sentry/transport/RateLimiter;->lambda$markHintWhenSendingFailed$2$io-sentry-transport-RateLimiter(Lio/sentry/hints/DiskFlushNotification;)V

    return-void
.end method
