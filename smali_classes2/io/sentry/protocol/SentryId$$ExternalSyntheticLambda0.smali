.class public final synthetic Lio/sentry/protocol/SentryId$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/LazyEvaluator$Evaluator;


# instance fields
.field public final synthetic f$0:Lio/sentry/protocol/SentryId;

.field public final synthetic f$1:Ljava/util/UUID;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/protocol/SentryId;Ljava/util/UUID;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/protocol/SentryId$$ExternalSyntheticLambda0;->f$0:Lio/sentry/protocol/SentryId;

    iput-object p2, p0, Lio/sentry/protocol/SentryId$$ExternalSyntheticLambda0;->f$1:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final evaluate()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/protocol/SentryId$$ExternalSyntheticLambda0;->f$0:Lio/sentry/protocol/SentryId;

    iget-object v1, p0, Lio/sentry/protocol/SentryId$$ExternalSyntheticLambda0;->f$1:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryId;->lambda$new$0$io-sentry-protocol-SentryId(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
