.class final Lcom/google/android/vending/expansion/downloader/j;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/google/android/vending/expansion/downloader/i;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/j;->a:Lcom/google/android/vending/expansion/downloader/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/j;->a:Lcom/google/android/vending/expansion/downloader/i;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/i;->a(Lcom/google/android/vending/expansion/downloader/i;)Lcom/google/android/vending/expansion/downloader/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/m;->a()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/j;->a:Lcom/google/android/vending/expansion/downloader/i;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/i;->a(Lcom/google/android/vending/expansion/downloader/i;)Lcom/google/android/vending/expansion/downloader/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/m;->c()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/j;->a:Lcom/google/android/vending/expansion/downloader/i;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/i;->a(Lcom/google/android/vending/expansion/downloader/i;)Lcom/google/android/vending/expansion/downloader/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/m;->b()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/j;->a:Lcom/google/android/vending/expansion/downloader/i;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/i;->a(Lcom/google/android/vending/expansion/downloader/i;)Lcom/google/android/vending/expansion/downloader/m;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/m;->a(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/j;->a:Lcom/google/android/vending/expansion/downloader/i;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/i;->a(Lcom/google/android/vending/expansion/downloader/i;)Lcom/google/android/vending/expansion/downloader/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/m;->d()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/j;->a:Lcom/google/android/vending/expansion/downloader/i;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/i;->a(Lcom/google/android/vending/expansion/downloader/i;)Lcom/google/android/vending/expansion/downloader/m;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "EMH"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-interface {v1, v0}, Lcom/google/android/vending/expansion/downloader/m;->a(Landroid/os/Messenger;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
