.class final Lcom/google/android/vending/expansion/downloader/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/n;


# instance fields
.field private a:Lcom/google/android/vending/expansion/downloader/l;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/os/Messenger;

.field private e:Landroid/content/Context;

.field private f:Landroid/os/Messenger;

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/l;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/expansion/downloader/l;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/e;->a:Lcom/google/android/vending/expansion/downloader/l;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/vending/expansion/downloader/f;

    invoke-direct {v1, p0}, Lcom/google/android/vending/expansion/downloader/f;-><init>(Lcom/google/android/vending/expansion/downloader/e;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/e;->f:Landroid/os/Messenger;

    new-instance v0, Lcom/google/android/vending/expansion/downloader/g;

    invoke-direct {v0, p0}, Lcom/google/android/vending/expansion/downloader/g;-><init>(Lcom/google/android/vending/expansion/downloader/e;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/e;->g:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/e;->a:Lcom/google/android/vending/expansion/downloader/l;

    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/e;->b:Ljava/lang/Class;

    return-void
.end method

.method static synthetic a(Lcom/google/android/vending/expansion/downloader/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/e;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/vending/expansion/downloader/e;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/e;->d:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/vending/expansion/downloader/e;)Lcom/google/android/vending/expansion/downloader/l;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/e;->a:Lcom/google/android/vending/expansion/downloader/l;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/vending/expansion/downloader/e;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/e;->d:Landroid/os/Messenger;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/e;->f:Landroid/os/Messenger;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/e;->e:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/e;->b:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EMH"

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/e;->f:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/e;->g:Landroid/content/ServiceConnection;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/e;->c:Z

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/e;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/e;->g:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/e;->c:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/e;->e:Landroid/content/Context;

    return-void
.end method
