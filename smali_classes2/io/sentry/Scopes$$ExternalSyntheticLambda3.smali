.class public final synthetic Lio/sentry/Scopes$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/Scopes;

.field public final synthetic f$1:Lio/sentry/ISentryExecutorService;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/Scopes;Lio/sentry/ISentryExecutorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/Scopes$$ExternalSyntheticLambda3;->f$0:Lio/sentry/Scopes;

    iput-object p2, p0, Lio/sentry/Scopes$$ExternalSyntheticLambda3;->f$1:Lio/sentry/ISentryExecutorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/Scopes$$ExternalSyntheticLambda3;->f$0:Lio/sentry/Scopes;

    iget-object v1, p0, Lio/sentry/Scopes$$ExternalSyntheticLambda3;->f$1:Lio/sentry/ISentryExecutorService;

    invoke-virtual {v0, v1}, Lio/sentry/Scopes;->lambda$close$2$io-sentry-Scopes(Lio/sentry/ISentryExecutorService;)V

    return-void
.end method
