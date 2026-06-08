.class public final Lio/sentry/util/thread/NoOpThreadChecker;
.super Ljava/lang/Object;
.source "NoOpThreadChecker.java"

# interfaces
.implements Lio/sentry/util/thread/IThreadChecker;


# static fields
.field private static final instance:Lio/sentry/util/thread/NoOpThreadChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lio/sentry/util/thread/NoOpThreadChecker;

    invoke-direct {v0}, Lio/sentry/util/thread/NoOpThreadChecker;-><init>()V

    sput-object v0, Lio/sentry/util/thread/NoOpThreadChecker;->instance:Lio/sentry/util/thread/NoOpThreadChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/util/thread/NoOpThreadChecker;
    .locals 1

    .line 13
    sget-object v0, Lio/sentry/util/thread/NoOpThreadChecker;->instance:Lio/sentry/util/thread/NoOpThreadChecker;

    return-object v0
.end method


# virtual methods
.method public currentThreadSystemId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentThreadName()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, ""

    return-object v0
.end method

.method public isMainThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMainThread(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMainThread(Lio/sentry/protocol/SentryThread;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMainThread(Ljava/lang/Thread;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
