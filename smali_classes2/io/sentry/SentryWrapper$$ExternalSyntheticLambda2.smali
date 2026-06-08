.class public final synthetic Lio/sentry/SentryWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/IScopes;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/IScopes;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda2;->f$0:Lio/sentry/IScopes;

    iput-object p2, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda2;->f$0:Lio/sentry/IScopes;

    iget-object v1, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lio/sentry/SentryWrapper;->lambda$wrapRunnable$2(Lio/sentry/IScopes;Ljava/lang/Runnable;)V

    return-void
.end method
