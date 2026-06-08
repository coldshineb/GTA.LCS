.class public final Lio/sentry/rrweb/RRWebInteractionEvent;
.super Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;
.source "RRWebInteractionEvent.java"

# interfaces
.implements Lio/sentry/JsonSerializable;
.implements Lio/sentry/JsonUnknown;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;,
        Lio/sentry/rrweb/RRWebInteractionEvent$JsonKeys;,
        Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;
    }
.end annotation


# static fields
.field private static final POINTER_TYPE_TOUCH:I = 0x2


# instance fields
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

.field private id:I

.field private interactionType:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field private pointerId:I

.field private pointerType:I

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

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    sget-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->MouseInteraction:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    invoke-direct {p0, v0}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;-><init>(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;)V

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerType:I

    return-void
.end method

.method static synthetic access$002(Lio/sentry/rrweb/RRWebInteractionEvent;Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;)Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->interactionType:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/rrweb/RRWebInteractionEvent;I)I
    .locals 0

    .line 17
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->id:I

    return p1
.end method

.method static synthetic access$202(Lio/sentry/rrweb/RRWebInteractionEvent;F)F
    .locals 0

    .line 17
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->x:F

    return p1
.end method

.method static synthetic access$302(Lio/sentry/rrweb/RRWebInteractionEvent;F)F
    .locals 0

    .line 17
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->y:F

    return p1
.end method

.method static synthetic access$402(Lio/sentry/rrweb/RRWebInteractionEvent;I)I
    .locals 0

    .line 17
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerType:I

    return p1
.end method

.method static synthetic access$502(Lio/sentry/rrweb/RRWebInteractionEvent;I)I
    .locals 0

    .line 17
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerId:I

    return p1
.end method

.method private serializeData(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 171
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Serializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Serializer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$Serializer;->serialize(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 172
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->interactionType:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 173
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->id:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 174
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->x:F

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(D)Lio/sentry/ObjectWriter;

    .line 175
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->y:F

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(D)Lio/sentry/ObjectWriter;

    .line 176
    const-string v0, "pointerType"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerType:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 177
    const-string v0, "pointerId"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerId:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 178
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->dataUnknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 179
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

    .line 180
    iget-object v2, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->dataUnknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 181
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 182
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method


# virtual methods
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

    .line 122
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->dataUnknown:Ljava/util/Map;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 81
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->id:I

    return v0
.end method

.method public getInteractionType()Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->interactionType:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    return-object v0
.end method

.method public getPointerId()I
    .locals 1

    .line 113
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerId:I

    return v0
.end method

.method public getPointerType()I
    .locals 1

    .line 105
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerType:I

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

    .line 131
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 89
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 97
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->y:F

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 155
    new-instance v0, Lio/sentry/rrweb/RRWebEvent$Serializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebEvent$Serializer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Serializer;->serialize(Lio/sentry/rrweb/RRWebEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 156
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 157
    invoke-direct {p0, p1, p2}, Lio/sentry/rrweb/RRWebInteractionEvent;->serializeData(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 158
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 159
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

    .line 160
    iget-object v2, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 161
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 162
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 165
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

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

    .line 126
    iput-object p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->dataUnknown:Ljava/util/Map;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 85
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->id:I

    return-void
.end method

.method public setInteractionType(Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->interactionType:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    return-void
.end method

.method public setPointerId(I)V
    .locals 0

    .line 117
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerId:I

    return-void
.end method

.method public setPointerType(I)V
    .locals 0

    .line 109
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->pointerType:I

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

    .line 136
    iput-object p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 93
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 101
    iput p1, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->y:F

    return-void
.end method
