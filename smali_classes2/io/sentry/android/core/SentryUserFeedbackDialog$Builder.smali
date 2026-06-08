.class public Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;
.super Ljava/lang/Object;
.source "SentryUserFeedbackDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SentryUserFeedbackDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field associatedEventId:Lio/sentry/protocol/SentryId;

.field configuration:Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;

.field configurator:Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

.field final context:Landroid/content/Context;

.field final themeResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;-><init>(Landroid/content/Context;ILio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;)V
    .locals 0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->context:Landroid/content/Context;

    .line 330
    iput p2, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->themeResId:I

    .line 331
    iput-object p3, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->configuration:Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, p1, v0, p2}, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;-><init>(Landroid/content/Context;ILio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;)V

    return-void
.end method


# virtual methods
.method public associatedEventId(Lio/sentry/protocol/SentryId;)Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;
    .locals 0

    .line 353
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->associatedEventId:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public configurator(Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;
    .locals 0

    .line 342
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->configurator:Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    return-object p0
.end method

.method public create()Lio/sentry/android/core/SentryUserFeedbackDialog;
    .locals 6

    .line 364
    new-instance v0, Lio/sentry/android/core/SentryUserFeedbackDialog;

    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->context:Landroid/content/Context;

    iget v2, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->themeResId:I

    iget-object v3, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->associatedEventId:Lio/sentry/protocol/SentryId;

    iget-object v4, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->configuration:Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;

    iget-object v5, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->configurator:Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/SentryUserFeedbackDialog;-><init>(Landroid/content/Context;ILio/sentry/protocol/SentryId;Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V

    return-object v0
.end method
