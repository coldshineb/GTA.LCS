.class public final Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;
.super Ljava/lang/Object;
.source "EventProcessorAndOrder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventProcessor:Lio/sentry/EventProcessor;

.field private final order:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lio/sentry/EventProcessor;Ljava/lang/Long;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->eventProcessor:Lio/sentry/EventProcessor;

    if-nez p2, :cond_0

    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->order:Ljava/lang/Long;

    return-void

    .line 18
    :cond_0
    iput-object p2, p0, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->order:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public compareTo(Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;)I
    .locals 1

    .line 32
    iget-object v0, p0, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->order:Ljava/lang/Long;

    iget-object p1, p1, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->order:Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;

    invoke-virtual {p0, p1}, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->compareTo(Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;)I

    move-result p1

    return p1
.end method

.method public getEventProcessor()Lio/sentry/EventProcessor;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->eventProcessor:Lio/sentry/EventProcessor;

    return-object v0
.end method

.method public getOrder()Ljava/lang/Long;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;->order:Ljava/lang/Long;

    return-object v0
.end method
