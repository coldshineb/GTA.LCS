.class final Lcom/google/android/vending/expansion/downloader/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/google/android/vending/expansion/downloader/e;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/g;->a:Lcom/google/android/vending/expansion/downloader/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/g;->a:Lcom/google/android/vending/expansion/downloader/e;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/google/android/vending/expansion/downloader/e;->a(Lcom/google/android/vending/expansion/downloader/e;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/g;->a:Lcom/google/android/vending/expansion/downloader/e;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/e;->b(Lcom/google/android/vending/expansion/downloader/e;)Lcom/google/android/vending/expansion/downloader/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/g;->a:Lcom/google/android/vending/expansion/downloader/e;

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/e;->c(Lcom/google/android/vending/expansion/downloader/e;)Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/l;->a(Landroid/os/Messenger;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/g;->a:Lcom/google/android/vending/expansion/downloader/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/expansion/downloader/e;->a(Lcom/google/android/vending/expansion/downloader/e;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
