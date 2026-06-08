.class final Lcom/google/android/vending/expansion/downloader/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/vending/expansion/downloader/a/j;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/a/j;Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/a/m;->b:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/a/m;->a:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Lcom/google/android/vending/expansion/downloader/a/j;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Z)V

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/m;->b:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Lcom/google/android/vending/expansion/downloader/a/j;)Lcom/google/android/vending/expansion/downloader/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/a/d;->a(I)V

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/vending/a/b;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/m;->a:Landroid/content/Context;

    new-instance v3, Lcom/google/android/vending/a/a;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/m;->b:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-virtual {v4}, Lcom/google/android/vending/expansion/downloader/a/j;->h()[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/a/m;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/vending/a/a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/vending/a/b;-><init>(Landroid/content/Context;Lcom/google/android/vending/a/k;)V

    invoke-virtual {v1}, Lcom/google/android/vending/a/b;->a()V

    new-instance v0, Lcom/google/android/vending/a/d;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/m;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/m;->b:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-virtual {v3}, Lcom/google/android/vending/expansion/downloader/a/j;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/vending/a/d;-><init>(Landroid/content/Context;Lcom/google/android/vending/a/l;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/vending/expansion/downloader/a/n;

    invoke-direct {v2, p0, v1}, Lcom/google/android/vending/expansion/downloader/a/n;-><init>(Lcom/google/android/vending/expansion/downloader/a/m;Lcom/google/android/vending/a/b;)V

    invoke-virtual {v0, v2}, Lcom/google/android/vending/a/d;->a(Lcom/google/android/vending/a/h;)V

    return-void
.end method
