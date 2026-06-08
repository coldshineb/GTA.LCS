.class public final synthetic Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lio/sentry/android/replay/ScreenshotRecorderConfig;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JLio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    iput-object p2, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function2;

    iput-wide p3, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$2:J

    iput-object p5, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$3:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    iget-object v1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function2;

    iget-wide v2, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$2:J

    iget-object v4, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$$ExternalSyntheticLambda1;->f$3:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    invoke-static {v0, v1, v2, v3, v4}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->$r8$lambda$Mz8bEvnPSyzUn-DT7YuYx3z4aDk(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JLio/sentry/android/replay/ScreenshotRecorderConfig;)V

    return-void
.end method
