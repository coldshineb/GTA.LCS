.class final Lcom/google/android/play/core/assetpacks/bt;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"


# direct methods
.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetLocation;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1
    :goto_0
    const-string v5, "Attempted to get file location from a null apk path."

    invoke-static {v4, v5}, Lcom/google/android/play/core/assetpacks/internal/aj;->b(ZLjava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Attempted to get file location in apk %s with a null file path."

    .line 2
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v3

    .line 3
    :goto_1
    invoke-static {v5, v4}, Lcom/google/android/play/core/assetpacks/internal/aj;->b(ZLjava/lang/Object;)V

    new-instance v4, Ljava/io/RandomAccessFile;

    .line 4
    const-string v5, "r"

    invoke-direct {v4, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x16

    new-array v6, v5, [B

    .line 5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v9, -0x16

    add-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    invoke-virtual {v4, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 7
    invoke-static {v6, v3}, Lcom/google/android/play/core/assetpacks/br;->b([BI)I

    move-result v7

    const v8, 0x504b0506

    if-ne v7, v8, :cond_2

    .line 8
    invoke-static {v6}, Lcom/google/android/play/core/assetpacks/bt;->b([B)Lcom/google/android/play/core/assetpacks/bs;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x6

    if-nez v6, :cond_b

    .line 9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    add-long/2addr v9, v12

    const-wide/16 v14, 0x400

    move-wide/from16 v17, v12

    const/16 v16, 0x0

    .line 10
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v6, v11

    .line 11
    new-array v11, v6, [B

    new-array v5, v5, [B

    :goto_3
    const-wide/32 v12, -0x10016

    add-long v12, v17, v12

    const-wide/16 v14, 0x0

    cmp-long v19, v12, v14

    if-gez v19, :cond_3

    move-wide v12, v14

    :cond_3
    int-to-long v14, v6

    sub-long/2addr v9, v14

    const-wide/16 v14, 0x3

    add-long/2addr v9, v14

    .line 12
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 13
    invoke-virtual {v4, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 14
    invoke-virtual {v4, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    add-int/lit8 v14, v6, -0x4

    :goto_4
    if-ltz v14, :cond_9

    .line 15
    aget-byte v15, v11, v14

    const/4 v2, 0x5

    if-eq v15, v2, :cond_7

    if-eq v15, v7, :cond_6

    const/16 v2, 0x4b

    if-eq v15, v2, :cond_5

    const/16 v2, 0x50

    if-eq v15, v2, :cond_4

    const/4 v2, -0x1

    goto :goto_5

    :cond_4
    move v2, v3

    goto :goto_5

    :cond_5
    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x3

    goto :goto_5

    :cond_7
    const/4 v2, 0x2

    :goto_5
    if-ltz v2, :cond_8

    if-lt v14, v2, :cond_8

    sub-int v15, v14, v2

    .line 16
    invoke-static {v11, v15}, Lcom/google/android/play/core/assetpacks/br;->b([BI)I

    move-result v15

    if-ne v15, v8, :cond_8

    int-to-long v11, v14

    add-long/2addr v9, v11

    int-to-long v11, v2

    sub-long/2addr v9, v11

    .line 17
    invoke-virtual {v4, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 18
    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 19
    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/bt;->b([B)Lcom/google/android/play/core/assetpacks/bs;

    move-result-object v6

    goto :goto_6

    :cond_8
    add-int/lit8 v14, v14, -0x4

    goto :goto_4

    :cond_9
    cmp-long v2, v9, v12

    if-eqz v2, :cond_a

    goto :goto_3

    .line 47
    :cond_a
    new-instance v0, Ljava/util/zip/ZipException;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "End Of Central Directory signature not found in APK %s"

    .line 48
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/16 v16, 0x0

    .line 19
    :goto_6
    iget-wide v8, v6, Lcom/google/android/play/core/assetpacks/bs;->a:J

    .line 20
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v5, 0x2e

    new-array v5, v5, [B

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    new-array v10, v10, [B

    move v11, v3

    :goto_7
    iget v12, v6, Lcom/google/android/play/core/assetpacks/bs;->b:I

    if-ge v11, v12, :cond_e

    .line 22
    invoke-virtual {v4, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 23
    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 24
    invoke-static {v5, v3}, Lcom/google/android/play/core/assetpacks/br;->b([BI)I

    move-result v12

    const v13, 0x504b0102

    if-ne v12, v13, :cond_d

    const-wide/16 v12, 0x1c

    add-long/2addr v12, v8

    .line 25
    invoke-virtual {v4, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v12, 0x1c

    .line 26
    invoke-static {v5, v12}, Lcom/google/android/play/core/assetpacks/br;->a([BI)I

    move-result v12

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v12, v13, :cond_c

    const-wide/16 v13, 0x2e

    add-long/2addr v13, v8

    .line 28
    invoke-virtual {v4, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 29
    invoke-virtual {v4, v10}, Ljava/io/RandomAccessFile;->read([B)I

    .line 30
    invoke-static {v10, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_c

    const/16 v0, 0x2a

    .line 39
    invoke-static {v5, v0}, Lcom/google/android/play/core/assetpacks/br;->c([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_8

    :cond_c
    const/16 v13, 0x1e

    .line 31
    invoke-static {v5, v13}, Lcom/google/android/play/core/assetpacks/br;->a([BI)I

    move-result v13

    const/16 v14, 0x20

    .line 32
    invoke-static {v5, v14}, Lcom/google/android/play/core/assetpacks/br;->a([BI)I

    move-result v14

    add-int/lit8 v12, v12, 0x2e

    add-int/2addr v12, v13

    add-int/2addr v12, v14

    int-to-long v12, v12

    add-long/2addr v8, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 33
    :cond_d
    new-instance v7, Ljava/util/zip/ZipException;

    .line 34
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v6, Lcom/google/android/play/core/assetpacks/bs;->b:I

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 36
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 37
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Missing central directory file header signature when looking for file %s in APK %s. Read %d entries out of %d. Found %d instead of the header signature %d."

    .line 38
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_e
    move-object/from16 v0, v16

    :goto_8
    if-nez v0, :cond_f

    return-object v16

    .line 40
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, 0x16

    add-long/2addr v5, v0

    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 41
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 42
    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 43
    invoke-static {v2, v3}, Lcom/google/android/play/core/assetpacks/br;->c([BI)J

    move-result-wide v4

    const/4 v3, 0x4

    .line 44
    invoke-static {v2, v3}, Lcom/google/android/play/core/assetpacks/br;->a([BI)I

    move-result v3

    int-to-long v8, v3

    .line 45
    invoke-static {v2, v7}, Lcom/google/android/play/core/assetpacks/br;->a([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v6, 0x1e

    add-long/2addr v0, v6

    move-wide v6, v0

    new-instance v0, Lcom/google/android/play/core/assetpacks/bl;

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    move-object/from16 v1, p0

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/bl;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method private static b([B)Lcom/google/android/play/core/assetpacks/bs;
    .locals 7

    const/16 v0, 0xa

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/play/core/assetpacks/br;->a([BI)I

    move-result v6

    const/16 v0, 0xc

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/play/core/assetpacks/br;->c([BI)J

    move-result-wide v4

    const/16 v0, 0x10

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/play/core/assetpacks/br;->c([BI)J

    move-result-wide v2

    new-instance v1, Lcom/google/android/play/core/assetpacks/bs;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/play/core/assetpacks/bs;-><init>(JJI)V

    return-object v1
.end method
