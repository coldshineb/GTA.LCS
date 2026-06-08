.class public Lcom/rockstargames/gtalcs/GTAGLview;
.super Landroid/opengl/GLSurfaceView;


# static fields
.field private static final DEBUG:Z = false

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

.field protected static final OSXP_count:I = 0x10

.field private static TAG:Ljava/lang/String;

.field private static currentTime:J

.field private static deltaTime:J

.field private static frameRateLock:Z

.field private static inUI:Z

.field private static lastFrameTime:J

.field private static updateTime:J


# instance fields
.field protected DPAD_Down_Pressed:Z

.field protected DPAD_Left_Pressed:Z

.field protected DPAD_Right_Pressed:Z

.field protected DPAD_Up_Pressed:Z

.field public GamepadButtonMask:I

.field private _ActivePointers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private m_renderer:Lcom/rockstargames/gtalcs/A;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "GTAActivityBase"

    sput-object v0, Lcom/rockstargames/gtalcs/GTAGLview;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/rockstargames/gtalcs/GTAGLview;->frameRateLock:Z

    sput-boolean v1, Lcom/rockstargames/gtalcs/GTAGLview;->inUI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAGLview;->_ActivePointers:Landroid/util/SparseArray;

    iput v2, p0, Lcom/rockstargames/gtalcs/GTAGLview;->GamepadButtonMask:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAGLview;->setEGLContextClientVersion(I)V

    new-instance v0, Lcom/rockstargames/gtalcs/z;

    invoke-direct {v0, v2}, Lcom/rockstargames/gtalcs/z;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAGLview;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    new-instance v0, Lcom/rockstargames/gtalcs/y;

    const/16 v5, 0x18

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/rockstargames/gtalcs/y;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAGLview;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    new-instance v0, Lcom/rockstargames/gtalcs/A;

    invoke-direct {v0}, Lcom/rockstargames/gtalcs/A;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GTAGLview;->m_renderer:Lcom/rockstargames/gtalcs/A;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAGLview;->m_renderer:Lcom/rockstargames/gtalcs/A;

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAGLview;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v7}, Lcom/rockstargames/gtalcs/GTAGLview;->setPreserveEGLContextOnPause(Z)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAGLview;->requestFocus()Z

    invoke-virtual {p0, v7}, Lcom/rockstargames/gtalcs/GTAGLview;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rockstargames/gtalcs/GTAGLview;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    sget-wide v0, Lcom/rockstargames/gtalcs/GTAGLview;->currentTime:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .locals 0

    sput-wide p0, Lcom/rockstargames/gtalcs/GTAGLview;->currentTime:J

    return-wide p0
.end method

.method static synthetic access$300()J
    .locals 2

    sget-wide v0, Lcom/rockstargames/gtalcs/GTAGLview;->deltaTime:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0

    sput-wide p0, Lcom/rockstargames/gtalcs/GTAGLview;->deltaTime:J

    return-wide p0
.end method

.method static synthetic access$400()J
    .locals 2

    sget-wide v0, Lcom/rockstargames/gtalcs/GTAGLview;->lastFrameTime:J

    return-wide v0
.end method

.method static synthetic access$402(J)J
    .locals 0

    sput-wide p0, Lcom/rockstargames/gtalcs/GTAGLview;->lastFrameTime:J

    return-wide p0
.end method

.method static synthetic access$500()J
    .locals 2

    sget-wide v0, Lcom/rockstargames/gtalcs/GTAGLview;->updateTime:J

    return-wide v0
.end method

.method static synthetic access$502(J)J
    .locals 0

    sput-wide p0, Lcom/rockstargames/gtalcs/GTAGLview;->updateTime:J

    return-wide p0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/rockstargames/gtalcs/GTAGLview;->frameRateLock:Z

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/rockstargames/gtalcs/GTAGLview;->inUI:Z

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rockstargames/gtalcs/GTAGLview;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 5

    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/rockstargames/gtalcs/GTAGLview;->TAG:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getJoypadButtonFromKeyCode(I)I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, -0x1

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_7
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_8
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_9
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_a
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_d
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_e
    const/16 v0, 0xf

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_d
        0x13 -> :sswitch_b
        0x14 -> :sswitch_c
        0x15 -> :sswitch_9
        0x16 -> :sswitch_a
        0x52 -> :sswitch_e
        0x60 -> :sswitch_1
        0x61 -> :sswitch_2
        0x63 -> :sswitch_3
        0x64 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_0
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method public static getNumberControllers()I
    .locals 8

    const v7, 0x1000010

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v3

    array-length v4, v3

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget v2, v3, v1

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getSources()I

    move-result v2

    and-int/lit16 v5, v2, 0x401

    const/16 v6, 0x401

    if-eq v5, v6, :cond_0

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public SetHasFocus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAGLview;->m_renderer:Lcom/rockstargames/gtalcs/A;

    invoke-virtual {v0, p1}, Lcom/rockstargames/gtalcs/A;->a(Z)V

    return-void
.end method

.method public handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Lcom/rockstargames/gtalcs/v;

    invoke-direct {v0, p0, p1}, Lcom/rockstargames/gtalcs/v;-><init>(Lcom/rockstargames/gtalcs/GTAGLview;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAGLview;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x2f

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/rockstargames/gtalcs/GTAGLview;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/rockstargames/gtalcs/w;

    invoke-direct {v0, p0}, Lcom/rockstargames/gtalcs/w;-><init>(Lcom/rockstargames/gtalcs/GTAGLview;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAGLview;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/rockstargames/gtalcs/GTAGLview;->getJoypadButtonFromKeyCode(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "kodiak"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/rockstargames/gtalcs/GTAGLview;->GamepadButtonMask:I

    new-instance v2, Lcom/rockstargames/gtalcs/t;

    invoke-direct {v2, p0, v1}, Lcom/rockstargames/gtalcs/t;-><init>(Lcom/rockstargames/gtalcs/GTAGLview;I)V

    invoke-virtual {p0, v2}, Lcom/rockstargames/gtalcs/GTAGLview;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAGLview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/gtalcs/GTAActivityBase;

    if-ne p1, v4, :cond_0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "kodiak"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p1, v4, :cond_2

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "kodiak"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/rockstargames/gtalcs/GTAGLview;->getNumberControllers()I

    move-result v2

    if-gtz v2, :cond_1

    sget-object v0, Lcom/rockstargames/gtalcs/GTAGLview;->TAG:Ljava/lang/String;

    const-string v2, "onBackPressed - ignore back button on this device (Kindle Fire phone) 0"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAActivityBase;->onBackPressed()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/rockstargames/gtalcs/GTAGLview;->getJoypadButtonFromKeyCode(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    new-instance v2, Lcom/rockstargames/gtalcs/u;

    invoke-direct {v2, p0, v0}, Lcom/rockstargames/gtalcs/u;-><init>(Lcom/rockstargames/gtalcs/GTAGLview;I)V

    invoke-virtual {p0, v2}, Lcom/rockstargames/gtalcs/GTAGLview;->queueEvent(Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    new-instance v0, Lcom/rockstargames/gtalcs/x;

    invoke-direct {v0, p0}, Lcom/rockstargames/gtalcs/x;-><init>(Lcom/rockstargames/gtalcs/GTAGLview;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAGLview;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    new-instance v0, Lcom/rockstargames/gtalcs/p;

    invoke-direct {v0, p0}, Lcom/rockstargames/gtalcs/p;-><init>(Lcom/rockstargames/gtalcs/GTAGLview;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GTAGLview;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    sget-object v1, Lcom/rockstargames/gtalcs/GTAGLview;->TAG:Ljava/lang/String;

    const-string v3, "Unhandled motion event %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAGLview;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAGLview;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput v0, v4, Landroid/graphics/PointF;->x:F

    iput v1, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/rockstargames/gtalcs/GTAGLview;->_ActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v4, Lcom/rockstargames/gtalcs/o;

    invoke-direct {v4, p0, v3, v0, v1}, Lcom/rockstargames/gtalcs/o;-><init>(Lcom/rockstargames/gtalcs/GTAGLview;IFF)V

    invoke-virtual {p0, v4}, Lcom/rockstargames/gtalcs/GTAGLview;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    :goto_1
    move v0, v2

    goto :goto_0

    :goto_2
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAGLview;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/GTAGLview;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput v1, v4, Landroid/graphics/PointF;->x:F

    iput v3, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget-object v6, p0, Lcom/rockstargames/gtalcs/GTAGLview;->_ActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v4, Lcom/rockstargames/gtalcs/q;

    invoke-direct {v4, p0, v5, v1, v3}, Lcom/rockstargames/gtalcs/q;-><init>(Lcom/rockstargames/gtalcs/GTAGLview;IFF)V

    invoke-virtual {p0, v4}, Lcom/rockstargames/gtalcs/GTAGLview;->queueEvent(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_2
    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAGLview;->_ActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAGLview;->_ActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAGLview;->_ActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    new-instance v5, Lcom/rockstargames/gtalcs/r;

    invoke-direct {v5, p0, v3, v4, v0}, Lcom/rockstargames/gtalcs/r;-><init>(Lcom/rockstargames/gtalcs/GTAGLview;IFF)V

    invoke-virtual {p0, v5}, Lcom/rockstargames/gtalcs/GTAGLview;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAGLview;->_ActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAGLview;->_ActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_3

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    new-instance v4, Lcom/rockstargames/gtalcs/s;

    invoke-direct {v4, p0, v3, v1, v0}, Lcom/rockstargames/gtalcs/s;-><init>(Lcom/rockstargames/gtalcs/GTAGLview;IFF)V

    invoke-virtual {p0, v4}, Lcom/rockstargames/gtalcs/GTAGLview;->queueEvent(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GTAGLview;->_ActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setFrameRateLock(Z)V
    .locals 0

    sput-boolean p1, Lcom/rockstargames/gtalcs/GTAGLview;->frameRateLock:Z

    return-void
.end method

.method public setInUI(Z)V
    .locals 0

    sput-boolean p1, Lcom/rockstargames/gtalcs/GTAGLview;->inUI:Z

    return-void
.end method
