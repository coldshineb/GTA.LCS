.class public final synthetic Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->lambda$static$0(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method
