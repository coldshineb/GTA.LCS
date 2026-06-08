.class public final synthetic Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;JLandroid/content/res/Configuration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;

    iput-wide p2, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$2:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;

    iget-wide v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$2:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1, v2, v3}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->lambda$onConfigurationChanged$0$io-sentry-android-core-AppComponentsBreadcrumbsIntegration(JLandroid/content/res/Configuration;)V

    return-void
.end method
