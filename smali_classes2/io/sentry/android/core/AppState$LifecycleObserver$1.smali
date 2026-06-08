.class Lio/sentry/android/core/AppState$LifecycleObserver$1;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "AppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AppState$LifecycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList<",
        "Lio/sentry/android/core/AppState$AppStateListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/sentry/android/core/AppState$LifecycleObserver;


# direct methods
.method constructor <init>(Lio/sentry/android/core/AppState$LifecycleObserver;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lio/sentry/android/core/AppState$LifecycleObserver$1;->this$1:Lio/sentry/android/core/AppState$LifecycleObserver;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/sentry/android/core/AppState$AppStateListener;)Z
    .locals 3

    .line 180
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 183
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lio/sentry/android/core/AppState$LifecycleObserver$1;->this$1:Lio/sentry/android/core/AppState$LifecycleObserver;

    iget-object v2, v2, Lio/sentry/android/core/AppState$LifecycleObserver;->this$0:Lio/sentry/android/core/AppState;

    invoke-static {v2}, Lio/sentry/android/core/AppState;->access$000(Lio/sentry/android/core/AppState;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-interface {p1}, Lio/sentry/android/core/AppState$AppStateListener;->onForeground()V

    return v0

    .line 185
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lio/sentry/android/core/AppState$LifecycleObserver$1;->this$1:Lio/sentry/android/core/AppState$LifecycleObserver;

    iget-object v2, v2, Lio/sentry/android/core/AppState$LifecycleObserver;->this$0:Lio/sentry/android/core/AppState;

    invoke-static {v2}, Lio/sentry/android/core/AppState;->access$000(Lio/sentry/android/core/AppState;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-interface {p1}, Lio/sentry/android/core/AppState$AppStateListener;->onBackground()V

    :cond_1
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 177
    check-cast p1, Lio/sentry/android/core/AppState$AppStateListener;

    invoke-virtual {p0, p1}, Lio/sentry/android/core/AppState$LifecycleObserver$1;->add(Lio/sentry/android/core/AppState$AppStateListener;)Z

    move-result p1

    return p1
.end method
