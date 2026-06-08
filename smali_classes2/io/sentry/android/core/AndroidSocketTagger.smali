.class public final Lio/sentry/android/core/AndroidSocketTagger;
.super Ljava/lang/Object;
.source "AndroidSocketTagger.java"

# interfaces
.implements Lio/sentry/ISocketTagger;


# static fields
.field private static final SENTRY_TAG:I = 0xf001

.field private static final instance:Lio/sentry/android/core/AndroidSocketTagger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lio/sentry/android/core/AndroidSocketTagger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidSocketTagger;-><init>()V

    sput-object v0, Lio/sentry/android/core/AndroidSocketTagger;->instance:Lio/sentry/android/core/AndroidSocketTagger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/AndroidSocketTagger;
    .locals 1

    .line 18
    sget-object v0, Lio/sentry/android/core/AndroidSocketTagger;->instance:Lio/sentry/android/core/AndroidSocketTagger;

    return-object v0
.end method


# virtual methods
.method public tagSockets()V
    .locals 1

    const v0, 0xf001

    .line 23
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void
.end method

.method public untagSockets()V
    .locals 0

    .line 28
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-void
.end method
