.class public final synthetic Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/performance/AppStartMetrics;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/performance/AppStartMetrics;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda3;->f$0:Lio/sentry/android/core/performance/AppStartMetrics;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics$$ExternalSyntheticLambda3;->f$0:Lio/sentry/android/core/performance/AppStartMetrics;

    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->lambda$onActivityStarted$3$io-sentry-android-core-performance-AppStartMetrics()V

    return-void
.end method
