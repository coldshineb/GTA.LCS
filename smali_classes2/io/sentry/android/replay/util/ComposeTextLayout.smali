.class public final Lio/sentry/android/replay/util/ComposeTextLayout;
.super Ljava/lang/Object;
.source "Nodes.kt"

# interfaces
.implements Lio/sentry/android/replay/util/TextLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0016J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0016J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0016J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0016J\u0010\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0008H\u0016R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/sentry/android/replay/util/ComposeTextLayout;",
        "Lio/sentry/android/replay/util/TextLayout;",
        "layout",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "hasFillModifier",
        "",
        "(Landroidx/compose/ui/text/TextLayoutResult;Z)V",
        "dominantTextColor",
        "",
        "getDominantTextColor",
        "()Ljava/lang/Integer;",
        "getLayout$sentry_android_replay_release",
        "()Landroidx/compose/ui/text/TextLayoutResult;",
        "lineCount",
        "getLineCount",
        "()I",
        "getEllipsisCount",
        "line",
        "getLineBottom",
        "getLineStart",
        "getLineTop",
        "getLineVisibleEnd",
        "getPrimaryHorizontal",
        "",
        "offset",
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
.field public static final $stable:I


# instance fields
.field private final hasFillModifier:Z

.field private final layout:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/ui/text/TextLayoutResult;->$stable:I

    sput v0, Lio/sentry/android/replay/util/ComposeTextLayout;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/TextLayoutResult;Z)V
    .locals 1

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    .line 18
    iput-boolean p2, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->hasFillModifier:Z

    return-void
.end method


# virtual methods
.method public getDominantTextColor()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEllipsisCount(I)I
    .locals 1

    .line 39
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->isLineEllipsized(I)Z

    move-result p1

    return p1
.end method

.method public final getLayout$sentry_android_replay_release()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    return-object v0
.end method

.method public getLineBottom(I)I
    .locals 1

    .line 45
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    return p1
.end method

.method public getLineCount()I
    .locals 1

    .line 21
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLineStart(I)I
    .locals 1

    .line 47
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result p1

    return p1
.end method

.method public getLineTop(I)I
    .locals 1

    .line 43
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineTop(I)F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    return p1
.end method

.method public getLineVisibleEnd(I)I
    .locals 2

    .line 41
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result p1

    return p1
.end method

.method public getPrimaryHorizontal(II)F
    .locals 2

    .line 27
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getHorizontalPosition(IZ)F

    move-result p2

    .line 32
    iget-boolean v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->hasFillModifier:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/android/replay/util/ComposeTextLayout;->getLineCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result p1

    sub-float/2addr p2, p1

    :cond_0
    return p2
.end method
