.class public final Lio/sentry/android/replay/capture/CaptureStrategy$Companion;
.super Ljava/lang/Object;
.source "CaptureStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/capture/CaptureStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCaptureStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureStrategy.kt\nio/sentry/android/replay/capture/CaptureStrategy$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,270:1\n1#2:271\n1855#3,2:272\n1045#3:274\n*S KotlinDebug\n*F\n+ 1 CaptureStrategy.kt\nio/sentry/android/replay/capture/CaptureStrategy$Companion\n*L\n180#1:272,2\n227#1:274\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0086\u0001\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fH\u0002J\u0092\u0001\u0010!\u001a\u00020\u00072\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010)\u001a\u00020\u00112\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fJ;\u0010*\u001a\u00020+2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010,\u001a\u00020\u00042\u0016\u0008\u0002\u0010-\u001a\u0010\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020+\u0018\u00010.H\u0000\u00a2\u0006\u0002\u0008/J\u000e\u00100\u001a\u000201*\u0004\u0018\u00010\u001dH\u0002J\u000c\u00102\u001a\u000201*\u00020\u001dH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lio/sentry/android/replay/capture/CaptureStrategy$Companion;",
        "",
        "()V",
        "MAX_SEGMENT_DURATION",
        "",
        "NETWORK_BREADCRUMB_START_OFFSET",
        "buildReplay",
        "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;",
        "options",
        "Lio/sentry/SentryOptions;",
        "video",
        "Ljava/io/File;",
        "currentReplayId",
        "Lio/sentry/protocol/SentryId;",
        "segmentTimestamp",
        "Ljava/util/Date;",
        "segmentId",
        "",
        "height",
        "width",
        "frameCount",
        "frameRate",
        "videoDuration",
        "replayType",
        "Lio/sentry/SentryReplayEvent$ReplayType;",
        "screenAtStart",
        "",
        "breadcrumbs",
        "",
        "Lio/sentry/Breadcrumb;",
        "events",
        "Ljava/util/Deque;",
        "Lio/sentry/rrweb/RRWebEvent;",
        "createSegment",
        "scopes",
        "Lio/sentry/IScopes;",
        "duration",
        "currentSegmentTimestamp",
        "replayId",
        "cache",
        "Lio/sentry/android/replay/ReplayCache;",
        "bitRate",
        "rotateEvents",
        "",
        "until",
        "callback",
        "Lkotlin/Function1;",
        "rotateEvents$sentry_android_replay_release",
        "isNetworkAvailable",
        "",
        "isNetworkConnectivity",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lio/sentry/android/replay/capture/CaptureStrategy$Companion;

.field private static final MAX_SEGMENT_DURATION:J = 0x493e0L

.field private static final NETWORK_BREADCRUMB_START_OFFSET:J = 0x1388L


# direct methods
.method public static synthetic $r8$lambda$rZA138M6LjEfBVsx9d5e4MC55fQ(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->createSegment$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;

    invoke-direct {v0}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;-><init>()V

    sput-object v0, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->$$INSTANCE:Lio/sentry/android/replay/capture/CaptureStrategy$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildReplay(Lio/sentry/SentryOptions;Ljava/io/File;Lio/sentry/protocol/SentryId;Ljava/util/Date;IIIIIJLio/sentry/SentryReplayEvent$ReplayType;Ljava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            "Ljava/io/File;",
            "Lio/sentry/protocol/SentryId;",
            "Ljava/util/Date;",
            "IIIIIJ",
            "Lio/sentry/SentryReplayEvent$ReplayType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/sentry/Breadcrumb;",
            ">;",
            "Ljava/util/Deque<",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;)",
            "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-wide/from16 v5, p10

    move-object/from16 v7, p13

    .line 144
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    add-long/2addr v8, v5

    invoke-static {v8, v9}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v8

    const-string v9, "getDateTime(segmentTimestamp.time + videoDuration)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v9, Lio/sentry/SentryReplayEvent;

    invoke-direct {v9}, Lio/sentry/SentryReplayEvent;-><init>()V

    .line 147
    invoke-virtual {v9, v0}, Lio/sentry/SentryReplayEvent;->setEventId(Lio/sentry/protocol/SentryId;)V

    .line 148
    invoke-virtual {v9, v0}, Lio/sentry/SentryReplayEvent;->setReplayId(Lio/sentry/protocol/SentryId;)V

    .line 149
    invoke-virtual {v9, v2}, Lio/sentry/SentryReplayEvent;->setSegmentId(I)V

    .line 150
    invoke-virtual {v9, v8}, Lio/sentry/SentryReplayEvent;->setTimestamp(Ljava/util/Date;)V

    .line 151
    invoke-virtual {v9, v1}, Lio/sentry/SentryReplayEvent;->setReplayStartTimestamp(Ljava/util/Date;)V

    move-object/from16 v0, p12

    .line 152
    invoke-virtual {v9, v0}, Lio/sentry/SentryReplayEvent;->setReplayType(Lio/sentry/SentryReplayEvent$ReplayType;)V

    move-object/from16 v0, p2

    .line 153
    invoke-virtual {v9, v0}, Lio/sentry/SentryReplayEvent;->setVideoFile(Ljava/io/File;)V

    .line 156
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    .line 157
    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    .line 158
    new-instance v12, Lio/sentry/rrweb/RRWebMetaEvent;

    invoke-direct {v12}, Lio/sentry/rrweb/RRWebMetaEvent;-><init>()V

    .line 159
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lio/sentry/rrweb/RRWebMetaEvent;->setTimestamp(J)V

    .line 160
    invoke-virtual {v12, v3}, Lio/sentry/rrweb/RRWebMetaEvent;->setHeight(I)V

    .line 161
    invoke-virtual {v12, v4}, Lio/sentry/rrweb/RRWebMetaEvent;->setWidth(I)V

    .line 157
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v12, Lio/sentry/rrweb/RRWebVideoEvent;

    invoke-direct {v12}, Lio/sentry/rrweb/RRWebVideoEvent;-><init>()V

    .line 165
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lio/sentry/rrweb/RRWebVideoEvent;->setTimestamp(J)V

    .line 166
    invoke-virtual {v12, v2}, Lio/sentry/rrweb/RRWebVideoEvent;->setSegmentId(I)V

    .line 167
    invoke-virtual {v12, v5, v6}, Lio/sentry/rrweb/RRWebVideoEvent;->setDurationMs(J)V

    move/from16 v5, p8

    .line 168
    invoke-virtual {v12, v5}, Lio/sentry/rrweb/RRWebVideoEvent;->setFrameCount(I)V

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lio/sentry/rrweb/RRWebVideoEvent;->setSize(J)V

    move/from16 v0, p9

    .line 170
    invoke-virtual {v12, v0}, Lio/sentry/rrweb/RRWebVideoEvent;->setFrameRate(I)V

    .line 171
    invoke-virtual {v12, v3}, Lio/sentry/rrweb/RRWebVideoEvent;->setHeight(I)V

    .line 172
    invoke-virtual {v12, v4}, Lio/sentry/rrweb/RRWebVideoEvent;->setWidth(I)V

    const/4 v0, 0x0

    .line 174
    invoke-virtual {v12, v0}, Lio/sentry/rrweb/RRWebVideoEvent;->setLeft(I)V

    .line 175
    invoke-virtual {v12, v0}, Lio/sentry/rrweb/RRWebVideoEvent;->setTop(I)V

    .line 163
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 180
    move-object/from16 v4, p14

    check-cast v4, Ljava/lang/Iterable;

    .line 272
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/sentry/Breadcrumb;

    if-eqz v6, :cond_0

    .line 186
    sget-object v13, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->$$INSTANCE:Lio/sentry/android/replay/capture/CaptureStrategy$Companion;

    invoke-direct {v13, v6}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->isNetworkAvailable(Lio/sentry/Breadcrumb;)Z

    move-result v6

    const/4 v14, 0x1

    if-ne v6, v14, :cond_0

    .line 187
    invoke-direct {v13, v12}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->isNetworkConnectivity(Lio/sentry/Breadcrumb;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 188
    invoke-virtual {v12}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    const-wide/16 v17, 0x1388

    add-long v15, v15, v17

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    cmp-long v6, v15, v17

    if-ltz v6, :cond_0

    goto :goto_1

    :cond_0
    move v14, v0

    .line 190
    :goto_1
    invoke-virtual {v12}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    cmp-long v6, v15, v17

    if-gez v6, :cond_1

    if-eqz v14, :cond_6

    .line 191
    :cond_1
    invoke-virtual {v12}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    cmp-long v6, v13, v15

    if-gez v6, :cond_6

    .line 193
    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v6

    invoke-interface {v6}, Lio/sentry/ReplayController;->getBreadcrumbConverter()Lio/sentry/ReplayBreadcrumbConverter;

    move-result-object v6

    invoke-interface {v6, v12}, Lio/sentry/ReplayBreadcrumbConverter;->convert(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebEvent;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 196
    invoke-interface {v11, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 200
    instance-of v13, v6, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    if-eqz v13, :cond_2

    move-object v13, v6

    check-cast v13, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    goto :goto_2

    :cond_2
    move-object v13, v5

    :goto_2
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->getCategory()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_3
    move-object v13, v5

    :goto_3
    const-string v14, "navigation"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 201
    check-cast v6, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    invoke-virtual {v6}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->getData()Ljava/util/Map;

    move-result-object v13

    const-string v14, "to"

    if-eqz v13, :cond_4

    const-string v15, "data"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_5

    :cond_4
    move-object v13, v5

    :cond_5
    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 203
    invoke-virtual {v6}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v13, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object v6, v12

    goto/16 :goto_0

    :cond_7
    if-eqz v7, :cond_8

    .line 210
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 211
    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 214
    :cond_8
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    new-instance v0, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;

    invoke-direct {v0, v1, v10}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;-><init>(Ljava/util/Date;Ljava/util/List;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p0

    move-object/from16 v6, p15

    invoke-virtual {v1, v6, v4, v5, v0}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->rotateEvents$sentry_android_replay_release(Ljava/util/Deque;JLkotlin/jvm/functions/Function1;)V

    if-nez v2, :cond_9

    .line 221
    new-instance v0, Lio/sentry/rrweb/RRWebOptionsEvent;

    move-object/from16 v4, p1

    invoke-direct {v0, v4}, Lio/sentry/rrweb/RRWebOptionsEvent;-><init>(Lio/sentry/SentryOptions;)V

    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_9
    new-instance v0, Lio/sentry/ReplayRecording;

    invoke-direct {v0}, Lio/sentry/ReplayRecording;-><init>()V

    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/ReplayRecording;->setSegmentId(Ljava/lang/Integer;)V

    .line 227
    check-cast v10, Ljava/lang/Iterable;

    .line 274
    new-instance v2, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$lambda$8$$inlined$sortedBy$1;

    invoke-direct {v2}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$lambda$8$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v10, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 227
    invoke-virtual {v0, v2}, Lio/sentry/ReplayRecording;->setPayload(Ljava/util/List;)V

    .line 230
    check-cast v3, Ljava/util/List;

    invoke-virtual {v9, v3}, Lio/sentry/SentryReplayEvent;->setUrls(Ljava/util/List;)V

    .line 231
    new-instance v2, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    invoke-direct {v2, v9, v0}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;-><init>(Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;)V

    check-cast v2, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    return-object v2
.end method

.method private static final createSegment$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/IScope;)V
    .locals 1

    const-string v0, "$crumbs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lio/sentry/IScope;->getBreadcrumbs()Ljava/util/Queue;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private final isNetworkAvailable(Lio/sentry/Breadcrumb;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network.event"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string v0, "NETWORK_AVAILABLE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final isNetworkConnectivity(Lio/sentry/Breadcrumb;)Z
    .locals 2

    .line 63
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network.event"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "network_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic rotateEvents$sentry_android_replay_release$default(Lio/sentry/android/replay/capture/CaptureStrategy$Companion;Ljava/util/Deque;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 234
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->rotateEvents$sentry_android_replay_release(Ljava/util/Deque;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final createSegment(Lio/sentry/IScopes;Lio/sentry/SentryOptions;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/IScopes;",
            "Lio/sentry/SentryOptions;",
            "J",
            "Ljava/util/Date;",
            "Lio/sentry/protocol/SentryId;",
            "III",
            "Lio/sentry/SentryReplayEvent$ReplayType;",
            "Lio/sentry/android/replay/ReplayCache;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/sentry/Breadcrumb;",
            ">;",
            "Ljava/util/Deque<",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;)",
            "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "options"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "currentSegmentTimestamp"

    move-object/from16 v6, p5

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "replayId"

    move-object/from16 v5, p6

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "replayType"

    move-object/from16 v14, p10

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "events"

    move-object/from16 v2, p16

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p11, :cond_3

    const-wide/32 v7, 0x493e0

    move-wide/from16 v9, p3

    .line 90
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 91
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    const/16 v26, 0x80

    const/16 v27, 0x0

    const/16 v25, 0x0

    move/from16 v20, p7

    move/from16 v21, p8

    move/from16 v22, p9

    move-object/from16 v15, p11

    move/from16 v23, p12

    move/from16 v24, p13

    .line 89
    invoke-static/range {v15 .. v27}, Lio/sentry/android/replay/ReplayCache;->createVideoOf$default(Lio/sentry/android/replay/ReplayCache;JJIIIIILjava/io/File;ILjava/lang/Object;)Lio/sentry/android/replay/GeneratedVideo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    invoke-virtual {v1}, Lio/sentry/android/replay/GeneratedVideo;->component1()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1}, Lio/sentry/android/replay/GeneratedVideo;->component2()I

    move-result v10

    invoke-virtual {v1}, Lio/sentry/android/replay/GeneratedVideo;->component3()J

    move-result-wide v12

    if-nez p15, :cond_2

    .line 103
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    iput-object v7, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 104
    new-instance v7, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {v0, v7}, Lio/sentry/IScopes;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 105
    :cond_1
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object/from16 v16, v0

    goto :goto_0

    :cond_2
    move-object/from16 v16, p15

    :goto_0
    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v11, p12

    move-object/from16 v15, p14

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    .line 110
    invoke-direct/range {v2 .. v17}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->buildReplay(Lio/sentry/SentryOptions;Ljava/io/File;Lio/sentry/protocol/SentryId;Ljava/util/Date;IIIIIJLio/sentry/SentryReplayEvent$ReplayType;Ljava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    move-result-object v0

    return-object v0

    .line 97
    :cond_3
    :goto_1
    sget-object v0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Failed;->INSTANCE:Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Failed;

    check-cast v0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    return-object v0
.end method

.method public final rotateEvents$sentry_android_replay_release(Ljava/util/Deque;JLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/rrweb/RRWebEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "events"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "events.iterator()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/rrweb/RRWebEvent;

    .line 242
    invoke-virtual {v0}, Lio/sentry/rrweb/RRWebEvent;->getTimestamp()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-gez v1, :cond_0

    if-eqz p4, :cond_1

    .line 243
    const-string v1, "event"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method
