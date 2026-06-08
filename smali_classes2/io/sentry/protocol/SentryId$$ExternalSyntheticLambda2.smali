.class public final synthetic Lio/sentry/protocol/SentryId$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/LazyEvaluator$Evaluator;


# instance fields
.field public final synthetic f$0:Lio/sentry/protocol/SentryId;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/protocol/SentryId$$ExternalSyntheticLambda2;->f$0:Lio/sentry/protocol/SentryId;

    iput-object p2, p0, Lio/sentry/protocol/SentryId$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final evaluate()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/protocol/SentryId$$ExternalSyntheticLambda2;->f$0:Lio/sentry/protocol/SentryId;

    iget-object v1, p0, Lio/sentry/protocol/SentryId$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryId;->lambda$new$1$io-sentry-protocol-SentryId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
