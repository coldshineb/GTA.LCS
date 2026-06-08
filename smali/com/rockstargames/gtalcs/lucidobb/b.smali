.class final Lcom/rockstargames/gtalcs/lucidobb/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/gtalcs/lucidobb/b;->a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/b;->a:Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
