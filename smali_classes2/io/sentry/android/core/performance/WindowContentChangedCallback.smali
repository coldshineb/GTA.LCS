.class public Lio/sentry/android/core/performance/WindowContentChangedCallback;
.super Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;
.source "WindowContentChangedCallback.java"


# instance fields
.field private final callback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;Ljava/lang/Runnable;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;-><init>(Landroid/view/Window$Callback;)V

    .line 14
    iput-object p2, p0, Lio/sentry/android/core/performance/WindowContentChangedCallback;->callback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    .line 19
    invoke-super {p0}, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->onContentChanged()V

    .line 20
    iget-object v0, p0, Lio/sentry/android/core/performance/WindowContentChangedCallback;->callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
