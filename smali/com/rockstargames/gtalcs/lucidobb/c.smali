.class final Lcom/rockstargames/gtalcs/lucidobb/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/gtalcs/lucidobb/c;->a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/c;->a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    invoke-static {v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->b(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)Lcom/google/android/vending/expansion/downloader/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/m;->a(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/c;->a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    invoke-static {v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->b(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)Lcom/google/android/vending/expansion/downloader/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/m;->c()V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/c;->a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    invoke-static {v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->c(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
