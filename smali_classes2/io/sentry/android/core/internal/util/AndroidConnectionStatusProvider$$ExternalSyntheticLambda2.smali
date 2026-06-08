.class public final synthetic Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->lambda$close$1$io-sentry-android-core-internal-util-AndroidConnectionStatusProvider()V

    return-void
.end method
