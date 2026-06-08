.class public final Lio/sentry/ReplayRecording$Deserializer;
.super Ljava/lang/Object;
.source "ReplayRecording.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ReplayRecording;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/ReplayRecording;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ReplayRecording;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 110
    new-instance v2, Lio/sentry/ReplayRecording;

    invoke-direct {v2}, Lio/sentry/ReplayRecording;-><init>()V

    .line 116
    invoke-interface {v0}, Lio/sentry/ObjectReader;->beginObject()V

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    .line 117
    :goto_0
    invoke-interface {v0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v6

    sget-object v7, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v6, v7, :cond_2

    .line 118
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v7, "segment_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v4, :cond_0

    .line 125
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 127
    :cond_0
    invoke-interface {v0, v1, v4, v6}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 131
    :cond_2
    invoke-interface {v0}, Lio/sentry/ObjectReader;->endObject()V

    const/4 v6, 0x1

    .line 135
    invoke-interface {v0, v6}, Lio/sentry/ObjectReader;->setLenient(Z)V

    .line 136
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    .line 137
    invoke-interface {v0, v8}, Lio/sentry/ObjectReader;->setLenient(Z)V

    if-eqz v7, :cond_f

    .line 141
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 143
    instance-of v9, v7, Ljava/util/Map;

    if-eqz v9, :cond_e

    .line 144
    check-cast v7, Ljava/util/Map;

    .line 145
    new-instance v9, Lio/sentry/util/MapObjectReader;

    invoke-direct {v9, v7}, Lio/sentry/util/MapObjectReader;-><init>(Ljava/util/Map;)V

    .line 146
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 148
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 149
    const-string v13, "type"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 150
    invoke-static {}, Lio/sentry/rrweb/RRWebEventType;->values()[Lio/sentry/rrweb/RRWebEventType;

    move-result-object v12

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v12, v11

    .line 151
    sget-object v12, Lio/sentry/ReplayRecording$1;->$SwitchMap$io$sentry$rrweb$RRWebEventType:[I

    invoke-virtual {v11}, Lio/sentry/rrweb/RRWebEventType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const-string v13, "data"

    const/4 v14, 0x2

    if-eq v12, v6, :cond_9

    if-eq v12, v14, :cond_8

    const/4 v15, 0x3

    const-string v8, "Unsupported rrweb event type %s"

    if-eq v12, v15, :cond_3

    .line 224
    sget-object v12, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v12, v8, v11}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 194
    :cond_3
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    if-nez v12, :cond_4

    .line 196
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    .line 198
    :cond_4
    const-string v13, "tag"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_d

    .line 200
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v15, -0x1

    sparse-switch v13, :sswitch_data_0

    :goto_3
    move v14, v15

    goto :goto_4

    :sswitch_0
    const-string v13, "breadcrumb"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_3

    :sswitch_1
    const-string v13, "video"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_3

    :cond_5
    move v14, v6

    goto :goto_4

    :sswitch_2
    const-string v13, "performanceSpan"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :cond_7
    :goto_4
    packed-switch v14, :pswitch_data_0

    .line 218
    sget-object v12, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v12, v8, v11}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 207
    :pswitch_0
    new-instance v8, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;

    invoke-direct {v8}, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;-><init>()V

    .line 209
    invoke-virtual {v8, v9, v1}, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    move-result-object v8

    .line 210
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 202
    :pswitch_1
    new-instance v8, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;

    invoke-direct {v8}, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;-><init>()V

    .line 203
    invoke-virtual {v8, v9, v1}, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebVideoEvent;

    move-result-object v8

    .line 204
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 213
    :pswitch_2
    new-instance v8, Lio/sentry/rrweb/RRWebSpanEvent$Deserializer;

    invoke-direct {v8}, Lio/sentry/rrweb/RRWebSpanEvent$Deserializer;-><init>()V

    .line 214
    invoke-virtual {v8, v9, v1}, Lio/sentry/rrweb/RRWebSpanEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebSpanEvent;

    move-result-object v8

    .line 215
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 188
    :cond_8
    new-instance v8, Lio/sentry/rrweb/RRWebMetaEvent$Deserializer;

    invoke-direct {v8}, Lio/sentry/rrweb/RRWebMetaEvent$Deserializer;-><init>()V

    .line 189
    invoke-virtual {v8, v9, v1}, Lio/sentry/rrweb/RRWebMetaEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebMetaEvent;

    move-result-object v8

    .line 190
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 155
    :cond_9
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_a

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    .line 159
    :cond_a
    const-string v11, "source"

    .line 161
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_d

    .line 164
    invoke-static {}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->values()[Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v11, v8

    .line 165
    sget-object v11, Lio/sentry/ReplayRecording$1;->$SwitchMap$io$sentry$rrweb$RRWebIncrementalSnapshotEvent$IncrementalSource:[I

    invoke-virtual {v8}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v6, :cond_c

    if-eq v11, v14, :cond_b

    .line 179
    sget-object v11, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v12, "Unsupported rrweb incremental snapshot type %s"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v11, v12, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 173
    :cond_b
    new-instance v8, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;

    invoke-direct {v8}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;-><init>()V

    .line 175
    invoke-virtual {v8, v9, v1}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebInteractionMoveEvent;

    move-result-object v8

    .line 176
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 167
    :cond_c
    new-instance v8, Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;

    invoke-direct {v8}, Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;-><init>()V

    .line 169
    invoke-virtual {v8, v9, v1}, Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebInteractionEvent;

    move-result-object v8

    .line 170
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_5
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 233
    :cond_f
    invoke-virtual {v2, v5}, Lio/sentry/ReplayRecording;->setSegmentId(Ljava/lang/Integer;)V

    .line 234
    invoke-virtual {v2, v3}, Lio/sentry/ReplayRecording;->setPayload(Ljava/util/List;)V

    .line 235
    invoke-virtual {v2, v4}, Lio/sentry/ReplayRecording;->setUnknown(Ljava/util/Map;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0xd791c66 -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x41f73003 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1, p2}, Lio/sentry/ReplayRecording$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ReplayRecording;

    move-result-object p1

    return-object p1
.end method
