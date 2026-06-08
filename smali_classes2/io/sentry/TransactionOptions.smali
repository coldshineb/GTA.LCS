.class public final Lio/sentry/TransactionOptions;
.super Lio/sentry/SpanOptions;
.source "TransactionOptions.java"


# static fields
.field public static final DEFAULT_DEADLINE_TIMEOUT_AUTO_TRANSACTION:J = 0x7530L


# instance fields
.field private customSamplingContext:Lio/sentry/CustomSamplingContext;

.field private deadlineTimeout:Ljava/lang/Long;

.field private idleTimeout:Ljava/lang/Long;

.field private isAppStartTransaction:Z

.field private spanFactory:Lio/sentry/ISpanFactory;

.field private transactionFinishedCallback:Lio/sentry/TransactionFinishedCallback;

.field private waitForChildren:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Lio/sentry/SpanOptions;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lio/sentry/TransactionOptions;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lio/sentry/TransactionOptions;->isAppStartTransaction:Z

    .line 26
    iput-boolean v1, p0, Lio/sentry/TransactionOptions;->waitForChildren:Z

    .line 36
    iput-object v0, p0, Lio/sentry/TransactionOptions;->idleTimeout:Ljava/lang/Long;

    .line 46
    iput-object v0, p0, Lio/sentry/TransactionOptions;->deadlineTimeout:Ljava/lang/Long;

    .line 52
    iput-object v0, p0, Lio/sentry/TransactionOptions;->transactionFinishedCallback:Lio/sentry/TransactionFinishedCallback;

    .line 55
    iput-object v0, p0, Lio/sentry/TransactionOptions;->spanFactory:Lio/sentry/ISpanFactory;

    return-void
.end method


# virtual methods
.method public getCustomSamplingContext()Lio/sentry/CustomSamplingContext;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/sentry/TransactionOptions;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    return-object v0
.end method

.method public getDeadlineTimeout()Ljava/lang/Long;
    .locals 1

    .line 139
    iget-object v0, p0, Lio/sentry/TransactionOptions;->deadlineTimeout:Ljava/lang/Long;

    return-object v0
.end method

.method public getIdleTimeout()Ljava/lang/Long;
    .locals 1

    .line 117
    iget-object v0, p0, Lio/sentry/TransactionOptions;->idleTimeout:Ljava/lang/Long;

    return-object v0
.end method

.method public getSpanFactory()Lio/sentry/ISpanFactory;
    .locals 1

    .line 182
    iget-object v0, p0, Lio/sentry/TransactionOptions;->spanFactory:Lio/sentry/ISpanFactory;

    return-object v0
.end method

.method public getTransactionFinishedCallback()Lio/sentry/TransactionFinishedCallback;
    .locals 1

    .line 157
    iget-object v0, p0, Lio/sentry/TransactionOptions;->transactionFinishedCallback:Lio/sentry/TransactionFinishedCallback;

    return-object v0
.end method

.method public isAppStartTransaction()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lio/sentry/TransactionOptions;->isAppStartTransaction:Z

    return v0
.end method

.method public isBindToScope()Z
    .locals 2

    .line 81
    sget-object v0, Lio/sentry/ScopeBindingMode;->ON:Lio/sentry/ScopeBindingMode;

    invoke-virtual {p0}, Lio/sentry/TransactionOptions;->getScopeBindingMode()Lio/sentry/ScopeBindingMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWaitForChildren()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lio/sentry/TransactionOptions;->waitForChildren:Z

    return v0
.end method

.method public setAppStartTransaction(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lio/sentry/TransactionOptions;->isAppStartTransaction:Z

    return-void
.end method

.method public setBindToScope(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 90
    sget-object p1, Lio/sentry/ScopeBindingMode;->ON:Lio/sentry/ScopeBindingMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/sentry/ScopeBindingMode;->OFF:Lio/sentry/ScopeBindingMode;

    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/TransactionOptions;->setScopeBindingMode(Lio/sentry/ScopeBindingMode;)V

    return-void
.end method

.method public setCustomSamplingContext(Lio/sentry/CustomSamplingContext;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lio/sentry/TransactionOptions;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    return-void
.end method

.method public setDeadlineTimeout(Ljava/lang/Long;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lio/sentry/TransactionOptions;->deadlineTimeout:Ljava/lang/Long;

    return-void
.end method

.method public setIdleTimeout(Ljava/lang/Long;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lio/sentry/TransactionOptions;->idleTimeout:Ljava/lang/Long;

    return-void
.end method

.method public setSpanFactory(Lio/sentry/ISpanFactory;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lio/sentry/TransactionOptions;->spanFactory:Lio/sentry/ISpanFactory;

    return-void
.end method

.method public setTransactionFinishedCallback(Lio/sentry/TransactionFinishedCallback;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lio/sentry/TransactionOptions;->transactionFinishedCallback:Lio/sentry/TransactionFinishedCallback;

    return-void
.end method

.method public setWaitForChildren(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lio/sentry/TransactionOptions;->waitForChildren:Z

    return-void
.end method
