.class public final Lcom/rockstargames/gtalcs/GameGlThread;
.super Ljava/lang/Thread;
.source "GameGlThread.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0014\u0010\u0012\u001a\u00020\u00102\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0014J\u0006\u0010\u0015\u001a\u00020\u0010J\u001e\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001c\u001a\u00020\u0010J\u0006\u0010\u001d\u001a\u00020\u0010J\u000e\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\tJ\u0006\u0010 \u001a\u00020\u0010J\u0006\u0010!\u001a\u00020\u0010J\u0006\u0010\"\u001a\u00020\u0010R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/rockstargames/gtalcs/GameGlThread;",
        "Ljava/lang/Thread;",
        "viewWeak",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/rockstargames/gtalcs/GameView;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;)V",
        "eventQueue",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "Ljava/lang/Runnable;",
        "running",
        "",
        "lastFrameTime",
        "",
        "finishDrawingRunnable",
        "run",
        "",
        "guardedRun",
        "queueEvent",
        "event",
        "Lkotlin/Function0;",
        "surfaceCreated",
        "surfaceChanged",
        "surface",
        "Landroid/view/Surface;",
        "width",
        "",
        "height",
        "surfaceDestroyed",
        "surfaceRedrawNeeded",
        "surfaceRedrawNeededAsync",
        "drawingFinished",
        "requestExit",
        "onPause",
        "onResume",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private finishDrawingRunnable:Ljava/lang/Runnable;

.field private lastFrameTime:J

.field private running:Z

.field private final viewWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/rockstargames/gtalcs/GameView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8SjBi6rYv_XPbDaQXP3rNTqKHig()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/rockstargames/gtalcs/GameGlThread;->surfaceCreated$lambda$1()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$HeYw3yra1aKam7YSIObQ4f-DR7g(Lcom/rockstargames/gtalcs/GameGlThread;Ljava/lang/Runnable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rockstargames/gtalcs/GameGlThread;->surfaceRedrawNeededAsync$lambda$4(Lcom/rockstargames/gtalcs/GameGlThread;Ljava/lang/Runnable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jv-lwc3BT3UOINsQf-Vh1z4a6ew(Lcom/rockstargames/gtalcs/GameGlThread;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/rockstargames/gtalcs/GameGlThread;->requestExit$lambda$5(Lcom/rockstargames/gtalcs/GameGlThread;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OGiA_bpDps7W4WAlhqleYACKjfc()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/rockstargames/gtalcs/GameGlThread;->onPause$lambda$6()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$VuF6A_bE8M8ir_VwYtrMJFwIKz4(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/rockstargames/gtalcs/GameGlThread;->queueEvent$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gQI3QMIfgoGZRIkZKK9rdE-fzSU()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/rockstargames/gtalcs/GameGlThread;->surfaceDestroyed$lambda$3()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$pfUCa1VQB2ucJGjmf7yiDGzq6yg()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/rockstargames/gtalcs/GameGlThread;->onResume$lambda$7()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$zxDN_IxvMYSV6ANfhYcFxFPx5zs(Landroid/view/Surface;II)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GameGlThread;->surfaceChanged$lambda$2(Landroid/view/Surface;II)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/rockstargames/gtalcs/GameView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "viewWeak"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/gtalcs/GameGlThread;->viewWeak:Ljava/lang/ref/WeakReference;

    .line 10
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/gtalcs/GameGlThread;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 18
    const-string p1, "GameGLThread"

    invoke-virtual {p0, p1}, Lcom/rockstargames/gtalcs/GameGlThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final guardedRun()V
    .locals 6

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/rockstargames/gtalcs/GameGlThread;->running:Z

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/rockstargames/gtalcs/GameGlThread;->lastFrameTime:J

    .line 40
    :goto_0
    iget-boolean v1, p0, Lcom/rockstargames/gtalcs/GameGlThread;->running:Z

    if-eqz v1, :cond_3

    .line 44
    :goto_1
    iget-object v1, p0, Lcom/rockstargames/gtalcs/GameGlThread;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-nez v1, :cond_2

    .line 48
    iget-object v1, p0, Lcom/rockstargames/gtalcs/GameGlThread;->viewWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockstargames/gtalcs/GameView;

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 51
    iget-wide v4, p0, Lcom/rockstargames/gtalcs/GameGlThread;->lastFrameTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    .line 52
    iput-wide v2, p0, Lcom/rockstargames/gtalcs/GameGlThread;->lastFrameTime:J

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/rockstargames/gtalcs/GameView;->getHasFocus()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 56
    invoke-static {v4}, Lcom/rockstargames/gtalcs/GTAJNIlib;->viewOnDrawFrame(F)V

    .line 57
    sget-object v1, Lcom/rockstargames/gtalcs/GameView;->Companion:Lcom/rockstargames/gtalcs/GameView$Companion;

    invoke-virtual {v1}, Lcom/rockstargames/gtalcs/GameView$Companion;->getControllerCount()I

    move-result v1

    invoke-static {v1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setNoJoysticks(I)V

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/rockstargames/gtalcs/GameGlThread;->finishDrawingRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/rockstargames/gtalcs/GameGlThread;->finishDrawingRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 45
    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static final onPause$lambda$6()Lkotlin/Unit;
    .locals 1

    .line 103
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->viewOnPause()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onResume$lambda$7()Lkotlin/Unit;
    .locals 1

    .line 108
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->viewOnResume()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final queueEvent$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 69
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final requestExit$lambda$5(Lcom/rockstargames/gtalcs/GameGlThread;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/rockstargames/gtalcs/GameGlThread;->running:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final surfaceChanged$lambda$2(Landroid/view/Surface;II)Lkotlin/Unit;
    .locals 0

    .line 79
    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->viewOnSurfaceChanged(Landroid/view/Surface;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final surfaceCreated$lambda$1()Lkotlin/Unit;
    .locals 1

    .line 74
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->viewOnSurfaceCreated()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final surfaceDestroyed$lambda$3()Lkotlin/Unit;
    .locals 1

    .line 84
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->viewOnSurfaceDestroyed()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final surfaceRedrawNeededAsync$lambda$4(Lcom/rockstargames/gtalcs/GameGlThread;Ljava/lang/Runnable;)Lkotlin/Unit;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/rockstargames/gtalcs/GameGlThread;->finishDrawingRunnable:Ljava/lang/Runnable;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final onPause()V
    .locals 1

    .line 103
    new-instance v0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameGlThread;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 108
    new-instance v0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameGlThread;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final queueEvent(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameGlThread;->eventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final requestExit()V
    .locals 1

    .line 98
    new-instance v0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda6;-><init>(Lcom/rockstargames/gtalcs/GameGlThread;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameGlThread;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public run()V
    .locals 0

    .line 25
    :try_start_0
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/GameGlThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final surfaceChanged(Landroid/view/Surface;II)V
    .locals 1

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3}, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda4;-><init>(Landroid/view/Surface;II)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameGlThread;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final surfaceCreated()V
    .locals 1

    .line 74
    new-instance v0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameGlThread;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final surfaceDestroyed()V
    .locals 1

    .line 84
    new-instance v0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameGlThread;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final surfaceRedrawNeeded()V
    .locals 0

    return-void
.end method

.method public final surfaceRedrawNeededAsync(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "drawingFinished"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda3;-><init>(Lcom/rockstargames/gtalcs/GameGlThread;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameGlThread;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
