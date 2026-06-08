.class public final synthetic Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic f$0:Lio/sentry/transport/AsyncHttpTransport;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/transport/AsyncHttpTransport;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda3;->f$0:Lio/sentry/transport/AsyncHttpTransport;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda3;->f$0:Lio/sentry/transport/AsyncHttpTransport;

    check-cast p1, Lio/sentry/hints/Enqueable;

    invoke-virtual {v0, p1}, Lio/sentry/transport/AsyncHttpTransport;->lambda$send$0$io-sentry-transport-AsyncHttpTransport(Lio/sentry/hints/Enqueable;)V

    return-void
.end method
