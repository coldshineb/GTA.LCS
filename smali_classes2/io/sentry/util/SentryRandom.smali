.class public final Lio/sentry/util/SentryRandom;
.super Ljava/lang/Object;
.source "SentryRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/SentryRandom$SentryRandomThreadLocal;
    }
.end annotation


# static fields
.field private static final instance:Lio/sentry/util/SentryRandom$SentryRandomThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lio/sentry/util/SentryRandom$SentryRandomThreadLocal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/util/SentryRandom$SentryRandomThreadLocal;-><init>(Lio/sentry/util/SentryRandom$1;)V

    sput-object v0, Lio/sentry/util/SentryRandom;->instance:Lio/sentry/util/SentryRandom$SentryRandomThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static current()Lio/sentry/util/Random;
    .locals 1

    .line 27
    sget-object v0, Lio/sentry/util/SentryRandom;->instance:Lio/sentry/util/SentryRandom$SentryRandomThreadLocal;

    invoke-virtual {v0}, Lio/sentry/util/SentryRandom$SentryRandomThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/util/Random;

    return-object v0
.end method
