.class public final Lio/sentry/android/core/AppState$LifecycleObserver;
.super Ljava/lang/Object;
.source "AppState.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LifecycleObserver"
.end annotation


# instance fields
.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/android/core/AppState$AppStateListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/sentry/android/core/AppState;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/AppState;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->this$0:Lio/sentry/android/core/AppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance p1, Lio/sentry/android/core/AppState$LifecycleObserver$1;

    invoke-direct {p1, p0}, Lio/sentry/android/core/AppState$LifecycleObserver$1;-><init>(Lio/sentry/android/core/AppState$LifecycleObserver;)V

    iput-object p1, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/android/core/AppState$AppStateListener;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->this$0:Lio/sentry/android/core/AppState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/sentry/android/core/AppState;->setInBackground(Z)V

    .line 201
    iget-object p1, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/AppState$AppStateListener;

    .line 202
    invoke-interface {v0}, Lio/sentry/android/core/AppState$AppStateListener;->onForeground()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 208
    iget-object p1, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->this$0:Lio/sentry/android/core/AppState;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/sentry/android/core/AppState;->setInBackground(Z)V

    .line 209
    iget-object p1, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/AppState$AppStateListener;

    .line 210
    invoke-interface {v0}, Lio/sentry/android/core/AppState$AppStateListener;->onBackground()V

    goto :goto_0

    :cond_0
    return-void
.end method
