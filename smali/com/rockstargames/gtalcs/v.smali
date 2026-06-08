.class final Lcom/rockstargames/gtalcs/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/view/MotionEvent;

.field private synthetic b:Lcom/rockstargames/gtalcs/GTAGLview;


# direct methods
.method constructor <init>(Lcom/rockstargames/gtalcs/GTAGLview;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iput-object p2, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-wide v8, -0x4036666666666666L    # -0.2

    const/16 v7, 0xb

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v4, v4, v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setJoyAxis(IIF)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v4, v5, v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setJoyAxis(IIF)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v4, v0, v1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setJoyAxis(IIF)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v4, v0, v1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setJoyAxis(IIF)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    invoke-static {v4, v7}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonDown(II)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iput-boolean v5, v0, Lcom/rockstargames/gtalcs/GTAGLview;->DPAD_Right_Pressed:Z

    :goto_0
    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_7

    const/16 v0, 0x8

    invoke-static {v4, v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonDown(II)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iput-boolean v5, v0, Lcom/rockstargames/gtalcs/GTAGLview;->DPAD_Up_Pressed:Z

    :goto_1
    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v1, v0, v6

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    :cond_0
    cmpl-float v1, v0, v6

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    cmpl-float v2, v1, v6

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    :cond_2
    const/4 v2, 0x5

    invoke-static {v4, v2, v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setJoyAxis(IIF)V

    const/4 v0, 0x4

    invoke-static {v4, v0, v1}, Lcom/rockstargames/gtalcs/GTAJNIlib;->setJoyAxis(IIF)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_4

    const/16 v0, 0xa

    invoke-static {v4, v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonDown(II)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iput-boolean v5, v0, Lcom/rockstargames/gtalcs/GTAGLview;->DPAD_Left_Pressed:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iget-boolean v0, v0, Lcom/rockstargames/gtalcs/GTAGLview;->DPAD_Left_Pressed:Z

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    invoke-static {v4, v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonUp(II)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iput-boolean v4, v0, Lcom/rockstargames/gtalcs/GTAGLview;->DPAD_Left_Pressed:Z

    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iput-boolean v4, v0, Lcom/rockstargames/gtalcs/GTAGLview;->DPAD_Right_Pressed:Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iget-boolean v0, v0, Lcom/rockstargames/gtalcs/GTAGLview;->DPAD_Right_Pressed:Z

    if-eqz v0, :cond_5

    invoke-static {v4, v7}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonUp(II)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->a:Landroid/view/MotionEvent;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_8

    const/16 v0, 0x9

    invoke-static {v4, v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonDown(II)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iput-boolean v5, v0, Lcom/rockstargames/gtalcs/GTAGLview;->DPAD_Down_Pressed:Z

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iget-boolean v0, v0, Lcom/rockstargames/gtalcs/GTAGLview;->DPAD_Up_Pressed:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    invoke-static {v4, v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonUp(II)V

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iput-boolean v4, v0, Lcom/rockstargames/gtalcs/GTAGLview;->DPAD_Up_Pressed:Z

    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iput-boolean v4, v0, Lcom/rockstargames/gtalcs/GTAGLview;->DPAD_Down_Pressed:Z

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/rockstargames/gtalcs/v;->b:Lcom/rockstargames/gtalcs/GTAGLview;

    iget-boolean v0, v0, Lcom/rockstargames/gtalcs/GTAGLview;->DPAD_Down_Pressed:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    invoke-static {v4, v0}, Lcom/rockstargames/gtalcs/GTAJNIlib;->onJoyButtonUp(II)V

    goto :goto_3
.end method
