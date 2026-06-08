.class public final Lcom/rockstargames/gtalcs/GameView;
.super Landroid/view/SurfaceView;
.source "GameView.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/gtalcs/GameView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 @2\u00020\u00012\u00020\u0002:\u0001@B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010\"\u001a\u00020#2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0%H\u0002J\u0010\u0010&\u001a\u00020#2\u0006\u0010\'\u001a\u00020(H\u0016J(\u0010)\u001a\u00020#2\u0006\u0010\'\u001a\u00020(2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020+H\u0016J\u0010\u0010.\u001a\u00020#2\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010/\u001a\u00020#2\u0006\u0010\'\u001a\u00020(H\u0016J\u0018\u00100\u001a\u00020#2\u0006\u0010\'\u001a\u00020(2\u0006\u00101\u001a\u000202H\u0016J\u0008\u00103\u001a\u00020#H\u0014J\u0008\u00104\u001a\u00020#H\u0014J\u0006\u00105\u001a\u00020#J\u0006\u00106\u001a\u00020#J\u0010\u00107\u001a\u00020\r2\u0006\u0010$\u001a\u000208H\u0017J\u001a\u00109\u001a\u00020\r2\u0006\u0010:\u001a\u00020+2\u0008\u0010$\u001a\u0004\u0018\u00010;H\u0016J\u001a\u0010<\u001a\u00020\r2\u0006\u0010:\u001a\u00020+2\u0008\u0010$\u001a\u0004\u0018\u00010;H\u0016J\u0008\u0010=\u001a\u00020#H\u0002J\u0012\u0010>\u001a\u00020\r2\u0008\u0010$\u001a\u0004\u0018\u000108H\u0016J\u0010\u0010?\u001a\u00020+2\u0006\u0010:\u001a\u00020+H\u0002R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R$\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010\"\u0004\u0008\u0018\u0010\u0012R$\u0010\u0019\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010\"\u0004\u0008\u001b\u0010\u0012R\u000e\u0010\u001c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lcom/rockstargames/gtalcs/GameView;",
        "Landroid/view/SurfaceView;",
        "Landroid/view/SurfaceHolder$Callback2;",
        "context",
        "Landroid/content/Context;",
        "attribs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "touches",
        "Landroid/util/SparseArray;",
        "Landroid/graphics/PointF;",
        "value",
        "",
        "hasFocus",
        "getHasFocus",
        "()Z",
        "setHasFocus",
        "(Z)V",
        "frameRateLock",
        "getFrameRateLock",
        "setFrameRateLock",
        "inUI",
        "getInUI",
        "setInUI",
        "detached",
        "getDetached",
        "setDetached",
        "dpadRightPressed",
        "dpadLeftPressed",
        "dpadUpPressed",
        "dpadDownPressed",
        "glThread",
        "Lcom/rockstargames/gtalcs/GameGlThread;",
        "queueEvent",
        "",
        "event",
        "Lkotlin/Function0;",
        "surfaceCreated",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "surfaceChanged",
        "format",
        "",
        "width",
        "height",
        "surfaceDestroyed",
        "surfaceRedrawNeeded",
        "surfaceRedrawNeededAsync",
        "drawingFinished",
        "Ljava/lang/Runnable;",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onPause",
        "onResume",
        "onTouchEvent",
        "Landroid/view/MotionEvent;",
        "onKeyDown",
        "keyCode",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "onBackPressed",
        "onGenericMotionEvent",
        "toJoypadButton",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/rockstargames/gtalcs/GameView$Companion;

.field private static final OSX360_A:I = 0x0

.field private static final OSX360_AXIS_L2:I = 0x4

.field private static final OSX360_AXIS_R2:I = 0x5

.field private static final OSX360_AXIS_X1:I = 0x0

.field private static final OSX360_AXIS_X2:I = 0x2

.field private static final OSX360_AXIS_Y1:I = 0x1

.field private static final OSX360_AXIS_Y2:I = 0x3

.field private static final OSX360_B:I = 0x1

.field private static final OSX360_BACK:I = 0x5

.field private static final OSX360_DPADDOWN:I = 0x9

.field private static final OSX360_DPADLEFT:I = 0xa

.field private static final OSX360_DPADRIGHT:I = 0xb

.field private static final OSX360_DPADUP:I = 0x8

.field private static final OSX360_L1:I = 0x6

.field private static final OSX360_L3:I = 0xc

.field private static final OSX360_R1:I = 0x7

.field private static final OSX360_R3:I = 0xd

.field private static final OSX360_START:I = 0x4

.field private static final OSX360_X:I = 0x2

.field private static final OSX360_Y:I = 0x3

.field private static final OSXP_BACK:I = 0xe

.field private static final OSXP_GP_MENU:I = 0xf

.field private static final OSXP_MENU:I = 0xc

.field private static final OSXP_SEARCH:I = 0xd

.field private static final TAG:Ljava/lang/String; = "GameView"


# instance fields
.field private detached:Z

.field private dpadDownPressed:Z

.field private dpadLeftPressed:Z

.field private dpadRightPressed:Z

.field private dpadUpPressed:Z

.field private frameRateLock:Z

.field private glThread:Lcom/rockstargames/gtalcs/GameGlThread;

.field private hasFocus:Z

.field private inUI:Z

.field private final touches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0MeanfakdjRAXncrzsVs2qZRKFI(IFF)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GameView;->onTouchEvent$lambda$1(IFF)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3VREKBERoJADY1aBDSzFLBYlj20(I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/rockstargames/gtalcs/GameView;->onKeyUp$lambda$5(I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GGcE5IeSAmdxNy1CyFoUmr7DKZA(IFFFFFLcom/rockstargames/gtalcs/GameView;FLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/rockstargames/gtalcs/GameView;->onGenericMotionEvent$lambda$7(IFFFFFLcom/rockstargames/gtalcs/GameView;FLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Y7Bv0hB1rMQ9ifOcefwDuTvqINQ(I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/rockstargames/gtalcs/GameView;->onKeyDown$lambda$4(I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dPxVqRkv_toJ5Q0hZtOW5ldLmQo(IFF)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GameView;->onTouchEvent$lambda$0(IFF)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hP65HpwXeDEKVL_kitIJfut8Wq8()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/rockstargames/gtalcs/GameView;->onBackPressed$lambda$6()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$mWMZWYy_UIIBrBJH19Ub_-wx-X8(IFF)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GameView;->onTouchEvent$lambda$3(IFF)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rYDZRA_sDjzwAFBAt18U_3_n4Rs(IFF)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GameView;->onTouchEvent$lambda$2(IFF)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rockstargames/gtalcs/GameView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rockstargames/gtalcs/GameView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rockstargames/gtalcs/GameView;->Companion:Lcom/rockstargames/gtalcs/GameView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attribs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/gtalcs/GameView;->touches:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/rockstargames/gtalcs/GameView;->hasFocus:Z

    .line 67
    iput-boolean p1, p0, Lcom/rockstargames/gtalcs/GameView;->frameRateLock:Z

    .line 74
    iput-boolean p1, p0, Lcom/rockstargames/gtalcs/GameView;->inUI:Z

    .line 97
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 98
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/rockstargames/gtalcs/GameView;->setFocusableInTouchMode(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameView;->requestFocus()Z

    .line 103
    new-instance p1, Lcom/rockstargames/gtalcs/GameGlThread;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/rockstargames/gtalcs/GameGlThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/rockstargames/gtalcs/GameView;->glThread:Lcom/rockstargames/gtalcs/GameGlThread;

    .line 104
    invoke-virtual {p1}, Lcom/rockstargames/gtalcs/GameGlThread;->start()V

    return-void
.end method

.method private final onBackPressed()V
    .locals 2

    .line 290
    const-string v0, "GameView"

    const-string v1, "[!!] onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v0, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0}, Lcom/rockstargames/gtalcs/GameView;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final onBackPressed$lambda$6()Lkotlin/Unit;
    .locals 1

    .line 291
    invoke-static {}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onBackButtonPressed()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onGenericMotionEvent$lambda$7(IFFFFFLcom/rockstargames/gtalcs/GameView;FLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)Lkotlin/Unit;
    .locals 5

    const/4 v0, 0x0

    .line 326
    invoke-static {p0, v0, p1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setJoyAxis(IIF)V

    const/4 p1, 0x1

    .line 327
    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setJoyAxis(IIF)V

    const/4 p2, 0x2

    .line 328
    invoke-static {p0, p2, p3}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setJoyAxis(IIF)V

    const/4 p2, 0x3

    .line 329
    invoke-static {p0, p2, p4}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setJoyAxis(IIF)V

    float-to-double p2, p5

    const-wide p4, 0x3fc999999999999aL    # 0.2

    cmpl-double v1, p2, p4

    const/16 v2, 0xb

    const-wide v3, -0x4036666666666666L    # -0.2

    if-lez v1, :cond_0

    .line 333
    invoke-static {p0, v2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonDown(II)V

    .line 334
    iput-boolean p1, p6, Lcom/rockstargames/gtalcs/GameView;->dpadRightPressed:Z

    goto :goto_1

    :cond_0
    cmpg-double p2, p2, v3

    const/16 p3, 0xa

    if-gez p2, :cond_1

    .line 338
    invoke-static {p0, p3}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonDown(II)V

    .line 339
    iput-boolean p1, p6, Lcom/rockstargames/gtalcs/GameView;->dpadLeftPressed:Z

    goto :goto_1

    .line 343
    :cond_1
    iget-boolean p2, p6, Lcom/rockstargames/gtalcs/GameView;->dpadLeftPressed:Z

    if-eqz p2, :cond_2

    .line 345
    invoke-static {p0, p3}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonUp(II)V

    goto :goto_0

    .line 347
    :cond_2
    iget-boolean p2, p6, Lcom/rockstargames/gtalcs/GameView;->dpadRightPressed:Z

    if-eqz p2, :cond_3

    .line 349
    invoke-static {p0, v2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonUp(II)V

    .line 352
    :cond_3
    :goto_0
    iput-boolean v0, p6, Lcom/rockstargames/gtalcs/GameView;->dpadLeftPressed:Z

    .line 353
    iput-boolean v0, p6, Lcom/rockstargames/gtalcs/GameView;->dpadRightPressed:Z

    :goto_1
    float-to-double p2, p7

    cmpg-double p7, p2, v3

    const/16 v1, 0x8

    if-gez p7, :cond_4

    .line 358
    invoke-static {p0, v1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonDown(II)V

    .line 359
    iput-boolean p1, p6, Lcom/rockstargames/gtalcs/GameView;->dpadUpPressed:Z

    goto :goto_3

    :cond_4
    cmpl-double p2, p2, p4

    const/16 p3, 0x9

    if-lez p2, :cond_5

    .line 363
    invoke-static {p0, p3}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonDown(II)V

    .line 364
    iput-boolean p1, p6, Lcom/rockstargames/gtalcs/GameView;->dpadDownPressed:Z

    goto :goto_3

    .line 368
    :cond_5
    iget-boolean p1, p6, Lcom/rockstargames/gtalcs/GameView;->dpadUpPressed:Z

    if-eqz p1, :cond_6

    .line 370
    invoke-static {p0, v1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonUp(II)V

    goto :goto_2

    .line 372
    :cond_6
    iget-boolean p1, p6, Lcom/rockstargames/gtalcs/GameView;->dpadDownPressed:Z

    if-eqz p1, :cond_7

    .line 374
    invoke-static {p0, p3}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonUp(II)V

    .line 377
    :cond_7
    :goto_2
    iput-boolean v0, p6, Lcom/rockstargames/gtalcs/GameView;->dpadUpPressed:Z

    .line 378
    iput-boolean v0, p6, Lcom/rockstargames/gtalcs/GameView;->dpadDownPressed:Z

    :goto_3
    const/4 p1, 0x5

    .line 381
    iget p2, p8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setJoyAxis(IIF)V

    const/4 p1, 0x4

    .line 382
    iget p2, p9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setJoyAxis(IIF)V

    .line 383
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onKeyDown$lambda$4(I)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-static {v0, p0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonDown(II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onKeyUp$lambda$5(I)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-static {v0, p0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonUp(II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onTouchEvent$lambda$0(IFF)Lkotlin/Unit;
    .locals 0

    .line 196
    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onTouchStart(IFF)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onTouchEvent$lambda$1(IFF)Lkotlin/Unit;
    .locals 0

    .line 211
    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onTouchMove(IFF)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onTouchEvent$lambda$2(IFF)Lkotlin/Unit;
    .locals 0

    .line 227
    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onTouchEnd(IFF)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onTouchEvent$lambda$3(IFF)Lkotlin/Unit;
    .locals 0

    .line 241
    invoke-static {p0, p1, p2}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onTouchEnd(IFF)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final queueEvent(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameView;->glThread:Lcom/rockstargames/gtalcs/GameGlThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/GameGlThread;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method private final toJoypadButton(I)I
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    const/16 v1, 0x52

    if-eq p1, v1, :cond_7

    const/16 v1, 0x6e

    if-eq p1, v1, :cond_6

    const/16 v1, 0x60

    if-eq p1, v1, :cond_5

    const/16 v1, 0x61

    if-eq p1, v1, :cond_4

    const/16 v1, 0x63

    if-eq p1, v1, :cond_3

    const/16 v1, 0x64

    if-eq p1, v1, :cond_2

    const/16 v1, 0x66

    if-eq p1, v1, :cond_1

    const/16 v1, 0x67

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, -0x1

    return p1

    :pswitch_0
    return v0

    :pswitch_1
    const/16 p1, 0xd

    return p1

    :pswitch_2
    const/16 p1, 0xc

    return p1

    :pswitch_3
    const/16 p1, 0xb

    return p1

    :pswitch_4
    const/16 p1, 0xa

    return p1

    :pswitch_5
    const/16 p1, 0x9

    return p1

    :pswitch_6
    const/16 p1, 0x8

    return p1

    :cond_0
    const/4 p1, 0x7

    return p1

    :cond_1
    const/4 p1, 0x6

    return p1

    :cond_2
    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 p1, 0x2

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1

    :cond_6
    return v0

    :cond_7
    const/16 p1, 0xf

    return p1

    :cond_8
    const/16 p1, 0xe

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getDetached()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/GameView;->detached:Z

    return v0
.end method

.method public final getFrameRateLock()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/GameView;->frameRateLock:Z

    return v0
.end method

.method public final getHasFocus()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/GameView;->hasFocus:Z

    return v0
.end method

.method public final getInUI()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/GameView;->inUI:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 146
    const-string v0, "GameView"

    const-string v1, "[!!] onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 149
    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/GameView;->detached:Z

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lcom/rockstargames/gtalcs/GameGlThread;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/rockstargames/gtalcs/GameGlThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GameView;->glThread:Lcom/rockstargames/gtalcs/GameGlThread;

    .line 152
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GameGlThread;->start()V

    :cond_0
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameView;->setDetached(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 160
    const-string v0, "GameView"

    const-string v1, "[!!] onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameView;->glThread:Lcom/rockstargames/gtalcs/GameGlThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GameGlThread;->requestExit()V

    :cond_0
    const/4 v0, 0x1

    .line 163
    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GameView;->setDetached(Z)V

    .line 165
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    if-eqz p1, :cond_3

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    const/16 v0, 0xb

    .line 302
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    const/16 v0, 0xe

    .line 303
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/16 v0, 0xf

    .line 304
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    .line 305
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v10

    .line 307
    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 308
    new-instance v12, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 310
    iget v0, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/16 v0, 0x13

    .line 312
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 315
    :cond_0
    iget v0, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    const/16 v0, 0x16

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 320
    :cond_1
    iget v0, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    const/16 v0, 0x17

    .line 322
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iput v0, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 325
    :cond_2
    new-instance v2, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    move-object v9, p0

    invoke-direct/range {v2 .. v12}, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda0;-><init>(IFFFFFLcom/rockstargames/gtalcs/GameView;FLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-direct {p0, v2}, Lcom/rockstargames/gtalcs/GameView;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_3
    move-object v9, p0

    .line 386
    :goto_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 258
    invoke-direct {p0, p1}, Lcom/rockstargames/gtalcs/GameView;->toJoypadButton(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 262
    new-instance p1, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/rockstargames/gtalcs/GameView;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p2, 0x4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/GameView;->onBackPressed()V

    return v0

    .line 277
    :cond_0
    invoke-direct {p0, p1}, Lcom/rockstargames/gtalcs/GameView;->toJoypadButton(I)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_1

    const/16 v1, 0x15

    if-eq p1, v1, :cond_1

    const/16 v1, 0x13

    if-eq p1, v1, :cond_1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_1

    .line 281
    new-instance p1, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda7;

    invoke-direct {p1, p2}, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/rockstargames/gtalcs/GameView;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onPause()V
    .locals 2

    .line 170
    const-string v0, "GameView"

    const-string v1, "[!!] onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameView;->glThread:Lcom/rockstargames/gtalcs/GameGlThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GameGlThread;->onPause()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 176
    const-string v0, "GameView"

    const-string v1, "[!!] onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameView;->glThread:Lcom/rockstargames/gtalcs/GameGlThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GameGlThread;->onResume()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled motion event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 219
    :goto_0
    :pswitch_0
    iget-object p1, p0, Lcom/rockstargames/gtalcs/GameView;->touches:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_1

    .line 221
    iget-object p1, p0, Lcom/rockstargames/gtalcs/GameView;->touches:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    .line 222
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 225
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 226
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 227
    new-instance v2, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, v1, v0}, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda5;-><init>(IFF)V

    invoke-direct {p0, v2}, Lcom/rockstargames/gtalcs/GameView;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_1
    iget-object p1, p0, Lcom/rockstargames/gtalcs/GameView;->touches:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto/16 :goto_2

    .line 202
    :goto_1
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 204
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 205
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 206
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 207
    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 208
    iput v1, v2, Landroid/graphics/PointF;->y:F

    .line 209
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 210
    iget-object v5, p0, Lcom/rockstargames/gtalcs/GameView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    new-instance v2, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v4, v0, v1}, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda4;-><init>(IFF)V

    invoke-direct {p0, v2}, Lcom/rockstargames/gtalcs/GameView;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 236
    :pswitch_2
    iget-object p1, p0, Lcom/rockstargames/gtalcs/GameView;->touches:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_2

    .line 239
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 240
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 241
    new-instance v2, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, v0, p1}, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda6;-><init>(IFF)V

    invoke-direct {p0, v2}, Lcom/rockstargames/gtalcs/GameView;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    .line 243
    :cond_2
    iget-object p1, p0, Lcom/rockstargames/gtalcs/GameView;->touches:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 190
    :pswitch_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GameView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 192
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 193
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 194
    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 195
    iget-object v3, p0, Lcom/rockstargames/gtalcs/GameView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    new-instance v0, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1, v2, p1}, Lcom/rockstargames/gtalcs/GameView$$ExternalSyntheticLambda3;-><init>(IFF)V

    invoke-direct {p0, v0}, Lcom/rockstargames/gtalcs/GameView;->queueEvent(Lkotlin/jvm/functions/Function0;)V

    :cond_3
    :goto_2
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final setDetached(Z)V
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[!!] detached = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-boolean p1, p0, Lcom/rockstargames/gtalcs/GameView;->detached:Z

    return-void
.end method

.method public final setFrameRateLock(Z)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[!!] frameRateLock = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-boolean p1, p0, Lcom/rockstargames/gtalcs/GameView;->frameRateLock:Z

    return-void
.end method

.method public final setHasFocus(Z)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[!!] hasFocus = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-boolean p1, p0, Lcom/rockstargames/gtalcs/GameView;->hasFocus:Z

    return-void
.end method

.method public final setInUI(Z)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[!!] inUI = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-boolean p1, p0, Lcom/rockstargames/gtalcs/GameView;->inUI:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[!!] surfaceChanged: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x78

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GameView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p2, p0, Lcom/rockstargames/gtalcs/GameView;->glThread:Lcom/rockstargames/gtalcs/GameGlThread;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, p3, p4}, Lcom/rockstargames/gtalcs/GameGlThread;->surfaceChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[!!] surfaceCreated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/rockstargames/gtalcs/GameView;->glThread:Lcom/rockstargames/gtalcs/GameGlThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/rockstargames/gtalcs/GameGlThread;->surfaceCreated()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    const-string p1, "GameView"

    const-string v0, "[!!] surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/rockstargames/gtalcs/GameView;->glThread:Lcom/rockstargames/gtalcs/GameGlThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/rockstargames/gtalcs/GameGlThread;->surfaceDestroyed()V

    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/rockstargames/gtalcs/GameView;->glThread:Lcom/rockstargames/gtalcs/GameGlThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/rockstargames/gtalcs/GameGlThread;->surfaceRedrawNeeded()V

    :cond_0
    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "drawingFinished"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/rockstargames/gtalcs/GameView;->glThread:Lcom/rockstargames/gtalcs/GameGlThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/rockstargames/gtalcs/GameGlThread;->surfaceRedrawNeededAsync(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
