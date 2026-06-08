.class public final Lcom/google/android/vending/expansion/downloader/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/l;


# static fields
.field private static m:I


# instance fields
.field private a:I

.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/NotificationManager;

.field private d:Ljava/lang/CharSequence;

.field private e:Lcom/google/android/vending/expansion/downloader/l;

.field private f:Landroid/support/v4/app/Z;

.field private g:Landroid/support/v4/app/Z;

.field private h:Landroid/support/v4/app/Z;

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/String;

.field private k:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

.field private l:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DownloadNotification"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/google/android/vending/expansion/downloader/a/d;->m:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/vending/expansion/downloader/a/d;->a:I

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/a/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/a/d;->i:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->c:Landroid/app/NotificationManager;

    new-instance v0, Landroid/support/v4/app/Z;

    invoke-direct {v0, p1}, Landroid/support/v4/app/Z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->f:Landroid/support/v4/app/Z;

    new-instance v0, Landroid/support/v4/app/Z;

    invoke-direct {v0, p1}, Landroid/support/v4/app/Z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->g:Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->f:Landroid/support/v4/app/Z;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Z;->b(I)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->f:Landroid/support/v4/app/Z;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->a(Ljava/lang/String;)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->g:Landroid/support/v4/app/Z;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Z;->b(I)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->g:Landroid/support/v4/app/Z;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->a(Ljava/lang/String;)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->g:Landroid/support/v4/app/Z;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->h:Landroid/support/v4/app/Z;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->e:Lcom/google/android/vending/expansion/downloader/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->e:Lcom/google/android/vending/expansion/downloader/l;

    iget v1, p0, Lcom/google/android/vending/expansion/downloader/a/d;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/l;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 7

    const v4, 0x1080082

    const v3, 0x108008a

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->e:Lcom/google/android/vending/expansion/downloader/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->e:Lcom/google/android/vending/expansion/downloader/l;

    invoke-interface {v0, p1}, Lcom/google/android/vending/expansion/downloader/l;->a(I)V

    :cond_0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->a:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/google/android/vending/expansion/downloader/a/d;->a:I

    if-eq p1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->l:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/k;->a(I)I

    move-result v4

    move v0, v2

    move v5, v4

    :goto_1
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/d;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/d;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/d;->i:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/d;->d:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/d;->h:Landroid/support/v4/app/Z;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/a/d;->i:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/a/d;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Z;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/d;->h:Landroid/support/v4/app/Z;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/Z;->a(I)Landroid/support/v4/app/Z;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/d;->h:Landroid/support/v4/app/Z;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/d;->d:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Z;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/d;->h:Landroid/support/v4/app/Z;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/d;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Z;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->h:Landroid/support/v4/app/Z;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Z;->a(Z)Landroid/support/v4/app/Z;

    :goto_2
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->c:Landroid/app/NotificationManager;

    sget v1, Lcom/google/android/vending/expansion/downloader/a/d;->m:I

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/d;->h:Landroid/support/v4/app/Z;

    invoke-virtual {v2}, Landroid/support/v4/app/Z;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :pswitch_1
    const v4, 0x7f0b001b

    move v0, v1

    move v5, v4

    goto :goto_1

    :pswitch_2
    const v3, 0x1080081

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/k;->a(I)I

    move-result v4

    move v0, v2

    move v5, v4

    goto :goto_1

    :pswitch_3
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/k;->a(I)I

    move-result v5

    move v0, v2

    move v3, v4

    goto :goto_1

    :pswitch_4
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/k;->a(I)I

    move-result v5

    move v0, v1

    move v3, v4

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/k;->a(I)I

    move-result v4

    move v0, v1

    move v5, v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->h:Landroid/support/v4/app/Z;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->a(Z)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->h:Landroid/support/v4/app/Z;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Z;->b(Z)Landroid/support/v4/app/Z;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->g:Landroid/support/v4/app/Z;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Z;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->f:Landroid/support/v4/app/Z;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Z;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/a/d;->l:Landroid/app/PendingIntent;

    return-void
.end method

.method public final a(Landroid/os/Messenger;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 8

    const v7, 0x1080081

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/a/d;->k:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->e:Lcom/google/android/vending/expansion/downloader/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->e:Lcom/google/android/vending/expansion/downloader/l;

    invoke-interface {v0, p1}, Lcom/google/android/vending/expansion/downloader/l;->a(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    :cond_0
    iget-wide v0, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->g:Landroid/support/v4/app/Z;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/d;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->g:Landroid/support/v4/app/Z;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/Z;->a(I)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->g:Landroid/support/v4/app/Z;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/d;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->g:Landroid/support/v4/app/Z;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->g:Landroid/support/v4/app/Z;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->h:Landroid/support/v4/app/Z;

    :goto_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->c:Landroid/app/NotificationManager;

    sget v1, Lcom/google/android/vending/expansion/downloader/a/d;->m:I

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/d;->h:Landroid/support/v4/app/Z;

    invoke-virtual {v2}, Landroid/support/v4/app/Z;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->f:Landroid/support/v4/app/Z;

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->a:J

    long-to-int v1, v2

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->b:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2, v6}, Landroid/support/v4/app/Z;->a(IIZ)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->f:Landroid/support/v4/app/Z;

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->b:J

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->a:J

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/vending/expansion/downloader/k;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->f:Landroid/support/v4/app/Z;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/Z;->a(I)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->f:Landroid/support/v4/app/Z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/d;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->f:Landroid/support/v4/app/Z;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/d;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->f:Landroid/support/v4/app/Z;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/d;->b:Landroid/content/Context;

    const v2, 0x7f0b002f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->c:J

    invoke-static {v4, v5}, Lcom/google/android/vending/expansion/downloader/k;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->f:Landroid/support/v4/app/Z;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->h:Landroid/support/v4/app/Z;

    goto :goto_0
.end method

.method public final b(Landroid/os/Messenger;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/c;->a(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->e:Lcom/google/android/vending/expansion/downloader/l;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->k:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->e:Lcom/google/android/vending/expansion/downloader/l;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/d;->k:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/l;->a(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    :cond_0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/d;->e:Lcom/google/android/vending/expansion/downloader/l;

    iget v1, p0, Lcom/google/android/vending/expansion/downloader/a/d;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/l;->a(I)V

    :cond_1
    return-void
.end method
