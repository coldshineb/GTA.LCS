.class public final synthetic Lio/sentry/Scopes$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/PropagationContext;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/PropagationContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/Scopes$$ExternalSyntheticLambda7;->f$0:Lio/sentry/PropagationContext;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/Scopes$$ExternalSyntheticLambda7;->f$0:Lio/sentry/PropagationContext;

    invoke-static {v0, p1}, Lio/sentry/Scopes;->lambda$continueTrace$7(Lio/sentry/PropagationContext;Lio/sentry/IScope;)V

    return-void
.end method
