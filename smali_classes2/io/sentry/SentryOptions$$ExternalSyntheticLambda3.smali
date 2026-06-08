.class public final synthetic Lio/sentry/SentryOptions$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/LazyEvaluator$Evaluator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-static {}, Lio/sentry/SentryOptions;->lambda$new$3()Lio/sentry/SentryDateProvider;

    move-result-object v0

    return-object v0
.end method
