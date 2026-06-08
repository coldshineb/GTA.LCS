.class public final synthetic Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/SentryUserFeedbackDialog;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;

.field public final synthetic f$4:Lio/sentry/SentryFeedbackOptions;

.field public final synthetic f$5:Landroid/widget/TextView;

.field public final synthetic f$6:Landroid/widget/TextView;

.field public final synthetic f$7:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SentryUserFeedbackDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lio/sentry/SentryFeedbackOptions;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SentryUserFeedbackDialog;

    iput-object p2, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$3:Landroid/widget/EditText;

    iput-object p5, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$4:Lio/sentry/SentryFeedbackOptions;

    iput-object p6, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$5:Landroid/widget/TextView;

    iput-object p7, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$6:Landroid/widget/TextView;

    iput-object p8, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$7:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SentryUserFeedbackDialog;

    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$3:Landroid/widget/EditText;

    iget-object v4, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$4:Lio/sentry/SentryFeedbackOptions;

    iget-object v5, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$5:Landroid/widget/TextView;

    iget-object v6, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$6:Landroid/widget/TextView;

    iget-object v7, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;->f$7:Landroid/widget/TextView;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lio/sentry/android/core/SentryUserFeedbackDialog;->lambda$onCreate$0$io-sentry-android-core-SentryUserFeedbackDialog(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lio/sentry/SentryFeedbackOptions;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
