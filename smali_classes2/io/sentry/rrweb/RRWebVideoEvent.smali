.class public final Lio/sentry/rrweb/RRWebVideoEvent;
.super Lio/sentry/rrweb/RRWebEvent;
.source "RRWebVideoEvent.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebVideoEvent$JsonKeys;,
        Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;
    }
.end annotation


# static fields
.field public static final EVENT_TAG:Ljava/lang/String; = "video"

.field public static final REPLAY_CONTAINER:Ljava/lang/String; = "mp4"

.field public static final REPLAY_ENCODING:Ljava/lang/String; = "h264"

.field public static final REPLAY_FRAME_RATE_TYPE_CONSTANT:Ljava/lang/String; = "constant"

.field public static final REPLAY_FRAME_RATE_TYPE_VARIABLE:Ljava/lang/String; = "variable"


# instance fields
.field private container:Ljava/lang/String;

.field private dataUnknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private durationMs:J

.field private encoding:Ljava/lang/String;

.field private frameCount:I

.field private frameRate:I

.field private frameRateType:Ljava/lang/String;

.field private height:I

.field private left:I

.field private payloadUnknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private segmentId:I

.field private size:J

.field private tag:Ljava/lang/String;

.field private top:I

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    sget-object v0, Lio/sentry/rrweb/RRWebEventType;->Custom:Lio/sentry/rrweb/RRWebEventType;

    invoke-direct {p0, v0}, Lio/sentry/rrweb/RRWebEvent;-><init>(Lio/sentry/rrweb/RRWebEventType;)V

    .line 30
    const-string v0, "h264"

    iput-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->encoding:Ljava/lang/String;

    .line 31
    const-string v0, "mp4"

    iput-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->container:Ljava/lang/String;

    .line 35
    const-string v0, "constant"

    iput-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRateType:Ljava/lang/String;

    .line 47
    const-string v0, "video"

    iput-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->tag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/rrweb/RRWebVideoEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->tag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lio/sentry/rrweb/RRWebVideoEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRateType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/rrweb/RRWebVideoEvent;I)I
    .locals 0

    .line 18
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->segmentId:I

    return p1
.end method

.method static synthetic access$1102(Lio/sentry/rrweb/RRWebVideoEvent;I)I
    .locals 0

    .line 18
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->left:I

    return p1
.end method

.method static synthetic access$1202(Lio/sentry/rrweb/RRWebVideoEvent;I)I
    .locals 0

    .line 18
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->top:I

    return p1
.end method

.method static synthetic access$202(Lio/sentry/rrweb/RRWebVideoEvent;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->size:J

    return-wide p1
.end method

.method static synthetic access$302(Lio/sentry/rrweb/RRWebVideoEvent;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->durationMs:J

    return-wide p1
.end method

.method static synthetic access$402(Lio/sentry/rrweb/RRWebVideoEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->container:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/rrweb/RRWebVideoEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->encoding:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/rrweb/RRWebVideoEvent;I)I
    .locals 0

    .line 18
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->height:I

    return p1
.end method

.method static synthetic access$702(Lio/sentry/rrweb/RRWebVideoEvent;I)I
    .locals 0

    .line 18
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->width:I

    return p1
.end method

.method static synthetic access$802(Lio/sentry/rrweb/RRWebVideoEvent;I)I
    .locals 0

    .line 18
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameCount:I

    return p1
.end method

.method static synthetic access$902(Lio/sentry/rrweb/RRWebVideoEvent;I)I
    .locals 0

    .line 18
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRate:I

    return p1
.end method

.method private serializeData(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 264
    const-string v0, "tag"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 265
    const-string v0, "payload"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 266
    invoke-direct {p0, p1, p2}, Lio/sentry/rrweb/RRWebVideoEvent;->serializePayload(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 267
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->dataUnknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->dataUnknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 270
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 271
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 274
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method private serializePayload(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 280
    const-string v0, "segmentId"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->segmentId:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 281
    const-string v0, "size"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->size:J

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 282
    const-string v0, "duration"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->durationMs:J

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 283
    const-string v0, "encoding"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->encoding:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 284
    const-string v0, "container"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->container:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 285
    const-string v0, "height"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->height:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 286
    const-string v0, "width"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->width:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 287
    const-string v0, "frameCount"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameCount:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 288
    const-string v0, "frameRate"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRate:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 289
    const-string v0, "frameRateType"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRateType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 290
    const-string v0, "left"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->left:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 291
    const-string v0, "top"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->top:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 292
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->payloadUnknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 294
    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->payloadUnknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 295
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 296
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 299
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    invoke-super {p0, p1}, Lio/sentry/rrweb/RRWebEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 189
    :cond_2
    check-cast p1, Lio/sentry/rrweb/RRWebVideoEvent;

    .line 190
    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->segmentId:I

    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->segmentId:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->size:J

    iget-wide v4, p1, Lio/sentry/rrweb/RRWebVideoEvent;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->durationMs:J

    iget-wide v4, p1, Lio/sentry/rrweb/RRWebVideoEvent;->durationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->height:I

    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->width:I

    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameCount:I

    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->frameCount:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRate:I

    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->frameRate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->left:I

    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->left:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->top:I

    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->top:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->tag:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->tag:Ljava/lang/String;

    .line 199
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->encoding:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->encoding:Ljava/lang/String;

    .line 200
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->container:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->container:Ljava/lang/String;

    .line 201
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRateType:Ljava/lang/String;

    iget-object p1, p1, Lio/sentry/rrweb/RRWebVideoEvent;->frameRateType:Ljava/lang/String;

    .line 202
    invoke-static {v2, p1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getContainer()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->container:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->dataUnknown:Ljava/util/Map;

    return-object v0
.end method

.method public getDurationMs()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->durationMs:J

    return-wide v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 118
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameCount:I

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 135
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRate:I

    return v0
.end method

.method public getFrameRateType()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRateType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 102
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->height:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 143
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->left:I

    return v0
.end method

.method public getPayloadUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->payloadUnknown:Ljava/util/Map;

    return-object v0
.end method

.method public getSegmentId()I
    .locals 1

    .line 60
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->segmentId:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->size:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .line 151
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->top:I

    return v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 110
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 15

    .line 208
    invoke-super {p0}, Lio/sentry/rrweb/RRWebEvent;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->tag:Ljava/lang/String;

    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->segmentId:I

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lio/sentry/rrweb/RRWebVideoEvent;->size:J

    .line 211
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lio/sentry/rrweb/RRWebVideoEvent;->durationMs:J

    .line 212
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lio/sentry/rrweb/RRWebVideoEvent;->encoding:Ljava/lang/String;

    iget-object v7, p0, Lio/sentry/rrweb/RRWebVideoEvent;->container:Ljava/lang/String;

    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->height:I

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->width:I

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameCount:I

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRateType:Ljava/lang/String;

    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRate:I

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->left:I

    .line 220
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->top:I

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 248
    new-instance v0, Lio/sentry/rrweb/RRWebEvent$Serializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebEvent$Serializer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Serializer;->serialize(Lio/sentry/rrweb/RRWebEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 249
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 250
    invoke-direct {p0, p1, p2}, Lio/sentry/rrweb/RRWebVideoEvent;->serializeData(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 251
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 253
    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 254
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 255
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 258
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setContainer(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->container:Ljava/lang/String;

    return-void
.end method

.method public setDataUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->dataUnknown:Ljava/util/Map;

    return-void
.end method

.method public setDurationMs(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->durationMs:J

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFrameCount(I)V
    .locals 0

    .line 122
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameCount:I

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 139
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRate:I

    return-void
.end method

.method public setFrameRateType(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->frameRateType:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 106
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->height:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    .line 147
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->left:I

    return-void
.end method

.method public setPayloadUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->payloadUnknown:Ljava/util/Map;

    return-void
.end method

.method public setSegmentId(I)V
    .locals 0

    .line 64
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->segmentId:I

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->size:J

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTop(I)V
    .locals 0

    .line 155
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->top:I

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 114
    iput p1, p0, Lio/sentry/rrweb/RRWebVideoEvent;->width:I

    return-void
.end method
