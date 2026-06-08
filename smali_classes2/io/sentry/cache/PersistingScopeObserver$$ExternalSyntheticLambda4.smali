.class public final synthetic Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/cache/PersistingScopeObserver;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/PersistingScopeObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda4;->f$0:Lio/sentry/cache/PersistingScopeObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda4;->f$0:Lio/sentry/cache/PersistingScopeObserver;

    invoke-virtual {v0}, Lio/sentry/cache/PersistingScopeObserver;->lambda$setBreadcrumbs$3$io-sentry-cache-PersistingScopeObserver()V

    return-void
.end method
