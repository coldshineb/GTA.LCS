.class final Lcom/google/android/vending/expansion/downloader/f;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/google/android/vending/expansion/downloader/e;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/f;->a:Lcom/google/android/vending/expansion/downloader/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/f;->a:Lcom/google/android/vending/expansion/downloader/e;

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/e;->a(Lcom/google/android/vending/expansion/downloader/e;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/f;->a:Lcom/google/android/vending/expansion/downloader/e;

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/e;->a(Lcom/google/android/vending/expansion/downloader/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/f;->a:Lcom/google/android/vending/expansion/downloader/e;

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/e;->b(Lcom/google/android/vending/expansion/downloader/e;)Lcom/google/android/vending/expansion/downloader/l;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/vending/expansion/downloader/l;->a(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/f;->a:Lcom/google/android/vending/expansion/downloader/e;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/e;->b(Lcom/google/android/vending/expansion/downloader/e;)Lcom/google/android/vending/expansion/downloader/l;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "newState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/l;->a(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/f;->a:Lcom/google/android/vending/expansion/downloader/e;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/e;->b(Lcom/google/android/vending/expansion/downloader/e;)Lcom/google/android/vending/expansion/downloader/l;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "EMH"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-interface {v1, v0}, Lcom/google/android/vending/expansion/downloader/l;->a(Landroid/os/Messenger;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
