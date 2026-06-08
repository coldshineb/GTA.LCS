.class public final Lio/sentry/ndk/SentryNdk;
.super Ljava/lang/Object;
.source "SentryNdk.java"


# static fields
.field private static volatile nativeLibrariesLoaded:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 0

    .line 29
    invoke-static {}, Lio/sentry/ndk/SentryNdk;->loadNativeLibraries()V

    .line 30
    invoke-static {}, Lio/sentry/ndk/SentryNdk;->shutdown()V

    return-void
.end method

.method public static init(Lio/sentry/ndk/NdkOptions;)V
    .locals 0

    .line 23
    invoke-static {}, Lio/sentry/ndk/SentryNdk;->loadNativeLibraries()V

    .line 24
    invoke-static {p0}, Lio/sentry/ndk/SentryNdk;->initSentryNative(Lio/sentry/ndk/NdkOptions;)V

    return-void
.end method

.method private static native initSentryNative(Lio/sentry/ndk/NdkOptions;)V
.end method

.method public static declared-synchronized loadNativeLibraries()V
    .locals 2

    const-class v0, Lio/sentry/ndk/SentryNdk;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-boolean v1, Lio/sentry/ndk/SentryNdk;->nativeLibrariesLoaded:Z

    if-nez v1, :cond_0

    .line 44
    const-string v1, "log"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    const-string v1, "sentry"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    const-string v1, "sentry-android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 47
    sput-boolean v1, Lio/sentry/ndk/SentryNdk;->nativeLibrariesLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static native shutdown()V
.end method
