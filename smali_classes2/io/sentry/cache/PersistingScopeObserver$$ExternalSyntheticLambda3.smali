.class public final synthetic Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/cache/PersistingScopeObserver;

.field public final synthetic f$1:Lio/sentry/SpanContext;

.field public final synthetic f$2:Lio/sentry/IScope;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/SpanContext;Lio/sentry/IScope;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda3;->f$0:Lio/sentry/cache/PersistingScopeObserver;

    iput-object p2, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda3;->f$1:Lio/sentry/SpanContext;

    iput-object p3, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda3;->f$2:Lio/sentry/IScope;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda3;->f$0:Lio/sentry/cache/PersistingScopeObserver;

    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda3;->f$1:Lio/sentry/SpanContext;

    iget-object v2, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda3;->f$2:Lio/sentry/IScope;

    invoke-virtual {v0, v1, v2}, Lio/sentry/cache/PersistingScopeObserver;->lambda$setTrace$10$io-sentry-cache-PersistingScopeObserver(Lio/sentry/SpanContext;Lio/sentry/IScope;)V

    return-void
.end method
