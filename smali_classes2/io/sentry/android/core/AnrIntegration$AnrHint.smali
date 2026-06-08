.class final Lio/sentry/android/core/AnrIntegration$AnrHint;
.super Ljava/lang/Object;
.source "AnrIntegration.java"

# interfaces
.implements Lio/sentry/hints/AbnormalExit;
.implements Lio/sentry/hints/TransactionEnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnrHint"
.end annotation


# instance fields
.field private final isBackgroundAnr:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean p1, p0, Lio/sentry/android/core/AnrIntegration$AnrHint;->isBackgroundAnr:Z

    return-void
.end method


# virtual methods
.method public ignoreCurrentThread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mechanism()Ljava/lang/String;
    .locals 1

    .line 186
    iget-boolean v0, p0, Lio/sentry/android/core/AnrIntegration$AnrHint;->isBackgroundAnr:Z

    if-eqz v0, :cond_0

    const-string v0, "anr_background"

    return-object v0

    :cond_0
    const-string v0, "anr_foreground"

    return-object v0
.end method

.method public timestamp()Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
