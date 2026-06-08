.class public final synthetic Lio/sentry/SentryOptions$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/SentryFeedbackOptions$IDialogHandler;


# instance fields
.field public final synthetic f$0:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryOptions$$ExternalSyntheticLambda4;->f$0:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final showDialog(Lio/sentry/protocol/SentryId;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/SentryOptions$$ExternalSyntheticLambda4;->f$0:Lio/sentry/SentryOptions;

    invoke-virtual {v0, p1, p2}, Lio/sentry/SentryOptions;->lambda$new$4$io-sentry-SentryOptions(Lio/sentry/protocol/SentryId;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V

    return-void
.end method
