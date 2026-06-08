.class final Lcom/rockstargames/gtalcs/lucidobb/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/gtalcs/lucidobb/a;->a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/a;->a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    invoke-static {v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->a(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/a;->a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    invoke-static {v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->b(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)Lcom/google/android/vending/expansion/downloader/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/m;->c()V

    :goto_0
    iget-object v1, p0, Lcom/rockstargames/gtalcs/lucidobb/a;->a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/a;->a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    invoke-static {v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->a(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->a(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/a;->a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    invoke-static {v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->b(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)Lcom/google/android/vending/expansion/downloader/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/m;->b()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
