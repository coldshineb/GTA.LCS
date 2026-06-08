.class public final synthetic Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/SentryUserFeedbackDialog;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SentryUserFeedbackDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/SentryUserFeedbackDialog;

    iput-object p2, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/SentryUserFeedbackDialog;

    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->lambda$setOnDismissListener$2$io-sentry-android-core-SentryUserFeedbackDialog(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method
