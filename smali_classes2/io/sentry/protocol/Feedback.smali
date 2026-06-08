.class public final Lio/sentry/protocol/Feedback;
.super Ljava/lang/Object;
.source "Feedback.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Feedback$JsonKeys;,
        Lio/sentry/protocol/Feedback$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "feedback"


# instance fields
.field private associatedEventId:Lio/sentry/protocol/SentryId;

.field private contactEmail:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private replayId:Lio/sentry/protocol/SentryId;

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

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/Feedback;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    .line 42
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    .line 43
    iget-object v0, p1, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    .line 44
    iget-object p1, p1, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Feedback;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/Feedback;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/Feedback;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/Feedback;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/Feedback;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/Feedback;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/Feedback;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Lio/sentry/protocol/Feedback;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 104
    :cond_1
    check-cast p1, Lio/sentry/protocol/Feedback;

    .line 105
    iget-object v1, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    .line 106
    invoke-static {v1, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    .line 107
    invoke-static {v1, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    iget-object v3, p1, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    .line 108
    invoke-static {v1, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    iget-object v3, p1, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    .line 109
    invoke-static {v1, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    .line 110
    invoke-static {v1, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    iget-object p1, p1, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    .line 111
    invoke-static {v1, p1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getAssociatedEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getContactEmail()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

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

    .line 158
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 140
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    iget-object v4, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    iget-object v5, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    iget-object v6, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

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

    .line 171
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 172
    const-string v0, "message"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 173
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "contact_email"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 176
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 179
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    if-eqz v0, :cond_2

    .line 180
    const-string v0, "associated_event_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 181
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/SentryId;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 183
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    if-eqz v0, :cond_3

    .line 184
    const-string v0, "replay_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 185
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/SentryId;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 187
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 188
    const-string v0, "url"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 190
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 191
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

    .line 192
    iget-object v2, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 196
    :cond_5
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setAssociatedEventId(Lio/sentry/protocol/SentryId;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    return-void
.end method

.method public setContactEmail(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    return-void

    .line 96
    :cond_0
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    return-void
.end method

.method public setReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

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

    .line 163
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Feedback{message=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', contactEmail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->contactEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', associatedEventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->associatedEventId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->replayId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Feedback;->unknown:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
