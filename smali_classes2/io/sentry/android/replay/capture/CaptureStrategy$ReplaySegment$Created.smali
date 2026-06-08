.class public final Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;
.super Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
.source "CaptureStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Created"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCaptureStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureStrategy.kt\nio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,270:1\n1#2:271\n1855#3,2:272\n*S KotlinDebug\n*F\n+ 1 CaptureStrategy.kt\nio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created\n*L\n261#1:272,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001a\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\u000e\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u0019J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;",
        "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;",
        "replay",
        "Lio/sentry/SentryReplayEvent;",
        "recording",
        "Lio/sentry/ReplayRecording;",
        "(Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;)V",
        "getRecording",
        "()Lio/sentry/ReplayRecording;",
        "getReplay",
        "()Lio/sentry/SentryReplayEvent;",
        "capture",
        "",
        "scopes",
        "Lio/sentry/IScopes;",
        "hint",
        "Lio/sentry/Hint;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "setSegmentId",
        "segmentId",
        "toString",
        "",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final recording:Lio/sentry/ReplayRecording;

.field private final replay:Lio/sentry/SentryReplayEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;)V
    .locals 1

    const-string v0, "replay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recording"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, v0}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 253
    iput-object p1, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->replay:Lio/sentry/SentryReplayEvent;

    iput-object p2, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->recording:Lio/sentry/ReplayRecording;

    return-void
.end method

.method public static synthetic capture$default(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;Lio/sentry/IScopes;Lio/sentry/Hint;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 255
    new-instance p2, Lio/sentry/Hint;

    invoke-direct {p2}, Lio/sentry/Hint;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->capture(Lio/sentry/IScopes;Lio/sentry/Hint;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;ILjava/lang/Object;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->replay:Lio/sentry/SentryReplayEvent;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->recording:Lio/sentry/ReplayRecording;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->copy(Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final capture(Lio/sentry/IScopes;Lio/sentry/Hint;)V
    .locals 2

    const-string v0, "hint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->replay:Lio/sentry/SentryReplayEvent;

    iget-object v1, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->recording:Lio/sentry/ReplayRecording;

    invoke-virtual {p2, v1}, Lio/sentry/Hint;->setReplayRecording(Lio/sentry/ReplayRecording;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0, p2}, Lio/sentry/IScopes;->captureReplay(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    :cond_0
    return-void
.end method

.method public final component1()Lio/sentry/SentryReplayEvent;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->replay:Lio/sentry/SentryReplayEvent;

    return-object v0
.end method

.method public final component2()Lio/sentry/ReplayRecording;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->recording:Lio/sentry/ReplayRecording;

    return-object v0
.end method

.method public final copy(Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;
    .locals 1

    const-string v0, "replay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recording"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    invoke-direct {v0, p1, p2}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;-><init>(Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    iget-object v1, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->replay:Lio/sentry/SentryReplayEvent;

    iget-object v3, p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->replay:Lio/sentry/SentryReplayEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->recording:Lio/sentry/ReplayRecording;

    iget-object p1, p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->recording:Lio/sentry/ReplayRecording;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRecording()Lio/sentry/ReplayRecording;
    .locals 1

    .line 253
    iget-object v0, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->recording:Lio/sentry/ReplayRecording;

    return-object v0
.end method

.method public final getReplay()Lio/sentry/SentryReplayEvent;
    .locals 1

    .line 253
    iget-object v0, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->replay:Lio/sentry/SentryReplayEvent;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->replay:Lio/sentry/SentryReplayEvent;

    invoke-virtual {v0}, Lio/sentry/SentryReplayEvent;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->recording:Lio/sentry/ReplayRecording;

    invoke-virtual {v1}, Lio/sentry/ReplayRecording;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setSegmentId(I)V
    .locals 3

    .line 260
    iget-object v0, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->replay:Lio/sentry/SentryReplayEvent;

    invoke-virtual {v0, p1}, Lio/sentry/SentryReplayEvent;->setSegmentId(I)V

    .line 261
    iget-object v0, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->recording:Lio/sentry/ReplayRecording;

    invoke-virtual {v0}, Lio/sentry/ReplayRecording;->getPayload()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .line 272
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/rrweb/RRWebEvent;

    .line 263
    instance-of v2, v1, Lio/sentry/rrweb/RRWebVideoEvent;

    if-eqz v2, :cond_0

    check-cast v1, Lio/sentry/rrweb/RRWebVideoEvent;

    invoke-virtual {v1, p1}, Lio/sentry/rrweb/RRWebVideoEvent;->setSegmentId(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Created(replay="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->replay:Lio/sentry/SentryReplayEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->recording:Lio/sentry/ReplayRecording;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
