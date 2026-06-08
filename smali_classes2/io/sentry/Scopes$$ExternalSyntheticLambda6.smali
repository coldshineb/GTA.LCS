.class public final synthetic Lio/sentry/Scopes$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/sentry/Scopes$$ExternalSyntheticLambda6;->f$0:Z

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/sentry/Scopes$$ExternalSyntheticLambda6;->f$0:Z

    invoke-static {v0, p1}, Lio/sentry/Scopes;->lambda$close$5(ZLio/sentry/IScope;)V

    return-void
.end method
