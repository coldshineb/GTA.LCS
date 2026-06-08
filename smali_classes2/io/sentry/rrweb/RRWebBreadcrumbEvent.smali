.class public final Lio/sentry/rrweb/RRWebBreadcrumbEvent;
.super Lio/sentry/rrweb/RRWebEvent;
.source "RRWebBreadcrumbEvent.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebBreadcrumbEvent$JsonKeys;,
        Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;
    }
.end annotation


# static fields
.field public static final EVENT_TAG:Ljava/lang/String; = "breadcrumb"


# instance fields
.field private breadcrumbTimestamp:D

.field private breadcrumbType:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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

.field private level:Lio/sentry/SentryLevel;

.field private message:Ljava/lang/String;

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

.field private tag:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    sget-object v0, Lio/sentry/rrweb/RRWebEventType;->Custom:Lio/sentry/rrweb/RRWebEventType;

    invoke-direct {p0, v0}, Lio/sentry/rrweb/RRWebEvent;-><init>(Lio/sentry/rrweb/RRWebEventType;)V

    .line 39
    const-string v0, "breadcrumb"

    iput-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->tag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->tag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->breadcrumbType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/rrweb/RRWebBreadcrumbEvent;D)D
    .locals 0

    .line 20
    iput-wide p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->breadcrumbTimestamp:D

    return-wide p1
.end method

.method static synthetic access$302(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->category:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->level:Lio/sentry/SentryLevel;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->data:Ljava/util/Map;

    return-object p1
.end method

.method private serializeData(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 162
    const-string v0, "tag"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 163
    const-string v0, "payload"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 164
    invoke-direct {p0, p1, p2}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->serializePayload(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 165
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->dataUnknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 166
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

    .line 167
    iget-object v2, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->dataUnknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 168
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 169
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 172
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

    .line 177
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 178
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->breadcrumbType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->breadcrumbType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 181
    :cond_0
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->breadcrumbTimestamp:D

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 182
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->category:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 183
    const-string v0, "category"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->category:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 185
    :cond_1
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->message:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 186
    const-string v0, "message"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 188
    :cond_2
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->level:Lio/sentry/SentryLevel;

    if-eqz v0, :cond_3

    .line 189
    const-string v0, "level"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->level:Lio/sentry/SentryLevel;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 191
    :cond_3
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->data:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 192
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->data:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 194
    :cond_4
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->payloadUnknown:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 195
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->payloadUnknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 197
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 198
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 201
    :cond_5
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method


# virtual methods
.method public getBreadcrumbTimestamp()D
    .locals 2

    .line 52
    iget-wide v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->breadcrumbTimestamp:D

    return-wide v0
.end method

.method public getBreadcrumbType()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->breadcrumbType:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
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

    .line 97
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->data:Ljava/util/Map;

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

    .line 113
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->dataUnknown:Ljava/util/Map;

    return-object v0
.end method

.method public getLevel()Lio/sentry/SentryLevel;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->level:Lio/sentry/SentryLevel;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->message:Ljava/lang/String;

    return-object v0
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

    .line 105
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->payloadUnknown:Ljava/util/Map;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->tag:Ljava/lang/String;

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

    .line 122
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 146
    new-instance v0, Lio/sentry/rrweb/RRWebEvent$Serializer;

    invoke-direct {v0}, Lio/sentry/rrweb/RRWebEvent$Serializer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Serializer;->serialize(Lio/sentry/rrweb/RRWebEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 147
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 148
    invoke-direct {p0, p1, p2}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->serializeData(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 149
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 150
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

    .line 151
    iget-object v2, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 152
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 153
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setBreadcrumbTimestamp(D)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->breadcrumbTimestamp:D

    return-void
.end method

.method public setBreadcrumbType(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->breadcrumbType:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->category:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->data:Ljava/util/Map;

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

    .line 117
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->dataUnknown:Ljava/util/Map;

    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->level:Lio/sentry/SentryLevel;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->message:Ljava/lang/String;

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

    .line 109
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->payloadUnknown:Ljava/util/Map;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->tag:Ljava/lang/String;

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

    .line 127
    iput-object p1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->unknown:Ljava/util/Map;

    return-void
.end method
