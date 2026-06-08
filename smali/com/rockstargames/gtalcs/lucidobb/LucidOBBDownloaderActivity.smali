.class public Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/l;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Z

.field private l:I

.field private m:Lcom/google/android/vending/expansion/downloader/m;

.field private n:Lcom/google/android/vending/expansion/downloader/n;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/Boolean;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->q:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->r:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    const-class v0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderService;

    invoke-static {p0, v0}, Lcom/google/android/vending/expansion/downloader/c;->a(Lcom/google/android/vending/expansion/downloader/l;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/n;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->n:Lcom/google/android/vending/expansion/downloader/n;

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->setContentView(I)V

    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0a008c

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0a008d

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->g:Landroid/view/View;

    const v0, 0x7f0a0090

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->h:Landroid/view/View;

    const v0, 0x7f0a008e

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->i:Landroid/widget/Button;

    const v0, 0x7f0a0095

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/rockstargames/gtalcs/lucidobb/a;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/lucidobb/a;-><init>(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->j:Landroid/widget/Button;

    new-instance v1, Lcom/rockstargames/gtalcs/lucidobb/b;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/lucidobb/b;-><init>(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/rockstargames/gtalcs/lucidobb/c;

    invoke-direct {v1, p0}, Lcom/rockstargames/gtalcs/lucidobb/c;-><init>(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->k:Z

    if-eqz p1, :cond_0

    const v0, 0x7f0b0035

    :goto_0
    iget-object v1, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->i:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_0
    const v0, 0x7f0b0034

    goto :goto_0
.end method

.method static synthetic a(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)Lcom/google/android/vending/expansion/downloader/m;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->m:Lcom/google/android/vending/expansion/downloader/m;

    return-object v0
.end method

.method private b()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 5

    const-string v1, "LVLDownloader"

    const-string v2, "onExpansionFilesDelivered nextClassName is %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->r:Ljava/lang/String;

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "OBBFilename"

    iget-object v2, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PatchFilename"

    iget-object v2, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "NULL!"

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->l:I

    if-eq v3, p1, :cond_0

    iput p1, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->l:I

    iget-object v3, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/k;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v3, v0

    move v4, v1

    move v5, v0

    move v6, v0

    :goto_0
    if-eqz v5, :cond_3

    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v0, :cond_1

    iget-object v5, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->g:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v4, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-direct {p0, v6}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->a(Z)V

    :goto_3
    return-void

    :pswitch_1
    move v3, v0

    move v4, v1

    move v5, v0

    move v6, v1

    goto :goto_0

    :pswitch_2
    move v3, v0

    move v4, v1

    move v5, v0

    move v6, v1

    goto :goto_0

    :pswitch_3
    move v3, v1

    move v4, v1

    move v5, v0

    move v6, v1

    goto :goto_0

    :pswitch_4
    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v0

    goto :goto_0

    :pswitch_5
    move v3, v1

    move v4, v0

    move v5, v1

    move v6, v0

    goto :goto_0

    :pswitch_6
    move v3, v1

    move v4, v1

    move v5, v0

    move v6, v0

    goto :goto_0

    :pswitch_7
    move v3, v1

    move v4, v1

    move v5, v0

    move v6, v0

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->c()V

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Landroid/os/Messenger;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/c;->b(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/m;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->m:Lcom/google/android/vending/expansion/downloader/m;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->m:Lcom/google/android/vending/expansion/downloader/m;

    iget-object v1, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->n:Lcom/google/android/vending/expansion/downloader/n;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/n;->a()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/m;->a(Landroid/os/Messenger;)V

    return-void
.end method

.method public final a(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0b002d

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->d:F

    invoke-static {v3}, Lcom/google/android/vending/expansion/downloader/k;->a(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0b002e

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->c:J

    invoke-static {v4, v5}, Lcom/google/android/vending/expansion/downloader/k;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->a:Landroid/widget/ProgressBar;

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->a:J

    shr-long/2addr v2, v7

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->a:Landroid/widget/ProgressBar;

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->b:J

    shr-long/2addr v2, v7

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->b:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->a:J

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->c:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->b:J

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->a:J

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/vending/expansion/downloader/k;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->setRequestedOrientation(I)V

    const-string v0, "LVLDownloader"

    const-string v3, "Setting orientation to SCREEN_ORIENTATION_USER_LANDSCAPE"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->b()V

    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v0, "OBBFilename"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->o:Ljava/lang/String;

    const-string v0, "LVLDownloader"

    iget-object v4, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->o:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PatchFilename"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->p:Ljava/lang/String;

    const-string v0, "LVLDownloader"

    iget-object v4, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->p:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IsMasterBuild"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->q:Ljava/lang/Boolean;

    const-string v4, "LVLDownloader"

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isMasterBuild TRUE"

    :goto_0
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SuccessIntent"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->r:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "LVLDownloader"

    const-string v4, "SuccessIntent was null, defaulting to com.rockstargames.gtalcs.GTAActivity"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.rockstargames.gtalcs.GTAActivity"

    iput-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->r:Ljava/lang/String;

    :goto_1
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->a()V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "LVLDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Looking for OBB: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->o:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/vending/expansion/downloader/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LVLDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "OBB "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " does NOT exist!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_2
    if-nez v0, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "LVLDownloader"

    const-string v2, "Cannot find own package! MAYDAY!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    invoke-direct {p0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->c()V

    :goto_4
    return-void

    :cond_1
    const-string v0, "isMasterBuild FALSE"

    goto/16 :goto_0

    :cond_2
    const-string v0, "LVLDownloader"

    const-string v4, "SuccessIntent okay - set to %s"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->r:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const-string v0, "LVLDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Looking for Patch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->p:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/vending/expansion/downloader/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "LVLDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PATCH "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->p:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " does NOT exist!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x0

    const/high16 v2, 0x8000000

    :try_start_1
    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-class v1, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderService;

    invoke-static {p0, v0, v1}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, "LVLDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startResult unknown result "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->a()V

    goto/16 :goto_4

    :pswitch_0
    const-string v1, "LVLDownloader"

    const-string v2, "startResult NO_DOWNLOAD_REQUIRED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_1
    const-string v1, "LVLDownloader"

    const-string v2, "startResult LVL_CHECK_REQUIRED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_2
    const-string v1, "LVLDownloader"

    const-string v2, "startResult DOWNLOAD_REQUIRED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->n:Lcom/google/android/vending/expansion/downloader/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->n:Lcom/google/android/vending/expansion/downloader/n;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/n;->a(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->n:Lcom/google/android/vending/expansion/downloader/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->n:Lcom/google/android/vending/expansion/downloader/n;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/n;->b(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/rockstargames/gtalcs/lucidobb/LucidOBBDownloaderActivity;->b()V

    :cond_0
    return-void
.end method
