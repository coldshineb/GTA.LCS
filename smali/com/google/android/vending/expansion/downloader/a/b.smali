.class final Lcom/google/android/vending/expansion/downloader/a/b;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/google/android/vending/expansion/downloader/a/a;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/a/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/a/b;->a:Lcom/google/android/vending/expansion/downloader/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/b;->a:Lcom/google/android/vending/expansion/downloader/a/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/google/android/vending/expansion/downloader/a/a;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/b;->a:Lcom/google/android/vending/expansion/downloader/a/a;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CustomIntentService"

    const-string v1, "stopSelf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/b;->a:Lcom/google/android/vending/expansion/downloader/a/a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/a/a;->stopSelf(I)V

    const-string v0, "CustomIntentService"

    const-string v1, "afterStopSelf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
