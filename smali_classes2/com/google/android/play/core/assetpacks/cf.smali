.class final Lcom/google/android/play/core/assetpacks/cf;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"


# static fields
.field private static final a:Lcom/google/android/play/core/assetpacks/internal/o;


# instance fields
.field private final b:[B

.field private final c:Lcom/google/android/play/core/assetpacks/bh;

.field private final d:Lcom/google/android/play/core/assetpacks/co;

.field private final e:Lcom/google/android/play/core/assetpacks/eb;

.field private final f:Lcom/google/android/play/core/assetpacks/internal/aq;

.field private final g:Lcom/google/android/play/core/assetpacks/internal/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v1, "ExtractChunkTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/internal/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/bh;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/co;Lcom/google/android/play/core/assetpacks/eb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/cf;->b:[B

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cf;->c:Lcom/google/android/play/core/assetpacks/bh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cf;->f:Lcom/google/android/play/core/assetpacks/internal/aq;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/cf;->g:Lcom/google/android/play/core/assetpacks/internal/aq;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/cf;->d:Lcom/google/android/play/core/assetpacks/co;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/cf;->e:Lcom/google/android/play/core/assetpacks/eb;

    return-void
.end method

.method private final b(Lcom/google/android/play/core/assetpacks/ce;)Ljava/io/File;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cf;->c:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ce;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/ce;->a:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/ce;->b:J

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/ce;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/bh;->p(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/ce;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    new-instance v3, Lcom/google/android/play/core/assetpacks/eo;

    iget-object v4, v1, Lcom/google/android/play/core/assetpacks/cf;->c:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/ce;->l:Ljava/lang/String;

    iget v6, v2, Lcom/google/android/play/core/assetpacks/ce;->a:I

    iget-wide v7, v2, Lcom/google/android/play/core/assetpacks/ce;->b:J

    iget-object v9, v2, Lcom/google/android/play/core/assetpacks/ce;->d:Ljava/lang/String;

    invoke-direct/range {v3 .. v9}, Lcom/google/android/play/core/assetpacks/eo;-><init>(Lcom/google/android/play/core/assetpacks/bh;Ljava/lang/String;IJLjava/lang/String;)V

    .line 2
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/bh;->o(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/ce;->j:Ljava/io/InputStream;

    iget v4, v2, Lcom/google/android/play/core/assetpacks/ce;->e:I

    const/16 v10, 0x2000

    const/4 v11, 0x1

    if-eq v4, v11, :cond_1

    move-object v12, v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    .line 5
    invoke-direct {v4, v0, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v12, v4

    :goto_0
    const/4 v13, 0x0

    :try_start_1
    iget v0, v2, Lcom/google/android/play/core/assetpacks/ce;->f:I

    const/4 v14, 0x3

    if-lez v0, :cond_c

    .line 6
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/eo;->b()Lcom/google/android/play/core/assetpacks/em;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/em;->b()I

    move-result v4

    iget v5, v2, Lcom/google/android/play/core/assetpacks/ce;->f:I

    add-int/lit8 v6, v5, -0x1

    if-ne v4, v6, :cond_b

    .line 8
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/em;->a()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v15, 0x0

    if-eq v4, v11, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    if-ne v4, v14, :cond_3

    .line 35
    :try_start_2
    sget-object v4, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v5, "Resuming central directory from last chunk."

    new-array v6, v13, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v4, v5, v6}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/em;->c()J

    move-result-wide v4

    .line 10
    invoke-virtual {v3, v12, v4, v5}, Lcom/google/android/play/core/assetpacks/eo;->d(Ljava/io/InputStream;J)V

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/ce;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    move-object/from16 v17, v12

    goto/16 :goto_4

    .line 53
    :cond_2
    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    const-string v3, "Chunk has ended twice during central directory. This should not be possible with chunk sizes of 50MB."

    iget v4, v2, Lcom/google/android/play/core/assetpacks/ce;->k:I

    .line 11
    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 77
    :cond_3
    new-instance v3, Lcom/google/android/play/core/assetpacks/ck;

    const-string v4, "Slice checkpoint file corrupt. Unexpected FileExtractionStatus %s."

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/em;->a()I

    move-result v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 76
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v4, v2, Lcom/google/android/play/core/assetpacks/ce;->k:I

    invoke-direct {v3, v0, v4}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 8
    :cond_4
    sget-object v0, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v4, "Resuming zip entry from last chunk during local file header."

    new-array v5, v13, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v4, v5}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v15, v1, Lcom/google/android/play/core/assetpacks/cf;->c:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/ce;->l:Ljava/lang/String;

    iget v4, v2, Lcom/google/android/play/core/assetpacks/ce;->a:I

    iget-wide v5, v2, Lcom/google/android/play/core/assetpacks/ce;->b:J

    iget-object v7, v2, Lcom/google/android/play/core/assetpacks/ce;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    move/from16 v17, v4

    move-wide/from16 v18, v5

    move-object/from16 v20, v7

    .line 13
    invoke-virtual/range {v15 .. v20}, Lcom/google/android/play/core/assetpacks/bh;->m(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 16
    new-instance v15, Ljava/io/SequenceInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v4, v12}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    goto :goto_1

    .line 14
    :cond_5
    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    const-string v3, "Checkpoint extension file not found."

    iget v4, v2, Lcom/google/android/play/core/assetpacks/ce;->k:I

    .line 15
    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v17, v12

    goto/16 :goto_c

    .line 10
    :cond_6
    :try_start_3
    sget-object v4, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v5, "Resuming zip entry from last chunk during file %s."

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/em;->e()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 17
    invoke-virtual {v4, v5, v6}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/em;->e()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 20
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    .line 21
    invoke-direct {v5, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/em;->c()J

    move-result-wide v6

    .line 22
    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/em;->d()J

    move-result-wide v6

    :goto_2
    const-wide/16 v8, 0x2000

    .line 23
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v0, v8

    iget-object v8, v1, Lcom/google/android/play/core/assetpacks/cf;->b:[B

    .line 24
    invoke-virtual {v12, v8, v13, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-lez v8, :cond_7

    :try_start_4
    iget-object v9, v1, Lcom/google/android/play/core/assetpacks/cf;->b:[B

    .line 25
    invoke-virtual {v5, v9, v13, v8}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    move-object/from16 v17, v12

    int-to-long v11, v8

    sub-long/2addr v6, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v6, v11

    if-lez v9, :cond_9

    if-gtz v8, :cond_8

    goto :goto_3

    :cond_8
    move-object/from16 v12, v17

    const/4 v11, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    move-wide v11, v6

    move-object v7, v5

    .line 26
    :try_start_5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    .line 27
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    if-eq v8, v0, :cond_d

    sget-object v0, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v7, "Chunk has ended while resuming the previous chunks file content."

    new-array v8, v13, [Ljava/lang/Object;

    .line 28
    invoke-virtual {v0, v7, v8}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 29
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    iget v9, v2, Lcom/google/android/play/core/assetpacks/ce;->f:I

    move-wide v7, v11

    .line 30
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/play/core/assetpacks/eo;->g(Ljava/lang/String;JJI)V

    goto :goto_4

    :cond_a
    move-object/from16 v17, v12

    .line 19
    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    const-string v3, "Partial file specified in checkpoint does not exist. Corrupt directory."

    iget v4, v2, Lcom/google/android/play/core/assetpacks/ce;->k:I

    .line 20
    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_b
    move-object/from16 v17, v12

    .line 6
    new-instance v3, Lcom/google/android/play/core/assetpacks/ck;

    const-string v4, "Trying to resume with chunk number %s when previously processed chunk was number %s."

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/em;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v4, v2, Lcom/google/android/play/core/assetpacks/ce;->k:I

    invoke-direct {v3, v0, v4}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_c
    move-object/from16 v17, v12

    :cond_d
    move-object/from16 v15, v17

    :goto_4
    if-eqz v15, :cond_18

    .line 16
    new-instance v0, Lcom/google/android/play/core/assetpacks/bw;

    .line 31
    invoke-direct {v0, v15}, Lcom/google/android/play/core/assetpacks/bw;-><init>(Ljava/io/InputStream;)V

    .line 32
    invoke-direct/range {p0 .. p1}, Lcom/google/android/play/core/assetpacks/cf;->b(Lcom/google/android/play/core/assetpacks/ce;)Ljava/io/File;

    move-result-object v4

    .line 33
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bw;->b()Lcom/google/android/play/core/assetpacks/eu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/eu;->e()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bw;->c()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/eu;->h()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 34
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/eu;->g()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/eu;->f()[B

    move-result-object v6

    .line 36
    invoke-virtual {v3, v6}, Lcom/google/android/play/core/assetpacks/eo;->j([B)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/eu;->c()Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    new-instance v7, Ljava/io/FileOutputStream;

    .line 39
    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/cf;->b:[B

    .line 40
    invoke-virtual {v0, v6, v13, v10}, Lcom/google/android/play/core/assetpacks/bw;->read([BII)I

    move-result v6

    :goto_5
    if-lez v6, :cond_f

    iget-object v8, v1, Lcom/google/android/play/core/assetpacks/cf;->b:[B

    .line 41
    invoke-virtual {v7, v8, v13, v6}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/cf;->b:[B

    .line 42
    invoke-virtual {v0, v6, v13, v10}, Lcom/google/android/play/core/assetpacks/bw;->read([BII)I

    move-result v6

    goto :goto_5

    .line 43
    :cond_f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    .line 56
    :cond_10
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/eu;->f()[B

    move-result-object v6

    .line 35
    invoke-virtual {v3, v6, v0}, Lcom/google/android/play/core/assetpacks/eo;->k([BLjava/io/InputStream;)V

    .line 43
    :cond_11
    :goto_6
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bw;->d()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bw;->c()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_12
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bw;->c()Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v6, "Writing central directory metadata."

    new-array v7, v13, [Ljava/lang/Object;

    .line 44
    invoke-virtual {v4, v6, v7}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/eu;->f()[B

    move-result-object v4

    .line 45
    invoke-virtual {v3, v4, v15}, Lcom/google/android/play/core/assetpacks/eo;->k([BLjava/io/InputStream;)V

    :cond_13
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/ce;->a()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/eu;->e()Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v0, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v4, "Writing slice checkpoint for partial local file header."

    new-array v6, v13, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v0, v4, v6}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/eu;->f()[B

    move-result-object v0

    iget v4, v2, Lcom/google/android/play/core/assetpacks/ce;->f:I

    .line 47
    invoke-virtual {v3, v0, v4}, Lcom/google/android/play/core/assetpacks/eo;->h([BI)V

    goto :goto_8

    .line 74
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bw;->c()Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v0, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v4, "Writing slice checkpoint for central directory."

    new-array v5, v13, [Ljava/lang/Object;

    .line 48
    invoke-virtual {v0, v4, v5}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget v0, v2, Lcom/google/android/play/core/assetpacks/ce;->f:I

    .line 49
    invoke-virtual {v3, v0}, Lcom/google/android/play/core/assetpacks/eo;->f(I)V

    goto :goto_8

    :cond_15
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/eu;->a()I

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v6, "Writing slice checkpoint for partial file."

    new-array v7, v13, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v4, v6, v7}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v4, Ljava/io/File;

    .line 51
    invoke-direct/range {p0 .. p1}, Lcom/google/android/play/core/assetpacks/cf;->b(Lcom/google/android/play/core/assetpacks/ce;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/eu;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/eu;->b()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bw;->a()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 52
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-nez v7, :cond_16

    goto :goto_7

    .line 69
    :cond_16
    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    const-string v3, "Partial file is of unexpected size."

    .line 53
    invoke-direct {v0, v3}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_17
    sget-object v4, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v5, "Writing slice checkpoint for partial unextractable file."

    new-array v6, v13, [Ljava/lang/Object;

    .line 54
    invoke-virtual {v4, v5, v6}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 55
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/eo;->c()Ljava/io/File;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 57
    :goto_7
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bw;->a()J

    move-result-wide v7

    iget v9, v2, Lcom/google/android/play/core/assetpacks/ce;->f:I

    .line 58
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/play/core/assetpacks/eo;->g(Ljava/lang/String;JJI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    .line 59
    :cond_18
    :goto_8
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/ce;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_7
    iget v0, v2, Lcom/google/android/play/core/assetpacks/ce;->f:I

    .line 60
    invoke-virtual {v3, v0}, Lcom/google/android/play/core/assetpacks/eo;->i(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 76
    sget-object v3, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    .line 61
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Writing extraction finished checkpoint failed with %s."

    invoke-virtual {v3, v5, v4}, Lcom/google/android/play/core/assetpacks/internal/o;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v3, Lcom/google/android/play/core/assetpacks/ck;

    iget v2, v2, Lcom/google/android/play/core/assetpacks/ce;->k:I

    const-string v4, "Writing extraction finished checkpoint failed."

    .line 62
    invoke-direct {v3, v4, v0, v2}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v3

    .line 60
    :cond_19
    :goto_9
    sget-object v0, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    iget v3, v2, Lcom/google/android/play/core/assetpacks/ce;->f:I

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/ce;->d:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/ce;->l:Ljava/lang/String;

    iget v6, v2, Lcom/google/android/play/core/assetpacks/ce;->k:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Extraction finished for chunk %s of slice %s of pack %s of session %s."

    .line 64
    invoke-virtual {v0, v4, v3}, Lcom/google/android/play/core/assetpacks/internal/o;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/cf;->f:Lcom/google/android/play/core/assetpacks/internal/aq;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/internal/aq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/y;

    iget v3, v2, Lcom/google/android/play/core/assetpacks/ce;->k:I

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/ce;->l:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/ce;->d:Ljava/lang/String;

    iget v6, v2, Lcom/google/android/play/core/assetpacks/ce;->f:I

    .line 66
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/google/android/play/core/assetpacks/y;->g(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_8
    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/ce;->j:Ljava/io/InputStream;

    .line 67
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_a

    .line 62
    :catch_1
    sget-object v0, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    iget v3, v2, Lcom/google/android/play/core/assetpacks/ce;->f:I

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/ce;->d:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/ce;->l:Ljava/lang/String;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Could not close file for chunk %s of slice %s of pack %s."

    .line 69
    invoke-virtual {v0, v4, v3}, Lcom/google/android/play/core/assetpacks/internal/o;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    :goto_a
    iget v0, v2, Lcom/google/android/play/core/assetpacks/ce;->i:I

    if-ne v0, v14, :cond_1a

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/cf;->g:Lcom/google/android/play/core/assetpacks/internal/aq;

    .line 70
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/internal/aq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/bb;

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/ce;->l:Ljava/lang/String;

    iget-wide v5, v2, Lcom/google/android/play/core/assetpacks/ce;->h:J

    iget-object v4, v1, Lcom/google/android/play/core/assetpacks/cf;->d:Lcom/google/android/play/core/assetpacks/co;

    .line 71
    invoke-virtual {v4, v3, v2}, Lcom/google/android/play/core/assetpacks/co;->b(Ljava/lang/String;Lcom/google/android/play/core/assetpacks/dg;)D

    move-result-wide v9

    iget-object v12, v2, Lcom/google/android/play/core/assetpacks/ce;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/play/core/assetpacks/cf;->e:Lcom/google/android/play/core/assetpacks/eb;

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/ce;->l:Ljava/lang/String;

    .line 72
    invoke-virtual {v4, v2}, Lcom/google/android/play/core/assetpacks/eb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v11, 0x1

    move-wide v7, v5

    .line 73
    invoke-static/range {v2 .. v13}, Lcom/google/android/play/core/assetpacks/AssetPackState;->a(Ljava/lang/String;IIJJDILjava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Lcom/google/android/play/core/assetpacks/bb;->d(Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    :cond_1a
    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v17, v12

    :goto_b
    move-object v3, v0

    .line 77
    :goto_c
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    .line 11
    :try_start_a
    const-class v4, Ljava/lang/Throwable;

    const-string v5, "addSuppressed"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v13

    .line 78
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 77
    :catch_2
    :goto_d
    :try_start_b
    throw v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    move-exception v0

    .line 30
    sget-object v3, Lcom/google/android/play/core/assetpacks/cf;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    .line 79
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "IOException during extraction %s."

    invoke-virtual {v3, v5, v4}, Lcom/google/android/play/core/assetpacks/internal/o;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v3, Lcom/google/android/play/core/assetpacks/ck;

    iget v4, v2, Lcom/google/android/play/core/assetpacks/ce;->f:I

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/ce;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/play/core/assetpacks/ce;->l:Ljava/lang/String;

    iget v7, v2, Lcom/google/android/play/core/assetpacks/ce;->k:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error extracting chunk %s of slice %s of pack %s of session %s."

    .line 81
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v2, v2, Lcom/google/android/play/core/assetpacks/ce;->k:I

    invoke-direct {v3, v4, v0, v2}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v3
.end method
