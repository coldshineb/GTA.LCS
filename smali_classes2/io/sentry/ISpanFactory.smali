.class public interface abstract Lio/sentry/ISpanFactory;
.super Ljava/lang/Object;
.source "ISpanFactory.java"


# virtual methods
.method public abstract createSpan(Lio/sentry/IScopes;Lio/sentry/SpanOptions;Lio/sentry/SpanContext;Lio/sentry/ISpan;)Lio/sentry/ISpan;
.end method

.method public abstract createTransaction(Lio/sentry/TransactionContext;Lio/sentry/IScopes;Lio/sentry/TransactionOptions;Lio/sentry/CompositePerformanceCollector;)Lio/sentry/ITransaction;
.end method
