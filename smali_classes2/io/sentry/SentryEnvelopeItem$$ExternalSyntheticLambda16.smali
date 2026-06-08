.class public final synthetic Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lio/sentry/ISerializer;

.field public final synthetic f$1:Lio/sentry/CheckIn;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ISerializer;Lio/sentry/CheckIn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda16;->f$0:Lio/sentry/ISerializer;

    iput-object p2, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda16;->f$1:Lio/sentry/CheckIn;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda16;->f$0:Lio/sentry/ISerializer;

    iget-object v1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda16;->f$1:Lio/sentry/CheckIn;

    invoke-static {v0, v1}, Lio/sentry/SentryEnvelopeItem;->lambda$fromCheckIn$9(Lio/sentry/ISerializer;Lio/sentry/CheckIn;)[B

    move-result-object v0

    return-object v0
.end method
