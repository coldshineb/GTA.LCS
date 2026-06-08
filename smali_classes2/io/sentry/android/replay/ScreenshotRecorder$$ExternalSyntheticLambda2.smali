.class public final synthetic Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/ScreenshotRecorder;

.field public final synthetic f$1:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/ScreenshotRecorder;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/replay/ScreenshotRecorder;

    iput-object p2, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;->f$1:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iput-object p3, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/replay/ScreenshotRecorder;

    iget-object v1, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;->f$1:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iget-object v2, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lio/sentry/android/replay/ScreenshotRecorder;->$r8$lambda$UZxsH9l_-oJsorAazf0XeeZyqQM(Lio/sentry/android/replay/ScreenshotRecorder;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Landroid/view/View;)V

    return-void
.end method
