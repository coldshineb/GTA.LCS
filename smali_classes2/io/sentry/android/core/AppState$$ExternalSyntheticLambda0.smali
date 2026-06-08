.class public final synthetic Lio/sentry/android/core/AppState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/AppState;

.field public final synthetic f$1:Lio/sentry/ILogger;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/AppState;Lio/sentry/ILogger;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AppState$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/AppState;

    iput-object p2, p0, Lio/sentry/android/core/AppState$$ExternalSyntheticLambda0;->f$1:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/AppState$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/AppState;

    iget-object v1, p0, Lio/sentry/android/core/AppState$$ExternalSyntheticLambda0;->f$1:Lio/sentry/ILogger;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/AppState;->lambda$ensureLifecycleObserver$0$io-sentry-android-core-AppState(Lio/sentry/ILogger;)V

    return-void
.end method
