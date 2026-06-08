.class final Lcom/google/android/vending/expansion/downloader/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/n;


# instance fields
.field private a:Lcom/google/android/vending/expansion/downloader/m;

.field private b:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/i;->a:Lcom/google/android/vending/expansion/downloader/m;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/vending/expansion/downloader/j;

    invoke-direct {v1, p0}, Lcom/google/android/vending/expansion/downloader/j;-><init>(Lcom/google/android/vending/expansion/downloader/i;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/i;->b:Landroid/os/Messenger;

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/i;->a:Lcom/google/android/vending/expansion/downloader/m;

    return-void
.end method

.method static synthetic a(Lcom/google/android/vending/expansion/downloader/i;)Lcom/google/android/vending/expansion/downloader/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/i;->a:Lcom/google/android/vending/expansion/downloader/m;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/i;->b:Landroid/os/Messenger;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
