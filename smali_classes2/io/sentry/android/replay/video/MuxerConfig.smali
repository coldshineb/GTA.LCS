.class public final Lio/sentry/android/replay/video/MuxerConfig;
.super Ljava/lang/Object;
.source "SimpleVideoEncoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\nH\u00c6\u0003JE\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00d6\u0001J\t\u0010#\u001a\u00020\nH\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\r\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\r\"\u0004\u0008\u0017\u0010\u0015\u00a8\u0006$"
    }
    d2 = {
        "Lio/sentry/android/replay/video/MuxerConfig;",
        "",
        "file",
        "Ljava/io/File;",
        "recordingWidth",
        "",
        "recordingHeight",
        "frameRate",
        "bitRate",
        "mimeType",
        "",
        "(Ljava/io/File;IIIILjava/lang/String;)V",
        "getBitRate",
        "()I",
        "getFile",
        "()Ljava/io/File;",
        "getFrameRate",
        "getMimeType",
        "()Ljava/lang/String;",
        "getRecordingHeight",
        "setRecordingHeight",
        "(I)V",
        "getRecordingWidth",
        "setRecordingWidth",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final bitRate:I

.field private final file:Ljava/io/File;

.field private final frameRate:I

.field private final mimeType:Ljava/lang/String;

.field private recordingHeight:I

.field private recordingWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIIILjava/lang/String;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Lio/sentry/android/replay/video/MuxerConfig;->file:Ljava/io/File;

    .line 301
    iput p2, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingWidth:I

    .line 302
    iput p3, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingHeight:I

    .line 303
    iput p4, p0, Lio/sentry/android/replay/video/MuxerConfig;->frameRate:I

    .line 304
    iput p5, p0, Lio/sentry/android/replay/video/MuxerConfig;->bitRate:I

    .line 305
    iput-object p6, p0, Lio/sentry/android/replay/video/MuxerConfig;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;IIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 305
    const-string p6, "video/avc"

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 299
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/replay/video/MuxerConfig;-><init>(Ljava/io/File;IIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/sentry/android/replay/video/MuxerConfig;Ljava/io/File;IIIILjava/lang/String;ILjava/lang/Object;)Lio/sentry/android/replay/video/MuxerConfig;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lio/sentry/android/replay/video/MuxerConfig;->file:Ljava/io/File;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingWidth:I

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingHeight:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Lio/sentry/android/replay/video/MuxerConfig;->frameRate:I

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget p5, p0, Lio/sentry/android/replay/video/MuxerConfig;->bitRate:I

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lio/sentry/android/replay/video/MuxerConfig;->mimeType:Ljava/lang/String;

    :cond_5
    move p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lio/sentry/android/replay/video/MuxerConfig;->copy(Ljava/io/File;IIIILjava/lang/String;)Lio/sentry/android/replay/video/MuxerConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->file:Ljava/io/File;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingWidth:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingHeight:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->frameRate:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->bitRate:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/io/File;IIIILjava/lang/String;)Lio/sentry/android/replay/video/MuxerConfig;
    .locals 8

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/sentry/android/replay/video/MuxerConfig;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lio/sentry/android/replay/video/MuxerConfig;-><init>(Ljava/io/File;IIIILjava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/sentry/android/replay/video/MuxerConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/sentry/android/replay/video/MuxerConfig;

    iget-object v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->file:Ljava/io/File;

    iget-object v3, p1, Lio/sentry/android/replay/video/MuxerConfig;->file:Ljava/io/File;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingWidth:I

    iget v3, p1, Lio/sentry/android/replay/video/MuxerConfig;->recordingWidth:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingHeight:I

    iget v3, p1, Lio/sentry/android/replay/video/MuxerConfig;->recordingHeight:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->frameRate:I

    iget v3, p1, Lio/sentry/android/replay/video/MuxerConfig;->frameRate:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->bitRate:I

    iget v3, p1, Lio/sentry/android/replay/video/MuxerConfig;->bitRate:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Lio/sentry/android/replay/video/MuxerConfig;->mimeType:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBitRate()I
    .locals 1

    .line 304
    iget v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->bitRate:I

    return v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 300
    iget-object v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getFrameRate()I
    .locals 1

    .line 303
    iget v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->frameRate:I

    return v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecordingHeight()I
    .locals 1

    .line 302
    iget v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingHeight:I

    return v0
.end method

.method public final getRecordingWidth()I
    .locals 1

    .line 301
    iget v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/sentry/android/replay/video/MuxerConfig;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->frameRate:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->bitRate:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setRecordingHeight(I)V
    .locals 0

    .line 302
    iput p1, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingHeight:I

    return-void
.end method

.method public final setRecordingWidth(I)V
    .locals 0

    .line 301
    iput p1, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MuxerConfig(file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordingWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordingHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->recordingHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->frameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->bitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/video/MuxerConfig;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
