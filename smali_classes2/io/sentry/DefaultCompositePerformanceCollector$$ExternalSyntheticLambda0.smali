.class public final synthetic Lio/sentry/DefaultCompositePerformanceCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/DefaultCompositePerformanceCollector;

.field public final synthetic f$1:Lio/sentry/ITransaction;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/DefaultCompositePerformanceCollector;Lio/sentry/ITransaction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/DefaultCompositePerformanceCollector$$ExternalSyntheticLambda0;->f$0:Lio/sentry/DefaultCompositePerformanceCollector;

    iput-object p2, p0, Lio/sentry/DefaultCompositePerformanceCollector$$ExternalSyntheticLambda0;->f$1:Lio/sentry/ITransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/DefaultCompositePerformanceCollector$$ExternalSyntheticLambda0;->f$0:Lio/sentry/DefaultCompositePerformanceCollector;

    iget-object v1, p0, Lio/sentry/DefaultCompositePerformanceCollector$$ExternalSyntheticLambda0;->f$1:Lio/sentry/ITransaction;

    invoke-virtual {v0, v1}, Lio/sentry/DefaultCompositePerformanceCollector;->lambda$start$0$io-sentry-DefaultCompositePerformanceCollector(Lio/sentry/ITransaction;)V

    return-void
.end method
