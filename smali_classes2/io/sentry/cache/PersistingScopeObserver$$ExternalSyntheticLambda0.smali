.class public final synthetic Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/cache/PersistingScopeObserver;

.field public final synthetic f$1:Lio/sentry/protocol/SentryId;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/protocol/SentryId;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda0;->f$0:Lio/sentry/cache/PersistingScopeObserver;

    iput-object p2, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda0;->f$1:Lio/sentry/protocol/SentryId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda0;->f$0:Lio/sentry/cache/PersistingScopeObserver;

    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda0;->f$1:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->lambda$setReplayId$12$io-sentry-cache-PersistingScopeObserver(Lio/sentry/protocol/SentryId;)V

    return-void
.end method
