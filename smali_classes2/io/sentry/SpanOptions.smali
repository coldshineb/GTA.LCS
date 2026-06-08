.class public Lio/sentry/SpanOptions;
.super Ljava/lang/Object;
.source "SpanOptions.java"


# instance fields
.field private isIdle:Z

.field protected origin:Ljava/lang/String;

.field private scopeBindingMode:Lio/sentry/ScopeBindingMode;

.field private startTimestamp:Lio/sentry/SentryDate;

.field private trimEnd:Z

.field private trimStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lio/sentry/SpanOptions;->startTimestamp:Lio/sentry/SentryDate;

    .line 15
    sget-object v0, Lio/sentry/ScopeBindingMode;->AUTO:Lio/sentry/ScopeBindingMode;

    iput-object v0, p0, Lio/sentry/SpanOptions;->scopeBindingMode:Lio/sentry/ScopeBindingMode;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lio/sentry/SpanOptions;->trimStart:Z

    .line 48
    iput-boolean v0, p0, Lio/sentry/SpanOptions;->trimEnd:Z

    .line 54
    iput-boolean v0, p0, Lio/sentry/SpanOptions;->isIdle:Z

    .line 56
    const-string v0, "manual"

    iput-object v0, p0, Lio/sentry/SpanOptions;->origin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lio/sentry/SpanOptions;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getScopeBindingMode()Lio/sentry/ScopeBindingMode;
    .locals 1

    .line 91
    iget-object v0, p0, Lio/sentry/SpanOptions;->scopeBindingMode:Lio/sentry/ScopeBindingMode;

    return-object v0
.end method

.method public getStartTimestamp()Lio/sentry/SentryDate;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/sentry/SpanOptions;->startTimestamp:Lio/sentry/SentryDate;

    return-object v0
.end method

.method public isIdle()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lio/sentry/SpanOptions;->isIdle:Z

    return v0
.end method

.method public isTrimEnd()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lio/sentry/SpanOptions;->trimEnd:Z

    return v0
.end method

.method public isTrimStart()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lio/sentry/SpanOptions;->trimStart:Z

    return v0
.end method

.method public setIdle(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lio/sentry/SpanOptions;->isIdle:Z

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lio/sentry/SpanOptions;->origin:Ljava/lang/String;

    return-void
.end method

.method public setScopeBindingMode(Lio/sentry/ScopeBindingMode;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lio/sentry/SpanOptions;->scopeBindingMode:Lio/sentry/ScopeBindingMode;

    return-void
.end method

.method public setStartTimestamp(Lio/sentry/SentryDate;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/SpanOptions;->startTimestamp:Lio/sentry/SentryDate;

    return-void
.end method

.method public setTrimEnd(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lio/sentry/SpanOptions;->trimEnd:Z

    return-void
.end method

.method public setTrimStart(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lio/sentry/SpanOptions;->trimStart:Z

    return-void
.end method
