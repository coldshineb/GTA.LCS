.class public final Lio/sentry/util/Random;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final BadBound:Ljava/lang/String; = "bound must be positive"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final addend:J = 0xbL

.field private static final mask:J = 0xffffffffffffL

.field private static final multiplier:J = 0x5deece66dL

.field private static final seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialVersionUID:J = 0x363296344bf00a53L


# instance fields
.field private final seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x1ed8b55fac9decL

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lio/sentry/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 61
    invoke-static {}, Lio/sentry/util/Random;->seedUniquifier()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lio/sentry/util/Random;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/sentry/util/Random;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p2}, Lio/sentry/util/Random;->initialScramble(J)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/sentry/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/sentry/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    invoke-virtual {p0, p1, p2}, Lio/sentry/util/Random;->setSeed(J)V

    return-void
.end method

.method private static initialScramble(J)J
    .locals 2

    const-wide v0, 0x5deece66dL

    xor-long/2addr p0, v0

    const-wide v0, 0xffffffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private next(I)I
    .locals 7

    .line 149
    iget-object v0, p0, Lio/sentry/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 151
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide v3, 0x5deece66dL

    mul-long/2addr v3, v1

    const-wide/16 v5, 0xb

    add-long/2addr v3, v5

    const-wide v5, 0xffffffffffffL

    and-long/2addr v3, v5

    .line 153
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    rsub-int/lit8 p1, p1, 0x30

    ushr-long v0, v3, p1

    long-to-int p1, v0

    return p1
.end method

.method private static seedUniquifier()J
    .locals 5

    .line 68
    :cond_0
    sget-object v0, Lio/sentry/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide v3, 0x106689d45497fdb5L    # 1.16138530132345E-229

    mul-long/2addr v3, v1

    .line 70
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v3
.end method


# virtual methods
.method final internalNextDouble(DD)D
    .locals 4

    .line 244
    invoke-virtual {p0}, Lio/sentry/util/Random;->nextDouble()D

    move-result-wide v0

    cmpg-double v2, p1, p3

    if-gez v2, :cond_0

    sub-double v2, p3, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    cmpl-double p1, v0, p3

    if-ltz p1, :cond_0

    .line 248
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide v0
.end method

.method final internalNextInt(II)I
    .locals 1

    if-ge p1, p2, :cond_1

    sub-int v0, p2, p1

    if-lez v0, :cond_0

    .line 223
    invoke-virtual {p0, v0}, Lio/sentry/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p2, p1

    return p2

    .line 227
    :cond_0
    invoke-virtual {p0}, Lio/sentry/util/Random;->nextInt()I

    move-result v0

    if-lt v0, p1, :cond_0

    if-ge v0, p2, :cond_0

    return v0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lio/sentry/util/Random;->nextInt()I

    move-result p1

    return p1
.end method

.method final internalNextLong(JJ)J
    .locals 10

    .line 192
    invoke-virtual {p0}, Lio/sentry/util/Random;->nextLong()J

    move-result-wide v0

    cmp-long v2, p1, p3

    if-gez v2, :cond_5

    sub-long v2, p3, p1

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    and-long p3, v0, v4

    add-long/2addr p3, p1

    return-wide p3

    :cond_0
    cmp-long v6, v2, v8

    if-lez v6, :cond_2

    const/4 p3, 0x1

    :goto_0
    ushr-long/2addr v0, p3

    add-long v6, v0, v4

    .line 199
    rem-long/2addr v0, v2

    sub-long/2addr v6, v0

    cmp-long p4, v6, v8

    if-gez p4, :cond_1

    .line 200
    invoke-virtual {p0}, Lio/sentry/util/Random;->nextLong()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    add-long/2addr v0, p1

    return-wide v0

    :cond_2
    :goto_1
    cmp-long v2, v0, p1

    if-ltz v2, :cond_4

    cmp-long v2, v0, p3

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    return-wide v0

    .line 204
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lio/sentry/util/Random;->nextLong()J

    move-result-wide v0

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public nextBoolean()Z
    .locals 2

    const/4 v0, 0x1

    .line 381
    invoke-direct {p0, v0}, Lio/sentry/util/Random;->next(I)I

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextBytes([B)V
    .locals 6

    .line 177
    array-length v0, p1

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lio/sentry/util/Random;->nextInt()I

    move-result v2

    sub-int v3, v0, v1

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    int-to-byte v5, v2

    .line 180
    aput-byte v5, p1, v1

    shr-int/lit8 v2, v2, 0x8

    move v1, v3

    move v3, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public nextDouble()D
    .locals 4

    const/16 v0, 0x1a

    .line 464
    invoke-direct {p0, v0}, Lio/sentry/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x1b

    shl-long/2addr v0, v2

    invoke-direct {p0, v2}, Lio/sentry/util/Random;->next(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .locals 2

    const/16 v0, 0x18

    .line 421
    invoke-direct {p0, v0}, Lio/sentry/util/Random;->next(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4b800000    # 1.6777216E7f

    div-float/2addr v0, v1

    return v0
.end method

.method public nextInt()I
    .locals 1

    const/16 v0, 0x20

    .line 271
    invoke-direct {p0, v0}, Lio/sentry/util/Random;->next(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 6

    if-lez p1, :cond_2

    const/16 v0, 0x1f

    .line 326
    invoke-direct {p0, v0}, Lio/sentry/util/Random;->next(I)I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    and-int v3, p1, v2

    if-nez v3, :cond_0

    int-to-long v2, p1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    shr-long v0, v2, v0

    long-to-int p1, v0

    return p1

    .line 331
    :cond_0
    :goto_0
    rem-int v3, v1, p1

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    if-gez v1, :cond_1

    invoke-direct {p0, v0}, Lio/sentry/util/Random;->next(I)I

    move-result v1

    goto :goto_0

    :cond_1
    return v3

    .line 324
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bound must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextLong()J
    .locals 5

    const/16 v0, 0x20

    .line 359
    invoke-direct {p0, v0}, Lio/sentry/util/Random;->next(I)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v0

    invoke-direct {p0, v0}, Lio/sentry/util/Random;->next(I)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public declared-synchronized setSeed(J)V
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lio/sentry/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p2}, Lio/sentry/util/Random;->initialScramble(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
