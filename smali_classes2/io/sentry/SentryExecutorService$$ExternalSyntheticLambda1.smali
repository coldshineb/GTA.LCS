.class public final synthetic Lio/sentry/SentryExecutorService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/SentryExecutorService;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryExecutorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryExecutorService$$ExternalSyntheticLambda1;->f$0:Lio/sentry/SentryExecutorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/SentryExecutorService$$ExternalSyntheticLambda1;->f$0:Lio/sentry/SentryExecutorService;

    invoke-virtual {v0}, Lio/sentry/SentryExecutorService;->lambda$prewarm$1$io-sentry-SentryExecutorService()V

    return-void
.end method
