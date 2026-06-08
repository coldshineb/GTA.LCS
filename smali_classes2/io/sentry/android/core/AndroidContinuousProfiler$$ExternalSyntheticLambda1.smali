.class public final synthetic Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/AndroidContinuousProfiler;

.field public final synthetic f$1:Lio/sentry/SentryOptions;

.field public final synthetic f$2:Lio/sentry/IScopes;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/AndroidContinuousProfiler;Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/AndroidContinuousProfiler;

    iput-object p2, p0, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda1;->f$1:Lio/sentry/SentryOptions;

    iput-object p3, p0, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda1;->f$2:Lio/sentry/IScopes;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/AndroidContinuousProfiler;

    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda1;->f$1:Lio/sentry/SentryOptions;

    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda1;->f$2:Lio/sentry/IScopes;

    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/AndroidContinuousProfiler;->lambda$sendChunks$1$io-sentry-android-core-AndroidContinuousProfiler(Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V

    return-void
.end method
