.class public final Lio/sentry/NoOpSpanFactory;
.super Ljava/lang/Object;
.source "NoOpSpanFactory.java"

# interfaces
.implements Lio/sentry/ISpanFactory;


# static fields
.field private static final instance:Lio/sentry/NoOpSpanFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lio/sentry/NoOpSpanFactory;

    invoke-direct {v0}, Lio/sentry/NoOpSpanFactory;-><init>()V

    sput-object v0, Lio/sentry/NoOpSpanFactory;->instance:Lio/sentry/NoOpSpanFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpSpanFactory;
    .locals 1

    .line 15
    sget-object v0, Lio/sentry/NoOpSpanFactory;->instance:Lio/sentry/NoOpSpanFactory;

    return-object v0
.end method


# virtual methods
.method public createSpan(Lio/sentry/IScopes;Lio/sentry/SpanOptions;Lio/sentry/SpanContext;Lio/sentry/ISpan;)Lio/sentry/ISpan;
    .locals 0

    .line 33
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1
.end method

.method public createTransaction(Lio/sentry/TransactionContext;Lio/sentry/IScopes;Lio/sentry/TransactionOptions;Lio/sentry/CompositePerformanceCollector;)Lio/sentry/ITransaction;
    .locals 0

    .line 24
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object p1

    return-object p1
.end method
