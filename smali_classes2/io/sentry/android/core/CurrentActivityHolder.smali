.class public Lio/sentry/android/core/CurrentActivityHolder;
.super Ljava/lang/Object;
.source "CurrentActivityHolder.java"


# static fields
.field private static final instance:Lio/sentry/android/core/CurrentActivityHolder;


# instance fields
.field private currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lio/sentry/android/core/CurrentActivityHolder;

    invoke-direct {v0}, Lio/sentry/android/core/CurrentActivityHolder;-><init>()V

    sput-object v0, Lio/sentry/android/core/CurrentActivityHolder;->instance:Lio/sentry/android/core/CurrentActivityHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/CurrentActivityHolder;
    .locals 1

    .line 19
    sget-object v0, Lio/sentry/android/core/CurrentActivityHolder;->instance:Lio/sentry/android/core/CurrentActivityHolder;

    return-object v0
.end method


# virtual methods
.method public clearActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lio/sentry/android/core/CurrentActivityHolder;->currentActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public clearActivity(Landroid/app/Activity;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lio/sentry/android/core/CurrentActivityHolder;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lio/sentry/android/core/CurrentActivityHolder;->currentActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/sentry/android/core/CurrentActivityHolder;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lio/sentry/android/core/CurrentActivityHolder;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/CurrentActivityHolder;->currentActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method
