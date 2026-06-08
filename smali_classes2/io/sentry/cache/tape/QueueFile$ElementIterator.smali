.class final Lio/sentry/cache/tape/QueueFile$ElementIterator;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/cache/tape/QueueFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ElementIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[B>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field nextElementIndex:I

.field private nextElementPosition:J

.field final synthetic this$0:Lio/sentry/cache/tape/QueueFile;


# direct methods
.method constructor <init>(Lio/sentry/cache/tape/QueueFile;)V
    .locals 2

    .line 532
    iput-object p1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 521
    iput v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    .line 524
    iget-object v0, p1, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v0, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    iput-wide v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementPosition:J

    .line 530
    iget p1, p1, Lio/sentry/cache/tape/QueueFile;->modCount:I

    iput p1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->expectedModCount:I

    return-void
.end method

.method private checkForComodification()V
    .locals 2

    .line 535
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v0, v0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    iget v1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 540
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget-boolean v0, v0, Lio/sentry/cache/tape/QueueFile;->closed:Z

    if-nez v0, :cond_1

    .line 541
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;->checkForComodification()V

    .line 542
    iget v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v1, v1, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 540
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 519
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;->next()[B

    move-result-object v0

    return-object v0
.end method

.method public next()[B
    .locals 10

    .line 547
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget-boolean v0, v0, Lio/sentry/cache/tape/QueueFile;->closed:Z

    if-nez v0, :cond_3

    .line 548
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;->checkForComodification()V

    .line 549
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 550
    iget v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v1, v1, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    if-ge v0, v1, :cond_1

    .line 554
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget-wide v1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementPosition:J

    invoke-virtual {v0, v1, v2}, Lio/sentry/cache/tape/QueueFile;->readElement(J)Lio/sentry/cache/tape/QueueFile$Element;

    move-result-object v0

    .line 555
    iget v1, v0, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    new-array v5, v1, [B

    .line 556
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget-wide v2, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    const-wide/16 v8, 0x4

    add-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide v3

    iput-wide v3, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementPosition:J

    .line 557
    iget-object v2, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v7, v0, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lio/sentry/cache/tape/QueueFile;->ringRead(J[BII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 560
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v0, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    iput v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    .line 561
    invoke-static {}, Lio/sentry/cache/tape/QueueFile;->access$000()[B

    move-result-object v0

    return-object v0

    .line 565
    :cond_0
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget-wide v2, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    add-long/2addr v2, v8

    iget v0, v0, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    int-to-long v6, v0

    add-long/2addr v2, v6

    .line 566
    invoke-virtual {v1, v2, v3}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementPosition:J

    .line 567
    iget v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 576
    :catch_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    invoke-static {v0}, Lio/sentry/cache/tape/QueueFile;->access$100(Lio/sentry/cache/tape/QueueFile;)V

    .line 578
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v0, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    iput v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 582
    invoke-static {}, Lio/sentry/cache/tape/QueueFile;->access$000()[B

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    .line 580
    invoke-static {v0}, Lio/sentry/cache/tape/QueueFile;->getSneakyThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    :catch_2
    move-exception v0

    .line 572
    invoke-static {v0}, Lio/sentry/cache/tape/QueueFile;->getSneakyThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 550
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 549
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 547
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 588
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;->checkForComodification()V

    .line 590
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    iget v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 596
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v0, v0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    iput v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->expectedModCount:I

    .line 602
    iget v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    return-void

    :catch_0
    move-exception v0

    .line 598
    invoke-static {v0}, Lio/sentry/cache/tape/QueueFile;->getSneakyThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removal is only permitted from the head."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
