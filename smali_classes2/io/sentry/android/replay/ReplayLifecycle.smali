.class public final Lio/sentry/android/replay/ReplayLifecycle;
.super Ljava/lang/Object;
.source "ReplayLifecycle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/ReplayLifecycle$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\u000c\u001a\u00020\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lio/sentry/android/replay/ReplayLifecycle;",
        "",
        "()V",
        "currentState",
        "Lio/sentry/android/replay/ReplayState;",
        "getCurrentState$sentry_android_replay_release",
        "()Lio/sentry/android/replay/ReplayState;",
        "setCurrentState$sentry_android_replay_release",
        "(Lio/sentry/android/replay/ReplayState;)V",
        "isAllowed",
        "",
        "newState",
        "isTouchRecordingAllowed",
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
.field private volatile currentState:Lio/sentry/android/replay/ReplayState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lio/sentry/android/replay/ReplayState;->INITIAL:Lio/sentry/android/replay/ReplayState;

    iput-object v0, p0, Lio/sentry/android/replay/ReplayLifecycle;->currentState:Lio/sentry/android/replay/ReplayState;

    return-void
.end method


# virtual methods
.method public final getCurrentState$sentry_android_replay_release()Lio/sentry/android/replay/ReplayState;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/sentry/android/replay/ReplayLifecycle;->currentState:Lio/sentry/android/replay/ReplayState;

    return-object v0
.end method

.method public final isAllowed(Lio/sentry/android/replay/ReplayState;)Z
    .locals 3

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lio/sentry/android/replay/ReplayLifecycle;->currentState:Lio/sentry/android/replay/ReplayState;

    sget-object v1, Lio/sentry/android/replay/ReplayLifecycle$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 61
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    return v2

    .line 60
    :pswitch_1
    sget-object v0, Lio/sentry/android/replay/ReplayState;->STARTED:Lio/sentry/android/replay/ReplayState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    .line 57
    :pswitch_2
    sget-object v0, Lio/sentry/android/replay/ReplayState;->RESUMED:Lio/sentry/android/replay/ReplayState;

    if-eq p1, v0, :cond_3

    .line 58
    sget-object v0, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    if-eq p1, v0, :cond_3

    .line 59
    sget-object v0, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1

    .line 53
    :pswitch_3
    sget-object v0, Lio/sentry/android/replay/ReplayState;->PAUSED:Lio/sentry/android/replay/ReplayState;

    if-eq p1, v0, :cond_5

    .line 54
    sget-object v0, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    if-eq p1, v0, :cond_5

    .line 55
    sget-object v0, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v1

    .line 49
    :pswitch_4
    sget-object v0, Lio/sentry/android/replay/ReplayState;->PAUSED:Lio/sentry/android/replay/ReplayState;

    if-eq p1, v0, :cond_7

    .line 50
    sget-object v0, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    if-eq p1, v0, :cond_7

    .line 51
    sget-object v0, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    if-ne p1, v0, :cond_6

    goto :goto_3

    :cond_6
    return v2

    :cond_7
    :goto_3
    return v1

    .line 47
    :pswitch_5
    sget-object v0, Lio/sentry/android/replay/ReplayState;->STARTED:Lio/sentry/android/replay/ReplayState;

    if-eq p1, v0, :cond_9

    sget-object v0, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    if-ne p1, v0, :cond_8

    goto :goto_4

    :cond_8
    return v2

    :cond_9
    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isTouchRecordingAllowed()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lio/sentry/android/replay/ReplayLifecycle;->currentState:Lio/sentry/android/replay/ReplayState;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->STARTED:Lio/sentry/android/replay/ReplayState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/sentry/android/replay/ReplayLifecycle;->currentState:Lio/sentry/android/replay/ReplayState;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->RESUMED:Lio/sentry/android/replay/ReplayState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final setCurrentState$sentry_android_replay_release(Lio/sentry/android/replay/ReplayState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lio/sentry/android/replay/ReplayLifecycle;->currentState:Lio/sentry/android/replay/ReplayState;

    return-void
.end method
