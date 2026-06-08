.class public final Lio/sentry/ndk/NativeModuleListLoader;
.super Ljava/lang/Object;
.source "NativeModuleListLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeClearModuleList()V
.end method

.method public static native nativeLoadModuleList()[Lio/sentry/ndk/DebugImage;
.end method


# virtual methods
.method public clearModuleList()V
    .locals 0

    .line 16
    invoke-static {}, Lio/sentry/ndk/NativeModuleListLoader;->nativeClearModuleList()V

    return-void
.end method

.method public loadModuleList()[Lio/sentry/ndk/DebugImage;
    .locals 1

    .line 12
    invoke-static {}, Lio/sentry/ndk/NativeModuleListLoader;->nativeLoadModuleList()[Lio/sentry/ndk/DebugImage;

    move-result-object v0

    return-object v0
.end method
