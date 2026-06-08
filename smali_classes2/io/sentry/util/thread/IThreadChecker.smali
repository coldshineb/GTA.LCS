.class public interface abstract Lio/sentry/util/thread/IThreadChecker;
.super Ljava/lang/Object;
.source "IThreadChecker.java"


# virtual methods
.method public abstract currentThreadSystemId()J
.end method

.method public abstract getCurrentThreadName()Ljava/lang/String;
.end method

.method public abstract isMainThread()Z
.end method

.method public abstract isMainThread(J)Z
.end method

.method public abstract isMainThread(Lio/sentry/protocol/SentryThread;)Z
.end method

.method public abstract isMainThread(Ljava/lang/Thread;)Z
.end method
