.class public final synthetic Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lio/sentry/ISerializer;

.field public final synthetic f$1:Lio/sentry/SentryReplayEvent;

.field public final synthetic f$2:Lio/sentry/ReplayRecording;

.field public final synthetic f$3:Ljava/io/File;

.field public final synthetic f$4:Lio/sentry/ILogger;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ISerializer;Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;Ljava/io/File;Lio/sentry/ILogger;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;->f$0:Lio/sentry/ISerializer;

    iput-object p2, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;->f$1:Lio/sentry/SentryReplayEvent;

    iput-object p3, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;->f$2:Lio/sentry/ReplayRecording;

    iput-object p4, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    iput-object p5, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;->f$4:Lio/sentry/ILogger;

    iput-boolean p6, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;->f$5:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;->f$0:Lio/sentry/ISerializer;

    iget-object v1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;->f$1:Lio/sentry/SentryReplayEvent;

    iget-object v2, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;->f$2:Lio/sentry/ReplayRecording;

    iget-object v3, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    iget-object v4, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;->f$4:Lio/sentry/ILogger;

    iget-boolean v5, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;->f$5:Z

    invoke-static/range {v0 .. v5}, Lio/sentry/SentryEnvelopeItem;->lambda$fromReplay$24(Lio/sentry/ISerializer;Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;Ljava/io/File;Lio/sentry/ILogger;Z)[B

    move-result-object v0

    return-object v0
.end method
