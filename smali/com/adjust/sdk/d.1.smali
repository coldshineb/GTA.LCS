.class final Lcom/adjust/sdk/d;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Looper;Lcom/adjust/sdk/a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/adjust/sdk/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/a;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/adjust/sdk/a;->b(Lcom/adjust/sdk/a;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/adjust/sdk/a;->c(Lcom/adjust/sdk/a;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/adjust/sdk/k;

    invoke-static {v0, v1}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/a;Lcom/adjust/sdk/k;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/a;Landroid/net/Uri;J)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/adjust/sdk/c;

    iget-object v2, v1, Lcom/adjust/sdk/c;->a:Ljava/lang/String;

    iget-wide v4, v1, Lcom/adjust/sdk/c;->b:J

    invoke-static {v0, v2, v4, v5}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/a;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_7
    invoke-static {v0}, Lcom/adjust/sdk/a;->d(Lcom/adjust/sdk/a;)V

    goto :goto_0

    :pswitch_8
    invoke-static {v0}, Lcom/adjust/sdk/a;->e(Lcom/adjust/sdk/a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11bb7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
