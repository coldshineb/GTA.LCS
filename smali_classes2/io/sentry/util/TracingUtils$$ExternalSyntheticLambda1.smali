.class public final synthetic Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/Scope$IWithPropagationContext;


# instance fields
.field public final synthetic f$0:Lio/sentry/IScope;

.field public final synthetic f$1:Lio/sentry/PropagationContext;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/IScope;Lio/sentry/PropagationContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda1;->f$0:Lio/sentry/IScope;

    iput-object p2, p0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda1;->f$1:Lio/sentry/PropagationContext;

    return-void
.end method


# virtual methods
.method public final accept(Lio/sentry/PropagationContext;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda1;->f$0:Lio/sentry/IScope;

    iget-object v1, p0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda1;->f$1:Lio/sentry/PropagationContext;

    invoke-static {v0, v1, p1}, Lio/sentry/util/TracingUtils;->lambda$setTrace$2(Lio/sentry/IScope;Lio/sentry/PropagationContext;Lio/sentry/PropagationContext;)V

    return-void
.end method
