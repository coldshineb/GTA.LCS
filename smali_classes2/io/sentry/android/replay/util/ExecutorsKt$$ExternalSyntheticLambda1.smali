.class public final synthetic Lio/sentry/android/replay/util/ExecutorsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Lio/sentry/SentryOptions;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lio/sentry/SentryOptions;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/util/ExecutorsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lio/sentry/android/replay/util/ExecutorsKt$$ExternalSyntheticLambda1;->f$1:Lio/sentry/SentryOptions;

    iput-object p3, p0, Lio/sentry/android/replay/util/ExecutorsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/util/ExecutorsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Lio/sentry/android/replay/util/ExecutorsKt$$ExternalSyntheticLambda1;->f$1:Lio/sentry/SentryOptions;

    iget-object v2, p0, Lio/sentry/android/replay/util/ExecutorsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/sentry/android/replay/util/ExecutorsKt;->$r8$lambda$vDu4aDIfWey-ssnK2M6wckmJiUQ(Ljava/lang/Runnable;Lio/sentry/SentryOptions;Ljava/lang/String;)V

    return-void
.end method
