.class public final Lio/sentry/cache/tape/QueueFile;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/cache/tape/QueueFile$Element;,
        Lio/sentry/cache/tape/QueueFile$ElementIterator;,
        Lio/sentry/cache/tape/QueueFile$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Iterable<",
        "[B>;"
    }
.end annotation


# static fields
.field static final INITIAL_LENGTH:I = 0x1000

.field private static final VERSIONED_HEADER:I = -0x7fffffff

.field private static final ZEROES:[B


# instance fields
.field private final buffer:[B

.field closed:Z

.field elementCount:I

.field final file:Ljava/io/File;

.field fileLength:J

.field first:Lio/sentry/cache/tape/QueueFile$Element;

.field final headerLength:I

.field private last:Lio/sentry/cache/tape/QueueFile$Element;

.field private final maxElements:I

.field modCount:I

.field raf:Ljava/io/RandomAccessFile;

.field private final zero:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    .line 68
    new-array v0, v0, [B

    sput-object v0, Lio/sentry/cache/tape/QueueFile;->ZEROES:[B

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/RandomAccessFile;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 103
    iput v0, p0, Lio/sentry/cache/tape/QueueFile;->headerLength:I

    .line 118
    new-array v0, v0, [B

    iput-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    .line 164
    iput-object p1, p0, Lio/sentry/cache/tape/QueueFile;->file:Ljava/io/File;

    .line 165
    iput-object p2, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 166
    iput-boolean p3, p0, Lio/sentry/cache/tape/QueueFile;->zero:Z

    .line 167
    iput p4, p0, Lio/sentry/cache/tape/QueueFile;->maxElements:I

    .line 169
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile;->readInitialData()V

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 60
    sget-object v0, Lio/sentry/cache/tape/QueueFile;->ZEROES:[B

    return-object v0
.end method

.method static synthetic access$100(Lio/sentry/cache/tape/QueueFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile;->resetFile()V

    return-void
.end method

.method private expandIfNecessary(J)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, 0x4

    add-long v3, p1, v1

    .line 443
    invoke-direct {v0}, Lio/sentry/cache/tape/QueueFile;->remainingBytes()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-ltz v7, :cond_0

    goto/16 :goto_2

    .line 447
    :cond_0
    iget-wide v7, v0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    :cond_1
    add-long/2addr v5, v7

    const/4 v9, 0x1

    shl-long/2addr v7, v9

    cmp-long v9, v5, v3

    if-ltz v9, :cond_1

    .line 456
    invoke-direct {v0, v7, v8}, Lio/sentry/cache/tape/QueueFile;->setLength(J)V

    .line 459
    iget-object v3, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v3, v3, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    add-long/2addr v3, v1

    iget-object v1, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget v1, v1, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    int-to-long v1, v1

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide v1

    .line 462
    iget-object v3, v0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v3, v3, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    cmp-long v3, v1, v3

    const-wide/16 v9, 0x20

    if-gtz v3, :cond_3

    .line 463
    iget-object v3, v0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    .line 464
    iget-wide v3, v0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    invoke-virtual {v11, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sub-long v14, v1, v9

    const-wide/16 v12, 0x20

    move-object/from16 v16, v11

    .line 466
    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v1

    cmp-long v1, v1, v14

    if-nez v1, :cond_2

    goto :goto_0

    .line 467
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Copied insufficient number of bytes!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3
    const-wide/16 v14, 0x0

    .line 472
    :goto_0
    iget-object v1, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v1, v1, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    iget-object v3, v0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v3, v3, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 473
    iget-wide v1, v0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    iget-object v3, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v3, v3, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    add-long/2addr v1, v3

    sub-long/2addr v1, v9

    .line 474
    iget v3, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    iget-object v4, v0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v4, v4, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    move-wide/from16 v17, v7

    move-wide v6, v1

    move-wide/from16 v1, v17

    invoke-direct/range {v0 .. v7}, Lio/sentry/cache/tape/QueueFile;->writeHeader(JIJJ)V

    .line 475
    new-instance v3, Lio/sentry/cache/tape/QueueFile$Element;

    iget-object v4, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget v4, v4, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    invoke-direct {v3, v6, v7, v4}, Lio/sentry/cache/tape/QueueFile$Element;-><init>(JI)V

    iput-object v3, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    goto :goto_1

    :cond_4
    move-wide v1, v7

    .line 477
    iget v3, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    iget-object v4, v0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v4, v4, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    iget-object v6, v0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v6, v6, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    invoke-direct/range {v0 .. v7}, Lio/sentry/cache/tape/QueueFile;->writeHeader(JIJJ)V

    :goto_1
    move-wide v7, v1

    .line 480
    iput-wide v7, v0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    .line 482
    iget-boolean v1, v0, Lio/sentry/cache/tape/QueueFile;->zero:Z

    if-eqz v1, :cond_5

    .line 483
    invoke-direct {v0, v9, v10, v14, v15}, Lio/sentry/cache/tape/QueueFile;->ringErase(JJ)V

    :cond_5
    :goto_2
    return-void
.end method

.method static getSneakyThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TT;^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 815
    throw p0
.end method

.method static initializeFromFile(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-static {v0}, Lio/sentry/cache/tape/QueueFile;->open(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v1

    const-wide/16 v2, 0x1000

    .line 141
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v4, 0x0

    .line 142
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const v4, -0x7fffffff

    .line 143
    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 144
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 150
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Rename failed!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 146
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 147
    throw p0

    .line 155
    :cond_1
    :goto_0
    invoke-static {p0}, Lio/sentry/cache/tape/QueueFile;->open(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p0

    return-object p0
.end method

.method private static open(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private readInitialData()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 174
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 179
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lio/sentry/cache/tape/QueueFile;->readLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    .line 180
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lio/sentry/cache/tape/QueueFile;->readInt([BI)I

    move-result v0

    iput v0, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    .line 181
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lio/sentry/cache/tape/QueueFile;->readLong([BI)J

    move-result-wide v0

    .line 182
    iget-object v2, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lio/sentry/cache/tape/QueueFile;->readLong([BI)J

    move-result-wide v2

    .line 184
    iget-wide v4, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    iget-object v6, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 187
    iget-wide v4, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    const-wide/16 v6, 0x20

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 192
    invoke-virtual {p0, v0, v1}, Lio/sentry/cache/tape/QueueFile;->readElement(J)Lio/sentry/cache/tape/QueueFile$Element;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    .line 193
    invoke-virtual {p0, v2, v3}, Lio/sentry/cache/tape/QueueFile;->readElement(J)Lio/sentry/cache/tape/QueueFile$Element;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File is corrupt; length stored in header ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File is truncated. Expected length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 186
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readInt([BI)I
    .locals 2

    .line 216
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method private static readLong([BI)J
    .locals 7

    .line 239
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private remainingBytes()J
    .locals 4

    .line 428
    iget-wide v0, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile;->usedBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private resetFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 198
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 199
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->file:Ljava/io/File;

    invoke-static {v0}, Lio/sentry/cache/tape/QueueFile;->initializeFromFile(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 200
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile;->readInitialData()V

    return-void
.end method

.method private ringErase(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-wide v1, p1

    :goto_0
    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    .line 308
    sget-object v3, Lio/sentry/cache/tape/QueueFile;->ZEROES:[B

    array-length p1, v3

    int-to-long p1, p1

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int v5, p1

    const/4 v4, 0x0

    move-object v0, p0

    .line 309
    invoke-direct/range {v0 .. v5}, Lio/sentry/cache/tape/QueueFile;->ringWrite(J[BII)V

    int-to-long p1, v5

    sub-long/2addr p3, p1

    add-long/2addr v1, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ringWrite(J[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0, p1, p2}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide p1

    int-to-long v0, p5

    add-long/2addr v0, p1

    .line 292
    iget-wide v2, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 293
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 294
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void

    :cond_0
    sub-long/2addr v2, p1

    long-to-int v0, v2

    .line 299
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 300
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 301
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x20

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 302
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    add-int/2addr p4, v0

    sub-int/2addr p5, v0

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private setLength(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 491
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method private usedBytes()J
    .locals 9

    .line 409
    iget v0, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    const-wide/16 v1, 0x20

    if-nez v0, :cond_0

    return-wide v1

    .line 411
    :cond_0
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v3, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v5, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    cmp-long v0, v3, v5

    const-wide/16 v3, 0x4

    if-ltz v0, :cond_1

    .line 413
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v5, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v7, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    sub-long/2addr v5, v7

    add-long/2addr v5, v3

    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget v0, v0, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    int-to-long v3, v0

    add-long/2addr v5, v3

    add-long/2addr v5, v1

    return-wide v5

    .line 419
    :cond_1
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v0, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    add-long/2addr v0, v3

    iget-object v2, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget v2, v2, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v2, v2, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private writeHeader(JIJJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 259
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const v1, -0x7fffffff

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lio/sentry/cache/tape/QueueFile;->writeInt([BII)V

    .line 260
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Lio/sentry/cache/tape/QueueFile;->writeLong([BIJ)V

    .line 261
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 p2, 0xc

    invoke-static {p1, p2, p3}, Lio/sentry/cache/tape/QueueFile;->writeInt([BII)V

    .line 262
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 p2, 0x10

    invoke-static {p1, p2, p4, p5}, Lio/sentry/cache/tape/QueueFile;->writeLong([BIJ)V

    .line 263
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 p2, 0x18

    invoke-static {p1, p2, p6, p7}, Lio/sentry/cache/tape/QueueFile;->writeLong([BIJ)V

    .line 264
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/16 p3, 0x20

    invoke-virtual {p1, p2, v2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private static writeInt([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 208
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 209
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 210
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 211
    aput-byte p2, p0, p1

    return-void
.end method

.method private static writeLong([BIJ)V
    .locals 3

    const/16 v0, 0x38

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 227
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 228
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 229
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 230
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 231
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 232
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 233
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x7

    long-to-int p2, p2

    int-to-byte p2, p2

    .line 234
    aput-byte p2, p0, p1

    return-void
.end method


# virtual methods
.method public add([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 358
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lio/sentry/cache/tape/QueueFile;->add([BII)V

    return-void
.end method

.method public add([BII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    or-int v1, p2, p3

    if-ltz v1, :cond_5

    .line 374
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt p3, v1, :cond_5

    .line 377
    iget-boolean v1, p0, Lio/sentry/cache/tape/QueueFile;->closed:Z

    if-nez v1, :cond_4

    .line 380
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile;->isAtFullCapacity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile;->remove()V

    :cond_0
    int-to-long v1, p3

    .line 384
    invoke-direct {p0, v1, v2}, Lio/sentry/cache/tape/QueueFile;->expandIfNecessary(J)V

    .line 387
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile;->isEmpty()Z

    move-result v8

    const-wide/16 v9, 0x4

    if-eqz v8, :cond_1

    const-wide/16 v1, 0x20

    goto :goto_0

    .line 389
    :cond_1
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v1, v1, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    add-long/2addr v1, v9

    iget-object v3, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget v3, v3, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide v1

    .line 390
    :goto_0
    new-instance v11, Lio/sentry/cache/tape/QueueFile$Element;

    invoke-direct {v11, v1, v2, p3}, Lio/sentry/cache/tape/QueueFile$Element;-><init>(JI)V

    .line 393
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, p3}, Lio/sentry/cache/tape/QueueFile;->writeInt([BII)V

    .line 394
    iget-wide v1, v11, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    iget-object v3, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/sentry/cache/tape/QueueFile;->ringWrite(J[BII)V

    .line 397
    iget-wide v0, v11, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    add-long v1, v0, v9

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/sentry/cache/tape/QueueFile;->ringWrite(J[BII)V

    if-eqz v8, :cond_2

    .line 400
    iget-wide v1, v11, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v1, v1, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    :goto_1
    move-wide v4, v1

    .line 401
    iget-wide v1, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    iget v3, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    add-int/lit8 v3, v3, 0x1

    iget-wide v6, v11, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/sentry/cache/tape/QueueFile;->writeHeader(JIJJ)V

    .line 402
    iput-object v11, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    .line 403
    iget v1, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    .line 404
    iget v1, p0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    if-eqz v8, :cond_3

    .line 405
    iput-object v11, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    :cond_3
    return-void

    .line 377
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 372
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "data == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    iget-boolean v0, p0, Lio/sentry/cache/tape/QueueFile;->closed:Z

    if-nez v0, :cond_2

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v2, 0x1000

    const/4 v4, 0x0

    move-object v1, p0

    .line 676
    invoke-direct/range {v1 .. v8}, Lio/sentry/cache/tape/QueueFile;->writeHeader(JIJJ)V

    .line 678
    iget-boolean v0, v1, Lio/sentry/cache/tape/QueueFile;->zero:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, v1, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x20

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 681
    iget-object v0, v1, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    sget-object v3, Lio/sentry/cache/tape/QueueFile;->ZEROES:[B

    const/16 v4, 0xfe0

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 684
    :cond_0
    iput v2, v1, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    .line 685
    sget-object v0, Lio/sentry/cache/tape/QueueFile$Element;->NULL:Lio/sentry/cache/tape/QueueFile$Element;

    iput-object v0, v1, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    .line 686
    sget-object v0, Lio/sentry/cache/tape/QueueFile$Element;->NULL:Lio/sentry/cache/tape/QueueFile$Element;

    iput-object v0, v1, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    .line 687
    iget-wide v2, v1, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    const-wide/16 v4, 0x1000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-direct {p0, v4, v5}, Lio/sentry/cache/tape/QueueFile;->setLength(J)V

    .line 688
    :cond_1
    iput-wide v4, v1, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    .line 689
    iget v0, v1, Lio/sentry/cache/tape/QueueFile;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lio/sentry/cache/tape/QueueFile;->modCount:I

    return-void

    :cond_2
    move-object v1, p0

    .line 673
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 713
    iput-boolean v0, p0, Lio/sentry/cache/tape/QueueFile;->closed:Z

    .line 714
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public file()Ljava/io/File;
    .locals 1

    .line 708
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public isAtFullCapacity()Z
    .locals 3

    .line 699
    iget v0, p0, Lio/sentry/cache/tape/QueueFile;->maxElements:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 703
    :cond_0
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile;->size()I

    move-result v0

    iget v1, p0, Lio/sentry/cache/tape/QueueFile;->maxElements:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 433
    iget v0, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[B>;"
        }
    .end annotation

    .line 516
    new-instance v0, Lio/sentry/cache/tape/QueueFile$ElementIterator;

    invoke-direct {v0, p0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;-><init>(Lio/sentry/cache/tape/QueueFile;)V

    return-object v0
.end method

.method public peek()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    iget-boolean v0, p0, Lio/sentry/cache/tape/QueueFile;->closed:Z

    if-nez v0, :cond_2

    .line 497
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 498
    :cond_0
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget v7, v0, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    .line 499
    new-array v5, v7, [B

    .line 500
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v2, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    const-wide/16 v8, 0x4

    add-long v3, v2, v8

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lio/sentry/cache/tape/QueueFile;->ringRead(J[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v5

    :cond_1
    return-object v1

    .line 496
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readElement(J)Lio/sentry/cache/tape/QueueFile$Element;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 268
    sget-object p1, Lio/sentry/cache/tape/QueueFile$Element;->NULL:Lio/sentry/cache/tape/QueueFile$Element;

    return-object p1

    .line 269
    :cond_0
    iget-object v3, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/sentry/cache/tape/QueueFile;->ringRead(J[BII)Z

    move-result p1

    if-nez p1, :cond_1

    .line 271
    sget-object p1, Lio/sentry/cache/tape/QueueFile$Element;->NULL:Lio/sentry/cache/tape/QueueFile$Element;

    return-object p1

    .line 273
    :cond_1
    iget-object p1, v0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/sentry/cache/tape/QueueFile;->readInt([BI)I

    move-result p1

    .line 274
    new-instance p2, Lio/sentry/cache/tape/QueueFile$Element;

    invoke-direct {p2, v1, v2, p1}, Lio/sentry/cache/tape/QueueFile$Element;-><init>(JI)V

    return-object p2
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 617
    invoke-virtual {p0, v0}, Lio/sentry/cache/tape/QueueFile;->remove(I)V

    return-void
.end method

.method public remove(I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 632
    :cond_0
    iget v1, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    if-ne p1, v1, :cond_1

    .line 633
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile;->clear()V

    return-void

    .line 636
    :cond_1
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 639
    iget v1, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    if-gt p1, v1, :cond_5

    .line 644
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v8, v1, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    .line 648
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v1, v1, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    .line 649
    iget-object v3, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget v3, v3, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    move v10, v3

    move-wide v11, v4

    move v7, v6

    :goto_0
    move-wide v4, v1

    if-ge v7, p1, :cond_3

    add-int/lit8 v1, v10, 0x4

    int-to-long v1, v1

    add-long/2addr v11, v1

    const-wide/16 v1, 0x4

    add-long/2addr v4, v1

    int-to-long v1, v10

    add-long/2addr v4, v1

    .line 652
    invoke-virtual {p0, v4, v5}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide v1

    .line 653
    iget-object v3, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/sentry/cache/tape/QueueFile;->ringRead(J[BII)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 657
    :cond_2
    iget-object v3, p0, Lio/sentry/cache/tape/QueueFile;->buffer:[B

    invoke-static {v3, v6}, Lio/sentry/cache/tape/QueueFile;->readInt([BI)I

    move-result v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 661
    :cond_3
    iget-wide v1, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    iget v3, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    sub-int/2addr v3, p1

    iget-object v6, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v6, v6, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/sentry/cache/tape/QueueFile;->writeHeader(JIJJ)V

    .line 662
    iget v1, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    sub-int/2addr v1, p1

    iput v1, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    .line 663
    iget v1, p0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    .line 664
    new-instance v1, Lio/sentry/cache/tape/QueueFile$Element;

    invoke-direct {v1, v4, v5, v10}, Lio/sentry/cache/tape/QueueFile$Element;-><init>(JI)V

    iput-object v1, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    .line 666
    iget-boolean v1, p0, Lio/sentry/cache/tape/QueueFile;->zero:Z

    if-eqz v1, :cond_4

    .line 667
    invoke-direct {p0, v8, v9, v11, v12}, Lio/sentry/cache/tape/QueueFile;->ringErase(JJ)V

    :cond_4
    :goto_1
    return-void

    .line 640
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot remove more elements ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") than present in queue ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 637
    :cond_6
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 627
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot remove negative ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") number of elements."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method ringRead(J[BII)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide p1

    int-to-long v0, p5

    add-long/2addr v0, p1

    .line 326
    iget-wide v2, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 327
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 328
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_0

    :cond_0
    sub-long/2addr v2, p1

    long-to-int v0, v2

    .line 333
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 334
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 335
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x20

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 336
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile;->raf:Ljava/io/RandomAccessFile;

    add-int/2addr p4, v0

    sub-int/2addr p5, v0

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 347
    :catchall_0
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile;->resetFile()V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 344
    throw p1

    .line 342
    :catch_1
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile;->resetFile()V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 608
    iget v0, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueueFile{file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zero="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/cache/tape/QueueFile;->zero:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile;->last:Lio/sentry/cache/tape/QueueFile$Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method wrapPosition(J)J
    .locals 4

    .line 279
    iget-wide v0, p0, Lio/sentry/cache/tape/QueueFile;->fileLength:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide p1

    :cond_0
    const-wide/16 v2, 0x20

    add-long/2addr p1, v2

    sub-long/2addr p1, v0

    return-wide p1
.end method
