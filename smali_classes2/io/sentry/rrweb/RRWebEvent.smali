.class public abstract Lio/sentry/rrweb/RRWebEvent;
.super Ljava/lang/Object;
.source "RRWebEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebEvent$Deserializer;,
        Lio/sentry/rrweb/RRWebEvent$Serializer;,
        Lio/sentry/rrweb/RRWebEvent$JsonKeys;
    }
.end annotation


# instance fields
.field private timestamp:J

.field private type:Lio/sentry/rrweb/RRWebEventType;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 21
    sget-object v0, Lio/sentry/rrweb/RRWebEventType;->Custom:Lio/sentry/rrweb/RRWebEventType;

    invoke-direct {p0, v0}, Lio/sentry/rrweb/RRWebEvent;-><init>(Lio/sentry/rrweb/RRWebEventType;)V

    return-void
.end method

.method protected constructor <init>(Lio/sentry/rrweb/RRWebEventType;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/sentry/rrweb/RRWebEvent;->type:Lio/sentry/rrweb/RRWebEventType;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/rrweb/RRWebEvent;->timestamp:J

    return-void
.end method

.method static synthetic access$000(Lio/sentry/rrweb/RRWebEvent;)Lio/sentry/rrweb/RRWebEventType;
    .locals 0

    .line 10
    iget-object p0, p0, Lio/sentry/rrweb/RRWebEvent;->type:Lio/sentry/rrweb/RRWebEventType;

    return-object p0
.end method

.method static synthetic access$002(Lio/sentry/rrweb/RRWebEvent;Lio/sentry/rrweb/RRWebEventType;)Lio/sentry/rrweb/RRWebEventType;
    .locals 0

    .line 10
    iput-object p1, p0, Lio/sentry/rrweb/RRWebEvent;->type:Lio/sentry/rrweb/RRWebEventType;

    return-object p1
.end method

.method static synthetic access$100(Lio/sentry/rrweb/RRWebEvent;)J
    .locals 2

    .line 10
    iget-wide v0, p0, Lio/sentry/rrweb/RRWebEvent;->timestamp:J

    return-wide v0
.end method

.method static synthetic access$102(Lio/sentry/rrweb/RRWebEvent;J)J
    .locals 0

    .line 10
    iput-wide p1, p0, Lio/sentry/rrweb/RRWebEvent;->timestamp:J

    return-wide p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 44
    :cond_0
    instance-of v1, p1, Lio/sentry/rrweb/RRWebEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 45
    :cond_1
    check-cast p1, Lio/sentry/rrweb/RRWebEvent;

    .line 46
    iget-wide v3, p0, Lio/sentry/rrweb/RRWebEvent;->timestamp:J

    iget-wide v5, p1, Lio/sentry/rrweb/RRWebEvent;->timestamp:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/sentry/rrweb/RRWebEvent;->type:Lio/sentry/rrweb/RRWebEventType;

    iget-object p1, p1, Lio/sentry/rrweb/RRWebEvent;->type:Lio/sentry/rrweb/RRWebEventType;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getTimestamp()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lio/sentry/rrweb/RRWebEvent;->timestamp:J

    return-wide v0
.end method

.method public getType()Lio/sentry/rrweb/RRWebEventType;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/sentry/rrweb/RRWebEvent;->type:Lio/sentry/rrweb/RRWebEventType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 51
    iget-object v0, p0, Lio/sentry/rrweb/RRWebEvent;->type:Lio/sentry/rrweb/RRWebEventType;

    iget-wide v1, p0, Lio/sentry/rrweb/RRWebEvent;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lio/sentry/rrweb/RRWebEvent;->timestamp:J

    return-void
.end method

.method public setType(Lio/sentry/rrweb/RRWebEventType;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lio/sentry/rrweb/RRWebEvent;->type:Lio/sentry/rrweb/RRWebEventType;

    return-void
.end method
