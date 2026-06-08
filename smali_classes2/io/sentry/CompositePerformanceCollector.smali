.class public interface abstract Lio/sentry/CompositePerformanceCollector;
.super Ljava/lang/Object;
.source "CompositePerformanceCollector.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract onSpanFinished(Lio/sentry/ISpan;)V
.end method

.method public abstract onSpanStarted(Lio/sentry/ISpan;)V
.end method

.method public abstract start(Lio/sentry/ITransaction;)V
.end method

.method public abstract start(Ljava/lang/String;)V
.end method

.method public abstract stop(Lio/sentry/ITransaction;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract stop(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;"
        }
    .end annotation
.end method
