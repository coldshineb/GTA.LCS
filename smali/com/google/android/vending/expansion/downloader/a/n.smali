.class final Lcom/google/android/vending/expansion/downloader/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/a/h;


# instance fields
.field private synthetic a:Lcom/google/android/vending/a/b;

.field private synthetic b:Lcom/google/android/vending/expansion/downloader/a/m;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/a/m;Lcom/google/android/vending/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/a/n;->a:Lcom/google/android/vending/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    const/16 v12, 0xc8

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/n;->a:Lcom/google/android/vending/a/b;

    invoke-virtual {v0}, Lcom/google/android/vending/a/b;->b()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/a/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/a/o;->a(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/a/o;

    move-result-object v5

    if-eqz v4, :cond_3

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v4, :cond_4

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/a/n;->a:Lcom/google/android/vending/a/b;

    invoke-virtual {v6, v3}, Lcom/google/android/vending/a/b;->b(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Lcom/google/android/vending/expansion/downloader/a/c;

    iget-object v8, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v8, v8, Lcom/google/android/vending/expansion/downloader/a/m;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-direct {v7, v3, v6}, Lcom/google/android/vending/expansion/downloader/a/c;-><init>(ILjava/lang/String;)V

    iget-object v8, p0, Lcom/google/android/vending/expansion/downloader/a/n;->a:Lcom/google/android/vending/a/b;

    invoke-virtual {v8, v3}, Lcom/google/android/vending/a/b;->c(I)J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v10, v10, Lcom/google/android/vending/expansion/downloader/a/m;->b:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-virtual {v10, v5, v6, v8, v9}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Lcom/google/android/vending/expansion/downloader/a/o;Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, -0x1

    const-wide/16 v10, 0x0

    iput-wide v10, v7, Lcom/google/android/vending/expansion/downloader/a/c;->f:J

    const-string v6, ""

    iput-object v6, v7, Lcom/google/android/vending/expansion/downloader/a/c;->d:Ljava/lang/String;

    const-wide/16 v10, 0x0

    iput-wide v10, v7, Lcom/google/android/vending/expansion/downloader/a/c;->g:J

    const/4 v6, 0x0

    iput v6, v7, Lcom/google/android/vending/expansion/downloader/a/c;->h:I

    const/4 v6, 0x0

    iput v6, v7, Lcom/google/android/vending/expansion/downloader/a/c;->i:I

    const/4 v6, 0x0

    iput v6, v7, Lcom/google/android/vending/expansion/downloader/a/c;->j:I

    const/4 v6, 0x0

    iput v6, v7, Lcom/google/android/vending/expansion/downloader/a/c;->k:I

    const/4 v6, 0x0

    iput v6, v7, Lcom/google/android/vending/expansion/downloader/a/c;->l:I

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/a/n;->a:Lcom/google/android/vending/a/b;

    invoke-virtual {v6, v3}, Lcom/google/android/vending/a/b;->a(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/google/android/vending/expansion/downloader/a/c;->a:Ljava/lang/String;

    iput-wide v8, v7, Lcom/google/android/vending/expansion/downloader/a/c;->e:J

    iput v0, v7, Lcom/google/android/vending/expansion/downloader/a/c;->h:I

    invoke-virtual {v5, v7}, Lcom/google/android/vending/expansion/downloader/a/o;->b(Lcom/google/android/vending/expansion/downloader/a/c;)Z

    move v0, v1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v7, Lcom/google/android/vending/expansion/downloader/a/c;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/vending/expansion/downloader/a/o;->a(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/a/c;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, "LVLDL"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v7, Lcom/google/android/vending/expansion/downloader/a/c;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " found. Not downloading."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xc8

    iput v6, v7, Lcom/google/android/vending/expansion/downloader/a/c;->h:I

    iput-wide v8, v7, Lcom/google/android/vending/expansion/downloader/a/c;->e:J

    iput-wide v8, v7, Lcom/google/android/vending/expansion/downloader/a/c;->f:J

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/a/n;->a:Lcom/google/android/vending/a/b;

    invoke-virtual {v6, v3}, Lcom/google/android/vending/a/b;->a(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/google/android/vending/expansion/downloader/a/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/vending/expansion/downloader/a/o;->b(Lcom/google/android/vending/expansion/downloader/a/c;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Z)V

    throw v0

    :cond_2
    :try_start_1
    iget v7, v6, Lcom/google/android/vending/expansion/downloader/a/c;->h:I

    if-eq v7, v12, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/n;->a:Lcom/google/android/vending/a/b;

    invoke-virtual {v0, v3}, Lcom/google/android/vending/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/vending/expansion/downloader/a/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/vending/expansion/downloader/a/o;->b(Lcom/google/android/vending/expansion/downloader/a/c;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/a/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v3, v3, Lcom/google/android/vending/expansion/downloader/a/m;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v1, v0}, Lcom/google/android/vending/expansion/downloader/a/o;->a(II)Z

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/a/m;->b:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/a/m;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v3, v3, Lcom/google/android/vending/expansion/downloader/a/m;->b:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-static {v3}, Lcom/google/android/vending/expansion/downloader/a/j;->b(Lcom/google/android/vending/expansion/downloader/a/j;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Z)V

    return-void

    :pswitch_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/a/m;->b:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Lcom/google/android/vending/expansion/downloader/a/j;)Lcom/google/android/vending/expansion/downloader/a/d;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/a/d;->a(I)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error with getting information from package name"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :pswitch_1
    :try_start_5
    const-string v0, "LVLDL"

    const-string v1, "In LVL checking loop!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/a/m;->b:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Lcom/google/android/vending/expansion/downloader/a/j;)Lcom/google/android/vending/expansion/downloader/a/d;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/a/d;->a(I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error with LVL checking and database integrity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(I)V
    .locals 3

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Z)V

    return-void

    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/a/m;->b:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Lcom/google/android/vending/expansion/downloader/a/j;)Lcom/google/android/vending/expansion/downloader/a/d;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/a/d;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Z)V

    throw v0

    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/a/m;->b:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Lcom/google/android/vending/expansion/downloader/a/j;)Lcom/google/android/vending/expansion/downloader/a/d;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/a/d;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x123 -> :sswitch_1
        0x231 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/n;->b:Lcom/google/android/vending/expansion/downloader/a/m;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/a/m;->b:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Lcom/google/android/vending/expansion/downloader/a/j;)Lcom/google/android/vending/expansion/downloader/a/d;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/a/d;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Z)V

    throw v0
.end method
