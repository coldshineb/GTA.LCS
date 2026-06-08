.class final Lcom/google/android/play/core/assetpacks/dh;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.1.0"


# static fields
.field private static final a:Lcom/google/android/play/core/assetpacks/internal/o;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/de;

.field private final c:Lcom/google/android/play/core/assetpacks/bh;

.field private final d:Lcom/google/android/play/core/assetpacks/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v1, "ExtractorTaskFinder"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/internal/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/dh;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/de;Lcom/google/android/play/core/assetpacks/bh;Lcom/google/android/play/core/assetpacks/bu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/dh;->b:Lcom/google/android/play/core/assetpacks/de;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/dh;->c:Lcom/google/android/play/core/assetpacks/bh;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/dh;->d:Lcom/google/android/play/core/assetpacks/bu;

    return-void
.end method

.method private final b(Lcom/google/android/play/core/assetpacks/db;Lcom/google/android/play/core/assetpacks/dc;)Z
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/eo;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/dh;->c:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    move-object v3, v2

    iget-object v2, v3, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/db;->b:I

    iget-wide v4, v3, Lcom/google/android/play/core/assetpacks/da;->b:J

    iget-object v6, p2, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/assetpacks/eo;-><init>(Lcom/google/android/play/core/assetpacks/bh;Ljava/lang/String;IJLjava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/eo;->m()Z

    move-result p1

    return p1
.end method

.method private static c(Lcom/google/android/play/core/assetpacks/dc;)Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/google/android/play/core/assetpacks/dc;->f:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method final a()Lcom/google/android/play/core/assetpacks/dg;
    .locals 27

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/dh;->b:Lcom/google/android/play/core/assetpacks/de;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/de;->j()V

    new-instance v2, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/dh;->b:Lcom/google/android/play/core/assetpacks/de;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/de;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/assetpacks/db;

    .line 4
    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/da;->d:I

    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/bg;->b(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/dh;->c:Lcom/google/android/play/core/assetpacks/bh;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/bh;->t()Ljava/util/Map;

    move-result-object v0

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/assetpacks/db;

    .line 9
    iget-object v6, v5, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_2

    .line 10
    iget-object v7, v5, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-wide v7, v7, Lcom/google/android/play/core/assetpacks/da;->b:J

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v6, v7, v9

    if-nez v6, :cond_2

    sget-object v0, Lcom/google/android/play/core/assetpacks/dh;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v4, "Found promote pack task for session %s with pack %s."

    .line 11
    iget v6, v5, Lcom/google/android/play/core/assetpacks/db;->a:I

    .line 12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v7, v7, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 11
    invoke-virtual {v0, v4, v6}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v7, Lcom/google/android/play/core/assetpacks/ei;

    .line 13
    iget v8, v5, Lcom/google/android/play/core/assetpacks/db;->a:I

    iget-object v0, v5, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v9, v0, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/dh;->c:Lcom/google/android/play/core/assetpacks/bh;

    .line 14
    invoke-virtual {v0, v9}, Lcom/google/android/play/core/assetpacks/bh;->a(Ljava/lang/String;)I

    move-result v10

    iget v11, v5, Lcom/google/android/play/core/assetpacks/db;->b:I

    iget-object v0, v5, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-wide v12, v0, Lcom/google/android/play/core/assetpacks/da;->b:J

    invoke-direct/range {v7 .. v13}, Lcom/google/android/play/core/assetpacks/ei;-><init>(ILjava/lang/String;IIJ)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_15

    .line 15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/db;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, v1, Lcom/google/android/play/core/assetpacks/dh;->c:Lcom/google/android/play/core/assetpacks/bh;

    .line 16
    iget-object v6, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v7, v6, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget v8, v4, Lcom/google/android/play/core/assetpacks/db;->b:I

    iget-wide v9, v6, Lcom/google/android/play/core/assetpacks/da;->b:J

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/google/android/play/core/assetpacks/bh;->b(Ljava/lang/String;IJ)I

    move-result v5

    iget-object v6, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/da;->f:Ljava/util/List;

    .line 17
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v6, :cond_4

    :try_start_2
    sget-object v0, Lcom/google/android/play/core/assetpacks/dh;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v5, "Found final move task for session %s with pack %s."

    .line 21
    iget v6, v4, Lcom/google/android/play/core/assetpacks/db;->a:I

    .line 22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v7, v7, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 21
    invoke-virtual {v0, v5, v6}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v7, Lcom/google/android/play/core/assetpacks/dw;

    .line 23
    iget v8, v4, Lcom/google/android/play/core/assetpacks/db;->a:I

    iget-object v0, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v9, v0, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget v10, v4, Lcom/google/android/play/core/assetpacks/db;->b:I

    iget-wide v11, v0, Lcom/google/android/play/core/assetpacks/da;->b:J

    iget-object v13, v0, Lcom/google/android/play/core/assetpacks/da;->c:Ljava/lang/String;

    invoke-direct/range {v7 .. v13}, Lcom/google/android/play/core/assetpacks/dw;-><init>(ILjava/lang/String;IJLjava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    .line 70
    new-instance v2, Lcom/google/android/play/core/assetpacks/ck;

    const-string v3, "Failed to check number of completed merges for session %s, pack %s"

    .line 18
    iget v5, v4, Lcom/google/android/play/core/assetpacks/db;->a:I

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 20
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v4, Lcom/google/android/play/core/assetpacks/db;->a:I

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_15

    .line 24
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/db;

    .line 25
    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget v6, v5, Lcom/google/android/play/core/assetpacks/da;->d:I

    invoke-static {v6}, Lcom/google/android/play/core/assetpacks/bg;->b(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/da;->f:Ljava/util/List;

    .line 26
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/play/core/assetpacks/dc;

    iget-object v7, v1, Lcom/google/android/play/core/assetpacks/dh;->c:Lcom/google/android/play/core/assetpacks/bh;

    .line 27
    iget-object v8, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v9, v8, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    move-object v10, v9

    iget v9, v4, Lcom/google/android/play/core/assetpacks/db;->b:I

    iget-wide v11, v8, Lcom/google/android/play/core/assetpacks/da;->b:J

    move-object v8, v10

    move-wide v10, v11

    iget-object v12, v6, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    .line 28
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/play/core/assetpacks/bh;->q(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 29
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v0, Lcom/google/android/play/core/assetpacks/dh;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v5, "Found merge task for session %s with pack %s and slice %s."

    .line 30
    iget v7, v4, Lcom/google/android/play/core/assetpacks/db;->a:I

    .line 31
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v8, v8, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 30
    invoke-virtual {v0, v5, v7}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v8, Lcom/google/android/play/core/assetpacks/dt;

    .line 32
    iget v9, v4, Lcom/google/android/play/core/assetpacks/db;->a:I

    iget-object v0, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v10, v0, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget v11, v4, Lcom/google/android/play/core/assetpacks/db;->b:I

    iget-wide v12, v0, Lcom/google/android/play/core/assetpacks/da;->b:J

    iget-object v14, v6, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    invoke-direct/range {v8 .. v14}, Lcom/google/android/play/core/assetpacks/dt;-><init>(ILjava/lang/String;IJLjava/lang/String;)V

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_14

    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/db;

    .line 34
    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget v6, v5, Lcom/google/android/play/core/assetpacks/da;->d:I

    invoke-static {v6}, Lcom/google/android/play/core/assetpacks/bg;->b(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/da;->f:Ljava/util/List;

    .line 35
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/play/core/assetpacks/dc;

    .line 36
    invoke-direct {v1, v4, v6}, Lcom/google/android/play/core/assetpacks/dh;->b(Lcom/google/android/play/core/assetpacks/db;Lcom/google/android/play/core/assetpacks/dc;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v8, v1, Lcom/google/android/play/core/assetpacks/dh;->c:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v7, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget v10, v4, Lcom/google/android/play/core/assetpacks/db;->b:I

    iget-wide v11, v7, Lcom/google/android/play/core/assetpacks/da;->b:J

    iget-object v13, v6, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    .line 37
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/play/core/assetpacks/bh;->p(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 38
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v0, Lcom/google/android/play/core/assetpacks/dh;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v5, "Found verify task for session %s with pack %s and slice %s."

    .line 39
    iget v7, v4, Lcom/google/android/play/core/assetpacks/db;->a:I

    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v8, v8, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 39
    invoke-virtual {v0, v5, v7}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v8, Lcom/google/android/play/core/assetpacks/er;

    .line 41
    iget v9, v4, Lcom/google/android/play/core/assetpacks/db;->a:I

    iget-object v0, v4, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v10, v0, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget v11, v4, Lcom/google/android/play/core/assetpacks/db;->b:I

    iget-wide v12, v0, Lcom/google/android/play/core/assetpacks/da;->b:J

    iget-object v14, v6, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    iget-object v15, v6, Lcom/google/android/play/core/assetpacks/dc;->b:Ljava/lang/String;

    iget-wide v4, v6, Lcom/google/android/play/core/assetpacks/dc;->c:J

    move-wide/from16 v16, v4

    invoke-direct/range {v8 .. v17}, Lcom/google/android/play/core/assetpacks/er;-><init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_14

    .line 42
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/play/core/assetpacks/db;

    .line 43
    iget-object v0, v6, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget v7, v0, Lcom/google/android/play/core/assetpacks/da;->d:I

    invoke-static {v7}, Lcom/google/android/play/core/assetpacks/bg;->b(I)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/da;->f:Ljava/util/List;

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/play/core/assetpacks/dc;

    .line 45
    invoke-static {v8}, Lcom/google/android/play/core/assetpacks/dh;->c(Lcom/google/android/play/core/assetpacks/dc;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 46
    new-instance v9, Lcom/google/android/play/core/assetpacks/eo;

    iget-object v10, v1, Lcom/google/android/play/core/assetpacks/dh;->c:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v0, v6, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v11, v0, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget v12, v6, Lcom/google/android/play/core/assetpacks/db;->b:I

    iget-wide v13, v0, Lcom/google/android/play/core/assetpacks/da;->b:J

    iget-object v15, v8, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    invoke-direct/range {v9 .. v15}, Lcom/google/android/play/core/assetpacks/eo;-><init>(Lcom/google/android/play/core/assetpacks/bh;Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    invoke-virtual {v9}, Lcom/google/android/play/core/assetpacks/eo;->a()I

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 20
    :try_start_4
    sget-object v9, Lcom/google/android/play/core/assetpacks/dh;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v10, "Slice checkpoint corrupt, restarting extraction. %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 48
    invoke-virtual {v9, v10, v0}, Lcom/google/android/play/core/assetpacks/internal/o;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v5

    :goto_5
    const/4 v9, -0x1

    if-eq v0, v9, :cond_d

    .line 49
    iget-object v9, v8, Lcom/google/android/play/core/assetpacks/dc;->d:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/play/core/assetpacks/cz;

    iget-boolean v9, v9, Lcom/google/android/play/core/assetpacks/cz;->a:Z

    if-eqz v9, :cond_d

    sget-object v4, Lcom/google/android/play/core/assetpacks/dh;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v7, "Found extraction task using compression format %s for session %s, pack %s, slice %s, chunk %s."

    .line 50
    iget v9, v8, Lcom/google/android/play/core/assetpacks/dc;->e:I

    .line 51
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v6, Lcom/google/android/play/core/assetpacks/db;->a:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v6, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v11, v11, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget-object v12, v8, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v9, v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v9

    .line 50
    invoke-virtual {v4, v7, v9}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v4, v1, Lcom/google/android/play/core/assetpacks/dh;->d:Lcom/google/android/play/core/assetpacks/bu;

    .line 52
    iget v7, v6, Lcom/google/android/play/core/assetpacks/db;->a:I

    iget-object v9, v6, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget-object v10, v8, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {v4, v7, v9, v10, v0}, Lcom/google/android/play/core/assetpacks/bu;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v25

    new-instance v11, Lcom/google/android/play/core/assetpacks/ce;

    .line 54
    iget v12, v6, Lcom/google/android/play/core/assetpacks/db;->a:I

    iget-object v4, v6, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v13, v4, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget v14, v6, Lcom/google/android/play/core/assetpacks/db;->b:I

    iget-wide v9, v4, Lcom/google/android/play/core/assetpacks/da;->b:J

    iget-object v4, v4, Lcom/google/android/play/core/assetpacks/da;->c:Ljava/lang/String;

    iget-object v7, v8, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    iget v15, v8, Lcom/google/android/play/core/assetpacks/dc;->e:I

    iget-object v8, v8, Lcom/google/android/play/core/assetpacks/dc;->d:Ljava/util/List;

    .line 55
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v21

    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    move-object/from16 v17, v4

    const/16 v26, 0x0

    iget-wide v3, v6, Lcom/google/android/play/core/assetpacks/da;->e:J

    iget v6, v6, Lcom/google/android/play/core/assetpacks/da;->d:I

    move/from16 v20, v0

    move-wide/from16 v22, v3

    move/from16 v24, v6

    move-object/from16 v18, v7

    move/from16 v19, v15

    move-wide v15, v9

    invoke-direct/range {v11 .. v25}, Lcom/google/android/play/core/assetpacks/ce;-><init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;IIIJILjava/io/InputStream;)V

    goto :goto_6

    :cond_e
    const/16 v26, 0x0

    move-object/from16 v11, v26

    :goto_6
    if-nez v11, :cond_13

    .line 56
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/db;

    .line 57
    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget v4, v3, Lcom/google/android/play/core/assetpacks/da;->d:I

    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/bg;->b(I)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/da;->f:Ljava/util/List;

    .line 58
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/dc;

    .line 59
    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/dh;->c(Lcom/google/android/play/core/assetpacks/dc;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v4, Lcom/google/android/play/core/assetpacks/dc;->d:Ljava/util/List;

    .line 60
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/play/core/assetpacks/cz;

    iget-boolean v6, v6, Lcom/google/android/play/core/assetpacks/cz;->a:Z

    if-eqz v6, :cond_10

    .line 61
    invoke-direct {v1, v2, v4}, Lcom/google/android/play/core/assetpacks/dh;->b(Lcom/google/android/play/core/assetpacks/db;Lcom/google/android/play/core/assetpacks/dc;)Z

    move-result v6

    if-nez v6, :cond_10

    sget-object v0, Lcom/google/android/play/core/assetpacks/dh;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v3, "Found patch slice task using patch format %s for session %s, pack %s, slice %s."

    .line 62
    iget v6, v4, Lcom/google/android/play/core/assetpacks/dc;->f:I

    .line 63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v2, Lcom/google/android/play/core/assetpacks/db;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v8, v8, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v6

    .line 62
    invoke-virtual {v0, v3, v6}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/dh;->d:Lcom/google/android/play/core/assetpacks/bu;

    .line 64
    iget v3, v2, Lcom/google/android/play/core/assetpacks/db;->a:I

    iget-object v6, v2, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v3, v6, v7, v5}, Lcom/google/android/play/core/assetpacks/bu;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v21

    new-instance v8, Lcom/google/android/play/core/assetpacks/ef;

    .line 66
    iget v9, v2, Lcom/google/android/play/core/assetpacks/db;->a:I

    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v10, v0, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/dh;->c:Lcom/google/android/play/core/assetpacks/bh;

    .line 67
    invoke-virtual {v0, v10}, Lcom/google/android/play/core/assetpacks/bh;->a(Ljava/lang/String;)I

    move-result v11

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/dh;->c:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/da;->a:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v3}, Lcom/google/android/play/core/assetpacks/bh;->c(Ljava/lang/String;)J

    move-result-wide v12

    iget v14, v2, Lcom/google/android/play/core/assetpacks/db;->b:I

    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/db;->c:Lcom/google/android/play/core/assetpacks/da;

    iget-wide v2, v0, Lcom/google/android/play/core/assetpacks/da;->b:J

    iget v0, v4, Lcom/google/android/play/core/assetpacks/dc;->f:I

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/dc;->a:Ljava/lang/String;

    iget-wide v6, v4, Lcom/google/android/play/core/assetpacks/dc;->c:J

    move/from16 v17, v0

    move-wide v15, v2

    move-object/from16 v18, v5

    move-wide/from16 v19, v6

    invoke-direct/range {v8 .. v21}, Lcom/google/android/play/core/assetpacks/ef;-><init>(ILjava/lang/String;IJIJILjava/lang/String;JLjava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :cond_11
    move-object/from16 v8, v26

    :goto_7
    if-eqz v8, :cond_12

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/dh;->b:Lcom/google/android/play/core/assetpacks/de;

    .line 69
    :goto_8
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/de;->l()V

    return-object v8

    :cond_12
    :goto_9
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/dh;->b:Lcom/google/android/play/core/assetpacks/de;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/de;->l()V

    return-object v26

    :cond_13
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/dh;->b:Lcom/google/android/play/core/assetpacks/de;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/de;->l()V

    return-object v11

    :cond_14
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/dh;->b:Lcom/google/android/play/core/assetpacks/de;

    goto :goto_8

    :cond_15
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/dh;->b:Lcom/google/android/play/core/assetpacks/de;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/de;->l()V

    return-object v7

    :cond_16
    const/16 v26, 0x0

    goto :goto_9

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/dh;->b:Lcom/google/android/play/core/assetpacks/de;

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/de;->l()V

    .line 70
    throw v0
.end method
