.class public final synthetic Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/ScreenshotRecorder;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/replay/ScreenshotRecorder;

    iput-object p2, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/replay/ScreenshotRecorder;

    iget-object v1, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lio/sentry/android/replay/ScreenshotRecorder;->$r8$lambda$WIGoHaFGVBOLKltCMx4eb-ct9pc(Lio/sentry/android/replay/ScreenshotRecorder;Landroid/view/View;I)V

    return-void
.end method
