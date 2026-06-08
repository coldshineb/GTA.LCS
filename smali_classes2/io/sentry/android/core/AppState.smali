.class public final Lio/sentry/android/core/AppState;
.super Ljava/lang/Object;
.source "AppState.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/AppState$LifecycleObserver;,
        Lio/sentry/android/core/AppState$AppStateListener;
    }
.end annotation


# static fields
.field private static instance:Lio/sentry/android/core/AppState;


# instance fields
.field private handler:Lio/sentry/android/core/MainLooperHandler;

.field private volatile inBackground:Ljava/lang/Boolean;

.field private volatile lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lio/sentry/android/core/AppState;

    invoke-direct {v0}, Lio/sentry/android/core/AppState;-><init>()V

    sput-object v0, Lio/sentry/android/core/AppState;->instance:Lio/sentry/android/core/AppState;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AppState;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 29
    new-instance v0, Lio/sentry/android/core/MainLooperHandler;

    invoke-direct {v0}, Lio/sentry/android/core/MainLooperHandler;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AppState;->handler:Lio/sentry/android/core/MainLooperHandler;

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lio/sentry/android/core/AppState;->inBackground:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lio/sentry/android/core/AppState;)Ljava/lang/Boolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lio/sentry/android/core/AppState;->inBackground:Ljava/lang/Boolean;

    return-object p0
.end method

.method private addObserverInternal(Lio/sentry/ILogger;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 132
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "AppState failed to get Lifecycle and could not install lifecycle observer."

    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private ensureLifecycleObserver(Lio/sentry/ILogger;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    :try_start_0
    const-string v0, "androidx.lifecycle.ProcessLifecycleOwner"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 101
    new-instance v0, Lio/sentry/android/core/AppState$LifecycleObserver;

    invoke-direct {v0, p0}, Lio/sentry/android/core/AppState$LifecycleObserver;-><init>(Lio/sentry/android/core/AppState;)V

    iput-object v0, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 103
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-direct {p0, p1}, Lio/sentry/android/core/AppState;->addObserverInternal(Lio/sentry/ILogger;)V

    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/AppState;->handler:Lio/sentry/android/core/MainLooperHandler;

    new-instance v1, Lio/sentry/android/core/AppState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/AppState$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/AppState;Lio/sentry/ILogger;)V

    invoke-virtual {v0, v1}, Lio/sentry/android/core/MainLooperHandler;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 116
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "AppState could not register lifecycle observer"

    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 111
    :catch_0
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "androidx.lifecycle is not available, some features might not be properly working,e.g. Session Tracking, Network and System Events breadcrumbs, etc."

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/AppState;
    .locals 1

    .line 34
    sget-object v0, Lio/sentry/android/core/AppState;->instance:Lio/sentry/android/core/AppState;

    return-object v0
.end method

.method private removeObserverInternal(Lio/sentry/android/core/AppState$LifecycleObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 165
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAppStateListener(Lio/sentry/android/core/AppState$AppStateListener;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lio/sentry/android/core/AppState;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 66
    :try_start_0
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/sentry/android/core/AppState;->ensureLifecycleObserver(Lio/sentry/ILogger;)V

    .line 68
    iget-object v1, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    iget-object v1, v1, Lio/sentry/android/core/AppState$LifecycleObserver;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 65
    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lio/sentry/android/core/AppState;->unregisterLifecycleObserver()V

    return-void
.end method

.method public getLifecycleObserver()Lio/sentry/android/core/AppState$LifecycleObserver;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    return-object v0
.end method

.method public isInBackground()Ljava/lang/Boolean;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/sentry/android/core/AppState;->inBackground:Ljava/lang/Boolean;

    return-object v0
.end method

.method synthetic lambda$ensureLifecycleObserver$0$io-sentry-android-core-AppState(Lio/sentry/ILogger;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lio/sentry/android/core/AppState;->addObserverInternal(Lio/sentry/ILogger;)V

    return-void
.end method

.method synthetic lambda$unregisterLifecycleObserver$1$io-sentry-android-core-AppState(Lio/sentry/android/core/AppState$LifecycleObserver;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lio/sentry/android/core/AppState;->removeObserverInternal(Lio/sentry/android/core/AppState$LifecycleObserver;)V

    return-void
.end method

.method public registerLifecycleObserver(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/AppState;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 89
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/AppState;->ensureLifecycleObserver(Lio/sentry/ILogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 90
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    .line 88
    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
.end method

.method public removeAppStateListener(Lio/sentry/android/core/AppState$AppStateListener;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lio/sentry/android/core/AppState;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    iget-object v1, v1, Lio/sentry/android/core/AppState$LifecycleObserver;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 79
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 75
    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
.end method

.method public resetInstance()V
    .locals 1

    .line 47
    new-instance v0, Lio/sentry/android/core/AppState;

    invoke-direct {v0}, Lio/sentry/android/core/AppState;-><init>()V

    sput-object v0, Lio/sentry/android/core/AppState;->instance:Lio/sentry/android/core/AppState;

    return-void
.end method

.method setHandler(Lio/sentry/android/core/MainLooperHandler;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lio/sentry/android/core/AppState;->handler:Lio/sentry/android/core/MainLooperHandler;

    return-void
.end method

.method setInBackground(Z)V
    .locals 0

    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/AppState;->inBackground:Ljava/lang/Boolean;

    return-void
.end method

.method public unregisterLifecycleObserver()V
    .locals 3

    .line 141
    iget-object v0, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/AppState;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 148
    iget-object v2, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;

    iget-object v2, v2, Lio/sentry/android/core/AppState$LifecycleObserver;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 149
    iput-object v2, p0, Lio/sentry/android/core/AppState;->lifecycleObserver:Lio/sentry/android/core/AppState$LifecycleObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 150
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 152
    :cond_1
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    invoke-direct {p0, v1}, Lio/sentry/android/core/AppState;->removeObserverInternal(Lio/sentry/android/core/AppState$LifecycleObserver;)V

    return-void

    .line 159
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/AppState;->handler:Lio/sentry/android/core/MainLooperHandler;

    new-instance v2, Lio/sentry/android/core/AppState$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lio/sentry/android/core/AppState$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/AppState;Lio/sentry/android/core/AppState$LifecycleObserver;)V

    invoke-virtual {v0, v2}, Lio/sentry/android/core/MainLooperHandler;->post(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 146
    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method
