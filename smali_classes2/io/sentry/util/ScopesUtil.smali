.class public final Lio/sentry/util/ScopesUtil;
.super Ljava/lang/Object;
.source "ScopesUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printScopesChain(Lio/sentry/IScopes;)V
    .locals 3

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "=========================================="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "=============== v Scopes v ==============="

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Lio/sentry/util/ScopesUtil;->printScopesChainInternal(Lio/sentry/IScopes;)V

    .line 25
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "=============== ^ Scopes ^ ==============="

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static printScopesChainInternal(Lio/sentry/IScopes;)V
    .locals 5

    if-eqz p0, :cond_4

    .line 33
    instance-of v0, p0, Lio/sentry/Scopes;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Lio/sentry/Scopes;

    .line 39
    invoke-virtual {v0}, Lio/sentry/Scopes;->getGlobalScope()Lio/sentry/IScope;

    move-result-object v1

    .line 40
    invoke-virtual {v0}, Lio/sentry/Scopes;->getIsolationScope()Lio/sentry/IScope;

    move-result-object v2

    .line 41
    invoke-virtual {v0}, Lio/sentry/Scopes;->getScope()Lio/sentry/IScope;

    move-result-object v3

    .line 42
    invoke-virtual {v0}, Lio/sentry/Scopes;->getCreator()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 36
    const-string v1, "%-25s {g=%-25s, i=%-25s, c=%-25s} [%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lio/sentry/IScopes;->getParentScopes()Lio/sentry/IScopes;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/ScopesUtil;->printScopesChainInternal(Lio/sentry/IScopes;)V

    return-void

    .line 45
    :cond_0
    instance-of v0, p0, Lio/sentry/ScopesAdapter;

    if-nez v0, :cond_3

    instance-of v0, p0, Lio/sentry/HubAdapter;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    instance-of v0, p0, Lio/sentry/HubScopesWrapper;

    if-eqz v0, :cond_2

    .line 49
    check-cast p0, Lio/sentry/HubScopesWrapper;

    .line 50
    invoke-virtual {p0}, Lio/sentry/HubScopesWrapper;->getScopes()Lio/sentry/IScopes;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/ScopesUtil;->printScopesChainInternal(Lio/sentry/IScopes;)V

    return-void

    .line 52
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hit unhandled Scopes class"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 47
    :cond_3
    :goto_0
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/ScopesUtil;->printScopesChainInternal(Lio/sentry/IScopes;)V

    return-void

    .line 55
    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
