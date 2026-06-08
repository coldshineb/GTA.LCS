.class final Landroid/support/v4/app/n;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Landroid/support/v4/app/m;


# direct methods
.method constructor <init>(Landroid/support/v4/app/m;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/m;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/m;

    iget-boolean v0, v0, Landroid/support/v4/app/m;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/m;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->i()V

    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->o()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
