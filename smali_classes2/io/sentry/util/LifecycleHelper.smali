.class public final Lio/sentry/util/LifecycleHelper;
.super Ljava/lang/Object;
.source "LifecycleHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 10
    instance-of v0, p0, Lio/sentry/ISentryLifecycleToken;

    if-eqz v0, :cond_0

    .line 11
    check-cast p0, Lio/sentry/ISentryLifecycleToken;

    .line 12
    invoke-interface {p0}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_0
    return-void
.end method
