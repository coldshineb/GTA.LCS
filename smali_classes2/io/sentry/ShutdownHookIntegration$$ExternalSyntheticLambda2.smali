.class public final synthetic Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/ShutdownHookIntegration;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ShutdownHookIntegration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda2;->f$0:Lio/sentry/ShutdownHookIntegration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda2;->f$0:Lio/sentry/ShutdownHookIntegration;

    invoke-virtual {v0}, Lio/sentry/ShutdownHookIntegration;->lambda$close$2$io-sentry-ShutdownHookIntegration()V

    return-void
.end method
