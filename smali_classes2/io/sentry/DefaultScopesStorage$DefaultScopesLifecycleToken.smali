.class final Lio/sentry/DefaultScopesStorage$DefaultScopesLifecycleToken;
.super Ljava/lang/Object;
.source "DefaultScopesStorage.java"

# interfaces
.implements Lio/sentry/ISentryLifecycleToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/DefaultScopesStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultScopesLifecycleToken"
.end annotation


# instance fields
.field private final oldValue:Lio/sentry/IScopes;


# direct methods
.method constructor <init>(Lio/sentry/IScopes;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/sentry/DefaultScopesStorage$DefaultScopesLifecycleToken;->oldValue:Lio/sentry/IScopes;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 42
    invoke-static {}, Lio/sentry/DefaultScopesStorage;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/DefaultScopesStorage$DefaultScopesLifecycleToken;->oldValue:Lio/sentry/IScopes;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
