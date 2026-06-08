.class public final Lcom/google/android/vending/expansion/downloader/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/vending/expansion/downloader/a/c;

.field private c:Lcom/google/android/vending/expansion/downloader/a/j;

.field private final d:Lcom/google/android/vending/expansion/downloader/a/o;

.field private final e:Lcom/google/android/vending/expansion/downloader/a/d;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/a/c;Lcom/google/android/vending/expansion/downloader/a/j;Lcom/google/android/vending/expansion/downloader/a/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/a/e;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    iput-object p3, p0, Lcom/google/android/vending/expansion/downloader/a/e;->e:Lcom/google/android/vending/expansion/downloader/a/d;

    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/a/o;->a(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->d:Lcom/google/android/vending/expansion/downloader/a/o;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "APKXDL (Linux; U; Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/vending/expansion/downloader/a/j;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/vending/expansion/downloader/a/h;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/a/e;->d()V

    new-instance v1, Lcom/google/android/vending/expansion/downloader/a/i;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/a/e;->c(Lcom/google/android/vending/expansion/downloader/a/h;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "while getting entity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(IZIIZLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iput p1, v0, Lcom/google/android/vending/expansion/downloader/a/c;->h:I

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iput p3, v0, Lcom/google/android/vending/expansion/downloader/a/c;->k:I

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iput p4, v0, Lcom/google/android/vending/expansion/downloader/a/c;->l:I

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/vending/expansion/downloader/a/c;->g:J

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/vending/expansion/downloader/a/c;->j:I

    :goto_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->d:Lcom/google/android/vending/expansion/downloader/a/o;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/a/o;->b(Lcom/google/android/vending/expansion/downloader/a/c;)Z

    return-void

    :cond_0
    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/vending/expansion/downloader/a/c;->j:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget v1, v0, Lcom/google/android/vending/expansion/downloader/a/c;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/vending/expansion/downloader/a/c;->j:I

    goto :goto_0
.end method

.method private static a(Lcom/google/android/vending/expansion/downloader/a/h;)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LVLDL"

    const-string v2, "IOException while closing synced file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "LVLDL"

    const-string v2, "exception while closing file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    const-string v2, "LVLDL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "LVLDL"

    const-string v2, "IOException while closing synced file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v1, "LVLDL"

    const-string v2, "exception while closing file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v0

    :goto_2
    :try_start_5
    const-string v1, "LVLDL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sync failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v1, "LVLDL"

    const-string v2, "IOException while closing synced file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_7
    move-exception v0

    const-string v1, "LVLDL"

    const-string v2, "exception while closing file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :goto_3
    :try_start_7
    const-string v1, "LVLDL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException trying to sync "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_a

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const-string v1, "LVLDL"

    const-string v2, "IOException while closing synced file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const-string v1, "LVLDL"

    const-string v2, "exception while closing file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_b
    move-exception v0

    :goto_4
    :try_start_9
    const-string v1, "LVLDL"

    const-string v3, "exception while syncing file: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_0

    :catch_c
    move-exception v0

    const-string v1, "LVLDL"

    const-string v2, "IOException while closing synced file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_d
    move-exception v0

    const-string v1, "LVLDL"

    const-string v2, "exception while closing file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_1

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_f

    :cond_1
    :goto_6
    throw v0

    :catch_e
    move-exception v1

    const-string v2, "LVLDL"

    const-string v3, "IOException while closing synced file: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_f
    move-exception v1

    const-string v2, "LVLDL"

    const-string v3, "exception while closing file: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_10
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_11
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_12
    move-exception v0

    move-object v2, v1

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_1
.end method

.method private a(Lcom/google/android/vending/expansion/downloader/a/h;I)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/a/e;->b(Lcom/google/android/vending/expansion/downloader/a/h;)V

    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/a/j;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/vending/expansion/downloader/a/h;Lcom/google/android/vending/expansion/downloader/a/f;)V
    .locals 8

    const/16 v7, 0x1ec

    const/4 v6, 0x1

    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const-string v1, "found invalid internal destination filename"

    invoke-direct {v0, p0, v7, v1}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->b:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/a/e;->b(Lcom/google/android/vending/expansion/downloader/a/h;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/a/c;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v1, 0x1e9

    const-string v2, "Trying to resume a download that can\'t be resumed"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    :cond_4
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v2

    iput v0, p2, Lcom/google/android/vending/expansion/downloader/a/f;->a:I

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-wide v0, v0, Lcom/google/android/vending/expansion/downloader/a/c;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-wide v0, v0, Lcom/google/android/vending/expansion/downloader/a/c;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/a/f;->e:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/a/c;->d:Ljava/lang/String;

    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/a/f;->c:Ljava/lang/String;

    iput-boolean v6, p2, Lcom/google/android/vending/expansion/downloader/a/f;->d:Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/vending/expansion/downloader/a/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "while opening destination for resuming: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v7, v2, v0}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/google/android/vending/expansion/downloader/a/h;Lcom/google/android/vending/expansion/downloader/a/f;Ljava/net/HttpURLConnection;)V
    .locals 6

    iget-boolean v0, p2, Lcom/google/android/vending/expansion/downloader/a/f;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Content-Disposition"

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Content-Location"

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ETag"

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/a/f;->c:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    :goto_1
    const-string v1, "Content-Type"

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "application/vnd.android.obb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v1, 0x1e7

    const-string v2, "file delivered with incorrect Mime type"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    if-eqz v1, :cond_3

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-wide v4, v1, Lcom/google/android/vending/expansion/downloader/a/c;->e:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    const-string v1, "LVLDL"

    const-string v2, "Incorrect file size delivered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iget-object v1, p2, Lcom/google/android/vending/expansion/downloader/a/f;->e:Ljava/lang/String;

    if-nez v1, :cond_6

    if-eqz v0, :cond_4

    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_7

    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v1, 0x1ef

    const-string v2, "can\'t know size of download, giving up"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/google/android/vending/expansion/downloader/a/f;->e:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/a/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-wide v2, v2, Lcom/google/android/vending/expansion/downloader/a/c;->e:J

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/vending/expansion/downloader/k;->a()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v1, "LVLDL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "External media not mounted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/k;

    const/16 v1, 0x1f3

    const-string v2, "external media is not yet mounted"

    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/k;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/vending/expansion/downloader/a/k; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/vending/expansion/downloader/a/i;

    iget v2, v0, Lcom/google/android/vending/expansion/downloader/a/k;->a:I

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/a/k;->b:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v1

    :cond_8
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "LVLDL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File already exists: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/k;

    const/16 v1, 0x1e8

    const-string v2, "requested destination file already exists"

    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/k;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/k;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/k;->a(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_a

    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/k;

    const/16 v1, 0x1f2

    const-string v2, "insufficient space on external storage"

    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/k;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_a
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/vending/expansion/downloader/a/k; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->b:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-object v1, p2, Lcom/google/android/vending/expansion/downloader/a/f;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/vending/expansion/downloader/a/c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->d:Lcom/google/android/vending/expansion/downloader/a/o;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/a/o;->b(Lcom/google/android/vending/expansion/downloader/a/c;)Z

    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/a/e;->b()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lcom/google/android/vending/expansion/downloader/a/h;->b:Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    new-instance v1, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v2, 0x1ec

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "while opening destination file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_c
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private a(Lcom/google/android/vending/expansion/downloader/a/h;Lcom/google/android/vending/expansion/downloader/a/f;[BLjava/io/InputStream;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/vending/expansion/downloader/a/e;->b(Lcom/google/android/vending/expansion/downloader/a/h;Lcom/google/android/vending/expansion/downloader/a/f;[BLjava/io/InputStream;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget v3, p2, Lcom/google/android/vending/expansion/downloader/a/f;->a:I

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/google/android/vending/expansion/downloader/a/c;->f:J

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/e;->d:Lcom/google/android/vending/expansion/downloader/a/o;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    invoke-virtual {v2, v3}, Lcom/google/android/vending/expansion/downloader/a/o;->b(Lcom/google/android/vending/expansion/downloader/a/c;)Z

    iget-object v2, p2, Lcom/google/android/vending/expansion/downloader/a/f;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p2, Lcom/google/android/vending/expansion/downloader/a/f;->a:I

    iget-object v3, p2, Lcom/google/android/vending/expansion/downloader/a/f;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    :goto_1
    if-eqz v0, :cond_7

    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/a/e;->a(Lcom/google/android/vending/expansion/downloader/a/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v1, 0x1e9

    const-string v2, "mismatched content length"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/a/e;->c(Lcom/google/android/vending/expansion/downloader/a/h;)I

    move-result v1

    const-string v2, "closed socket before end of file"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    :cond_2
    iput-boolean v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->f:Z

    :try_start_0
    iget-object v3, p1, Lcom/google/android/vending/expansion/downloader/a/h;->b:Ljava/io/FileOutputStream;

    if-nez v3, :cond_3

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p1, Lcom/google/android/vending/expansion/downloader/a/h;->b:Ljava/io/FileOutputStream;

    :cond_3
    iget-object v3, p1, Lcom/google/android/vending/expansion/downloader/a/h;->b:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/a/e;->b(Lcom/google/android/vending/expansion/downloader/a/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v3, p2, Lcom/google/android/vending/expansion/downloader/a/f;->a:I

    add-int/2addr v3, v2

    iput v3, p2, Lcom/google/android/vending/expansion/downloader/a/f;->a:I

    iget v3, p2, Lcom/google/android/vending/expansion/downloader/a/f;->b:I

    add-int/2addr v2, v3

    iput v2, p2, Lcom/google/android/vending/expansion/downloader/a/f;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p2, Lcom/google/android/vending/expansion/downloader/a/f;->a:I

    iget v5, p2, Lcom/google/android/vending/expansion/downloader/a/f;->f:I

    sub-int/2addr v4, v5

    const/16 v5, 0x1000

    if-le v4, v5, :cond_4

    iget-wide v4, p2, Lcom/google/android/vending/expansion/downloader/a/f;->g:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget v5, p2, Lcom/google/android/vending/expansion/downloader/a/f;->a:I

    int-to-long v6, v5

    iput-wide v6, v4, Lcom/google/android/vending/expansion/downloader/a/c;->f:J

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/e;->d:Lcom/google/android/vending/expansion/downloader/a/o;

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    invoke-virtual {v4, v5}, Lcom/google/android/vending/expansion/downloader/a/o;->a(Lcom/google/android/vending/expansion/downloader/a/c;)V

    iget v4, p2, Lcom/google/android/vending/expansion/downloader/a/f;->a:I

    iput v4, p2, Lcom/google/android/vending/expansion/downloader/a/f;->f:I

    iput-wide v2, p2, Lcom/google/android/vending/expansion/downloader/a/f;->g:J

    iget v2, p2, Lcom/google/android/vending/expansion/downloader/a/f;->b:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    iget-wide v4, v4, Lcom/google/android/vending/expansion/downloader/a/j;->a:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/vending/expansion/downloader/a/j;->a(J)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/a/e;->c()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/vending/expansion/downloader/k;->a()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v1, 0x1f3

    const-string v2, "external media not mounted while writing destination file"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    :cond_5
    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/k;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/k;->a(Ljava/io/File;)J

    move-result-wide v4

    int-to-long v2, v2

    cmp-long v1, v4, v2

    if-gez v1, :cond_6

    new-instance v1, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v2, 0x1f2

    const-string v3, "insufficient space while writing destination file"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance v1, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v2, 0x1ec

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "while writing destination file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    return-void
.end method

.method private static a(Lcom/google/android/vending/expansion/downloader/a/f;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/vending/expansion/downloader/a/f;->a:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/f;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/vending/expansion/downloader/a/h;Lcom/google/android/vending/expansion/downloader/a/f;[BLjava/io/InputStream;)I
    .locals 5

    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/a/e;->d()V

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget v2, p2, Lcom/google/android/vending/expansion/downloader/a/f;->a:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/google/android/vending/expansion/downloader/a/c;->f:J

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/e;->d:Lcom/google/android/vending/expansion/downloader/a/o;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    invoke-virtual {v1, v2}, Lcom/google/android/vending/expansion/downloader/a/o;->b(Lcom/google/android/vending/expansion/downloader/a/c;)Z

    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/a/e;->a(Lcom/google/android/vending/expansion/downloader/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "while reading response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", can\'t resume interrupted download with no ETag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v3, 0x1e9

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v1, Lcom/google/android/vending/expansion/downloader/a/i;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/a/e;->c(Lcom/google/android/vending/expansion/downloader/a/h;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "while reading response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b()V
    .locals 3

    const/16 v2, 0xc3

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/e;->d:Lcom/google/android/vending/expansion/downloader/a/o;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Lcom/google/android/vending/expansion/downloader/a/o;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const-string v1, "waiting for network to return"

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v1, 0xc4

    const-string v2, "waiting for wifi or for download over cellular to be authorized"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const-string v1, "roaming is not allowed"

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v1, 0xc5

    const-string v2, "waiting for wifi"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Lcom/google/android/vending/expansion/downloader/a/h;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/h;->b:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/h;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/h;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Lcom/google/android/vending/expansion/downloader/a/h;Ljava/net/HttpURLConnection;)V
    .locals 3

    const v2, 0x15180

    const/16 v1, 0x1e

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->c:Z

    const-string v0, "Retry-After"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    iget v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->d:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v1, 0xc2

    const-string v2, "got 503 Service Unavailable, will retry later"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    if-ge v0, v1, :cond_3

    const/16 v0, 0x1e

    iput v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    :cond_2
    :goto_1
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    sget-object v1, Lcom/google/android/vending/expansion/downloader/k;->a:Ljava/util/Random;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    iget v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    if-le v0, v2, :cond_2

    const v0, 0x15180

    iput v0, p1, Lcom/google/android/vending/expansion/downloader/a/h;->d:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private c(Lcom/google/android/vending/expansion/downloader/a/h;)I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/e;->d:Lcom/google/android/vending/expansion/downloader/a/o;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Lcom/google/android/vending/expansion/downloader/a/o;)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/16 v0, 0xc3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget v0, v0, Lcom/google/android/vending/expansion/downloader/a/c;->j:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iput-boolean v2, p1, Lcom/google/android/vending/expansion/downloader/a/h;->c:Z

    const/16 v0, 0xc2

    goto :goto_0

    :cond_1
    const-string v0, "LVLDL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reached max retries for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget v2, v2, Lcom/google/android/vending/expansion/downloader/a/c;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1ef

    goto :goto_0
.end method

.method private c(Lcom/google/android/vending/expansion/downloader/a/h;Ljava/net/HttpURLConnection;)I
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v2, 0x1ef

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "while trying to execute request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/a/e;->d()V

    new-instance v1, Lcom/google/android/vending/expansion/downloader/a/i;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/a/e;->c(Lcom/google/android/vending/expansion/downloader/a/h;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "while trying to execute request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/a/j;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/a/j;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-virtual {v1}, Lcom/google/android/vending/expansion/downloader/a/j;->k()I

    move-result v1

    const-string v2, "download paused"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_0
    .end packed-switch
.end method

.method private d()V
    .locals 4

    const-string v1, "LVLDL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Net "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/e;->d:Lcom/google/android/vending/expansion/downloader/a/o;

    invoke-virtual {v0, v3}, Lcom/google/android/vending/expansion/downloader/a/j;->a(Lcom/google/android/vending/expansion/downloader/a/o;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v0, "Up"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "Down"

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 13

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/16 v12, 0x1eb

    const/16 v1, 0xc8

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v8, Lcom/google/android/vending/expansion/downloader/a/h;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    invoke-direct {v8, v0, v2}, Lcom/google/android/vending/expansion/downloader/a/h;-><init>(Lcom/google/android/vending/expansion/downloader/a/c;Lcom/google/android/vending/expansion/downloader/a/j;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/a/e;->a:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v5, "LVLDL"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move v5, v3

    :goto_0
    if-nez v5, :cond_a

    new-instance v0, Ljava/net/URL;

    iget-object v3, v8, Lcom/google/android/vending/expansion/downloader/a/h;->g:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v3, "User-Agent"

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/vending/expansion/downloader/a/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v7, Lcom/google/android/vending/expansion/downloader/a/f;

    const/4 v3, 0x0

    invoke-direct {v7, v3}, Lcom/google/android/vending/expansion/downloader/a/f;-><init>(B)V

    const/16 v3, 0x1000

    new-array v9, v3, [B

    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/a/e;->c()V

    invoke-direct {p0, v8, v7}, Lcom/google/android/vending/expansion/downloader/a/e;->a(Lcom/google/android/vending/expansion/downloader/a/h;Lcom/google/android/vending/expansion/downloader/a/f;)V

    iget-boolean v3, v7, Lcom/google/android/vending/expansion/downloader/a/f;->d:Z

    if-eqz v3, :cond_1

    iget-object v3, v7, Lcom/google/android/vending/expansion/downloader/a/f;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, "If-Match"

    iget-object v4, v7, Lcom/google/android/vending/expansion/downloader/a/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "bytes="

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v7, Lcom/google/android/vending/expansion/downloader/a/f;->a:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "-"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/a/e;->b()V

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/e;->e:Lcom/google/android/vending/expansion/downloader/a/d;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/android/vending/expansion/downloader/a/d;->a(I)V

    invoke-direct {p0, v8, v0}, Lcom/google/android/vending/expansion/downloader/a/e;->c(Lcom/google/android/vending/expansion/downloader/a/h;Ljava/net/HttpURLConnection;)I

    move-result v4

    const/16 v3, 0x1f7

    if-ne v4, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget v3, v3, Lcom/google/android/vending/expansion/downloader/a/c;->j:I

    const/4 v10, 0x5

    if-ge v3, v10, :cond_2

    invoke-direct {p0, v8, v0}, Lcom/google/android/vending/expansion/downloader/a/e;->b(Lcom/google/android/vending/expansion/downloader/a/h;Ljava/net/HttpURLConnection;)V

    :cond_2
    iget-boolean v3, v7, Lcom/google/android/vending/expansion/downloader/a/f;->d:Z

    if-eqz v3, :cond_4

    const/16 v3, 0xce

    :goto_1
    if-eq v4, v3, :cond_8

    invoke-static {v4}, Lcom/google/android/vending/expansion/downloader/a/j;->b(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    new-instance v7, Lcom/google/android/vending/expansion/downloader/a/i;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http error "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, p0, v3, v4}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lcom/google/android/vending/expansion/downloader/a/g; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Lcom/google/android/vending/expansion/downloader/a/i; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "LVLDL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Aborting request for download "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/a/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/a/i;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/a/i;->printStackTrace()V

    iget v1, v0, Lcom/google/android/vending/expansion/downloader/a/i;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    invoke-direct {p0, v8, v1}, Lcom/google/android/vending/expansion/downloader/a/e;->a(Lcom/google/android/vending/expansion/downloader/a/h;I)V

    iget-boolean v2, v8, Lcom/google/android/vending/expansion/downloader/a/h;->c:Z

    iget v3, v8, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    iget v4, v8, Lcom/google/android/vending/expansion/downloader/a/h;->e:I

    iget-boolean v5, v8, Lcom/google/android/vending/expansion/downloader/a/h;->f:Z

    iget-object v6, v8, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/expansion/downloader/a/e;->a(IZIIZLjava/lang/String;)V

    :goto_3
    return-void

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    const/16 v3, 0x12c

    if-lt v4, v3, :cond_6

    const/16 v3, 0x190

    if-ge v4, v3, :cond_6

    const/16 v3, 0x1ed

    goto :goto_2

    :cond_6
    :try_start_4
    iget-boolean v3, v7, Lcom/google/android/vending/expansion/downloader/a/f;->d:Z

    if-eqz v3, :cond_7

    if-ne v4, v1, :cond_7

    const/16 v3, 0x1e9

    goto :goto_2

    :cond_7
    const/16 v3, 0x1ee

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    iput v3, v8, Lcom/google/android/vending/expansion/downloader/a/h;->e:I

    invoke-direct {p0, v8, v7, v0}, Lcom/google/android/vending/expansion/downloader/a/e;->a(Lcom/google/android/vending/expansion/downloader/a/h;Lcom/google/android/vending/expansion/downloader/a/f;Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, v8, v0}, Lcom/google/android/vending/expansion/downloader/a/e;->a(Lcom/google/android/vending/expansion/downloader/a/h;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/e;->e:Lcom/google/android/vending/expansion/downloader/a/d;

    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Lcom/google/android/vending/expansion/downloader/a/d;->a(I)V

    invoke-direct {p0, v8, v7, v9, v3}, Lcom/google/android/vending/expansion/downloader/a/e;->a(Lcom/google/android/vending/expansion/downloader/a/h;Lcom/google/android/vending/expansion/downloader/a/f;[BLjava/io/InputStream;)V
    :try_end_4
    .catch Lcom/google/android/vending/expansion/downloader/a/g; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v5, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_5
    .catch Lcom/google/android/vending/expansion/downloader/a/i; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "LVLDL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/a/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_9
    invoke-direct {p0, v8, v12}, Lcom/google/android/vending/expansion/downloader/a/e;->a(Lcom/google/android/vending/expansion/downloader/a/h;I)V

    iget-boolean v2, v8, Lcom/google/android/vending/expansion/downloader/a/h;->c:Z

    iget v3, v8, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    iget v4, v8, Lcom/google/android/vending/expansion/downloader/a/h;->e:I

    iget-boolean v5, v8, Lcom/google/android/vending/expansion/downloader/a/h;->f:Z

    iget-object v6, v8, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    move-object v0, p0

    move v1, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/expansion/downloader/a/e;->a(IZIIZLjava/lang/String;)V

    goto :goto_3

    :cond_a
    :try_start_7
    invoke-static {v8}, Lcom/google/android/vending/expansion/downloader/a/e;->a(Lcom/google/android/vending/expansion/downloader/a/h;)V

    iget-object v0, v8, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/e;->c:Lcom/google/android/vending/expansion/downloader/a/j;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/a/c;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/vending/expansion/downloader/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-wide v6, v3, Lcom/google/android/vending/expansion/downloader/a/c;->e:J

    const-wide/16 v10, -0x1

    cmp-long v3, v6, v10

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-wide v6, v3, Lcom/google/android/vending/expansion/downloader/a/c;->f:J

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/a/e;->b:Lcom/google/android/vending/expansion/downloader/a/c;

    iget-wide v10, v3, Lcom/google/android/vending/expansion/downloader/a/c;->e:J

    cmp-long v3, v6, v10

    if-nez v3, :cond_c

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v1, 0x1ec

    const-string v3, "unable to finalize destination file"

    invoke-direct {v0, p0, v1, v3}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0
    :try_end_7
    .catch Lcom/google/android/vending/expansion/downloader/a/i; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object v7, v0

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_b
    invoke-direct {p0, v8, v12}, Lcom/google/android/vending/expansion/downloader/a/e;->a(Lcom/google/android/vending/expansion/downloader/a/h;I)V

    iget-boolean v2, v8, Lcom/google/android/vending/expansion/downloader/a/h;->c:Z

    iget v3, v8, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    iget v4, v8, Lcom/google/android/vending/expansion/downloader/a/h;->e:I

    iget-boolean v5, v8, Lcom/google/android/vending/expansion/downloader/a/h;->f:Z

    iget-object v6, v8, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    move-object v0, p0

    move v1, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/expansion/downloader/a/e;->a(IZIIZLjava/lang/String;)V

    throw v7

    :cond_c
    :try_start_8
    new-instance v0, Lcom/google/android/vending/expansion/downloader/a/i;

    const/16 v1, 0x1e7

    const-string v3, "file delivered with incorrect size. probably due to network not browser configured"

    invoke-direct {v0, p0, v1, v3}, Lcom/google/android/vending/expansion/downloader/a/i;-><init>(Lcom/google/android/vending/expansion/downloader/a/e;ILjava/lang/String;)V

    throw v0
    :try_end_8
    .catch Lcom/google/android/vending/expansion/downloader/a/i; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_e
    invoke-direct {p0, v8, v1}, Lcom/google/android/vending/expansion/downloader/a/e;->a(Lcom/google/android/vending/expansion/downloader/a/h;I)V

    iget-boolean v2, v8, Lcom/google/android/vending/expansion/downloader/a/h;->c:Z

    iget v3, v8, Lcom/google/android/vending/expansion/downloader/a/h;->d:I

    iget v4, v8, Lcom/google/android/vending/expansion/downloader/a/h;->e:I

    iget-boolean v5, v8, Lcom/google/android/vending/expansion/downloader/a/h;->f:Z

    iget-object v6, v8, Lcom/google/android/vending/expansion/downloader/a/h;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/expansion/downloader/a/e;->a(IZIIZLjava/lang/String;)V

    goto/16 :goto_3
.end method
