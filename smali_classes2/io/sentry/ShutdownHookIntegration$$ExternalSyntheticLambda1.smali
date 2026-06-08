.class public final synthetic Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/ShutdownHookIntegration;

.field public final synthetic f$1:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ShutdownHookIntegration;Lio/sentry/SentryOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda1;->f$0:Lio/sentry/ShutdownHookIntegration;

    iput-object p2, p0, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda1;->f$1:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda1;->f$0:Lio/sentry/ShutdownHookIntegration;

    iget-object v1, p0, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda1;->f$1:Lio/sentry/SentryOptions;

    invoke-virtual {v0, v1}, Lio/sentry/ShutdownHookIntegration;->lambda$register$1$io-sentry-ShutdownHookIntegration(Lio/sentry/SentryOptions;)V

    return-void
.end method
