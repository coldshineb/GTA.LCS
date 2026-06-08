.class final Lcom/google/android/play/core/assetpacks/eg;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"


# static fields
.field private static final a:Lcom/google/android/play/core/assetpacks/internal/o;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/bh;

.field private final c:Lcom/google/android/play/core/assetpacks/internal/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v1, "PatchSliceTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/internal/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/eg;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/bh;Lcom/google/android/play/core/assetpacks/internal/aq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/eg;->b:Lcom/google/android/play/core/assetpacks/bh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/eg;->c:Lcom/google/android/play/core/assetpacks/internal/aq;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/ef;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/eg;->b:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ef;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/ef;->a:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/ef;->b:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/bh;->h(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/eg;->b:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/ef;->l:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/ef;->a:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/ef;->b:J

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/ef;->f:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    .line 2
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/bh;->i(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ef;->h:Ljava/io/InputStream;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/ef;->e:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    const/16 v3, 0x2000

    .line 3
    invoke-direct {v2, v1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v2

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Lcom/google/android/play/core/assetpacks/bk;

    .line 4
    invoke-direct {v3, v0, v7}, Lcom/google/android/play/core/assetpacks/bk;-><init>(Ljava/io/File;Ljava/io/File;)V

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/eg;->b:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v9, p1, Lcom/google/android/play/core/assetpacks/ef;->l:Ljava/lang/String;

    iget v10, p1, Lcom/google/android/play/core/assetpacks/ef;->c:I

    iget-wide v11, p1, Lcom/google/android/play/core/assetpacks/ef;->d:J

    iget-object v13, p1, Lcom/google/android/play/core/assetpacks/ef;->f:Ljava/lang/String;

    .line 5
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/play/core/assetpacks/bh;->p(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_1
    new-instance v4, Lcom/google/android/play/core/assetpacks/eo;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/eg;->b:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/ef;->l:Ljava/lang/String;

    iget v7, p1, Lcom/google/android/play/core/assetpacks/ef;->c:I

    iget-wide v8, p1, Lcom/google/android/play/core/assetpacks/ef;->d:J

    iget-object v10, p1, Lcom/google/android/play/core/assetpacks/ef;->f:Ljava/lang/String;

    invoke-direct/range {v4 .. v10}, Lcom/google/android/play/core/assetpacks/eo;-><init>(Lcom/google/android/play/core/assetpacks/bh;Ljava/lang/String;IJLjava/lang/String;)V

    new-instance v5, Lcom/google/android/play/core/assetpacks/cn;

    .line 9
    invoke-direct {v5, v0, v4}, Lcom/google/android/play/core/assetpacks/cn;-><init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/eo;)V

    iget-wide v6, p1, Lcom/google/android/play/core/assetpacks/ef;->g:J

    invoke-static {v3, v1, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/internal/am;->a(Lcom/google/android/play/core/assetpacks/internal/an;Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    .line 10
    invoke-virtual {v4, v2}, Lcom/google/android/play/core/assetpacks/eo;->i(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v0, Lcom/google/android/play/core/assetpacks/eg;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ef;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/ef;->l:Ljava/lang/String;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Patching and extraction finished for slice %s of pack %s."

    .line 16
    invoke-virtual {v0, v3, v1}, Lcom/google/android/play/core/assetpacks/internal/o;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/eg;->c:Lcom/google/android/play/core/assetpacks/internal/aq;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/internal/aq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/y;

    iget v1, p1, Lcom/google/android/play/core/assetpacks/ef;->k:I

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/ef;->l:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/ef;->f:Ljava/lang/String;

    .line 18
    invoke-interface {v0, v1, v3, v4, v2}, Lcom/google/android/play/core/assetpacks/y;->g(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_3
    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/ef;->h:Ljava/io/InputStream;

    .line 19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 11
    :catch_0
    sget-object v0, Lcom/google/android/play/core/assetpacks/eg;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ef;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/ef;->l:Ljava/lang/String;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Could not close file for slice %s of pack %s."

    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/internal/o;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 11
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 20
    :try_start_5
    const-class v1, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v5, v2

    .line 12
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 11
    :catch_1
    :goto_1
    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    .line 19
    sget-object v1, Lcom/google/android/play/core/assetpacks/eg;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    .line 14
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "IOException during patching %s."

    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/assetpacks/internal/o;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/ef;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/ef;->l:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error patching slice %s of pack %s."

    .line 15
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lcom/google/android/play/core/assetpacks/ef;->k:I

    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method
