.class public final Lio/sentry/rrweb/RRWebMetaEvent;
.super Lio/sentry/rrweb/RRWebEvent;
.source "RRWebMetaEvent.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebMetaEvent$JsonKeys;,
        Lio/sentry/rrweb/RRWebMetaEvent$Deserializer;
    }
.end annotation


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

.field private height:I

.field private href:Ljava/lang/String;

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

    .line 29
    sget-object v0, Lio/sentry/rrweb/RRWebEventType;->Meta:Lio/sentry/rrweb/RRWebEventType;

    invoke-direct {p0, v0}, Lio/sentry/rrweb/RRWebEvent;-><init>(Lio/sentry/rrweb/RRWebEventType;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->href:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/rrweb/RRWebMetaEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->href:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/rrweb/RRWebMetaEvent;I)I
    .locals 0

    .line 18
    iput p1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->height:I

    return p1
.end method

.method static synthetic access$202(Lio/sentry/rrweb/RRWebMetaEvent;I)I
    .locals 0

    .line 18
    iput p1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->width:I

    return p1
.end method

.method private serializeData(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 102
    const-string v0, "href"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->href:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 103
    const-string v0, "height"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->height:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 104
    const-string v0, "width"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->width:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 105
    iget-object v0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 106
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

    .line 107
    iget-object v2, p0, Lio/sentry/rrweb/RRWebMetaEvent;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 108
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 109
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    invoke-super {p0, p1}, Lio/sentry/rrweb/RRWebEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 72
    :cond_2
    check-cast p1, Lio/sentry/rrweb/RRWebMetaEvent;

    .line 73
    iget v2, p0, Lio/sentry/rrweb/RRWebMetaEvent;->height:I

    iget v3, p1, Lio/sentry/rrweb/RRWebMetaEvent;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lio/sentry/rrweb/RRWebMetaEvent;->width:I

    iget v3, p1, Lio/sentry/rrweb/RRWebMetaEvent;->width:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lio/sentry/rrweb/RRWebMetaEvent;->href:Ljava/lang/String;

    iget-object p1, p1, Lio/sentry/rrweb/RRWebMetaEvent;->href:Ljava/lang/String;

    .line 75
    invoke-static {v2, p1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
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

    .line 60
    iget-object v0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->dataUnknown:Ljava/util/Map;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 43
    iget v0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->height:I

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->href:Ljava/lang/String;

    return-object v0
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

    .line 117
    iget-object v0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 51
    iget v0, p0, Lio/sentry/rrweb/RRWebMetaEvent;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 80
    invoke-super {p0}, Lio/sentry/rrweb/RRWebEvent;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->href:Ljava/lang/String;

    iget v2, p0, Lio/sentry/rrweb/RRWebMetaEvent;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lio/sentry/rrweb/RRWebMetaEvent;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 93
    new-instance v0, Lio/sentry/rrweb/RRWebEvent$Serializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebEvent$Serializer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Serializer;->serialize(Lio/sentry/rrweb/RRWebEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 94
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 95
    invoke-direct {p0, p1, p2}, Lio/sentry/rrweb/RRWebMetaEvent;->serializeData(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 96
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

    .line 64
    iput-object p1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->dataUnknown:Ljava/util/Map;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 47
    iput p1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->height:I

    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->href:Ljava/lang/String;

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

    .line 122
    iput-object p1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 55
    iput p1, p0, Lio/sentry/rrweb/RRWebMetaEvent;->width:I

    return-void
.end method
