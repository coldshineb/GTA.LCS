.class public final enum Lio/sentry/android/replay/ReplayState;
.super Ljava/lang/Enum;
.source "ReplayLifecycle.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/android/replay/ReplayState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/sentry/android/replay/ReplayState;",
        "",
        "(Ljava/lang/String;I)V",
        "INITIAL",
        "STARTED",
        "RESUMED",
        "PAUSED",
        "STOPPED",
        "CLOSED",
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
.field private static final synthetic $VALUES:[Lio/sentry/android/replay/ReplayState;

.field public static final enum CLOSED:Lio/sentry/android/replay/ReplayState;

.field public static final enum INITIAL:Lio/sentry/android/replay/ReplayState;

.field public static final enum PAUSED:Lio/sentry/android/replay/ReplayState;

.field public static final enum RESUMED:Lio/sentry/android/replay/ReplayState;

.field public static final enum STARTED:Lio/sentry/android/replay/ReplayState;

.field public static final enum STOPPED:Lio/sentry/android/replay/ReplayState;


# direct methods
.method private static final synthetic $values()[Lio/sentry/android/replay/ReplayState;
    .locals 6

    sget-object v0, Lio/sentry/android/replay/ReplayState;->INITIAL:Lio/sentry/android/replay/ReplayState;

    sget-object v1, Lio/sentry/android/replay/ReplayState;->STARTED:Lio/sentry/android/replay/ReplayState;

    sget-object v2, Lio/sentry/android/replay/ReplayState;->RESUMED:Lio/sentry/android/replay/ReplayState;

    sget-object v3, Lio/sentry/android/replay/ReplayState;->PAUSED:Lio/sentry/android/replay/ReplayState;

    sget-object v4, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    sget-object v5, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    filled-new-array/range {v0 .. v5}, [Lio/sentry/android/replay/ReplayState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lio/sentry/android/replay/ReplayState;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/android/replay/ReplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/replay/ReplayState;->INITIAL:Lio/sentry/android/replay/ReplayState;

    .line 14
    new-instance v0, Lio/sentry/android/replay/ReplayState;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/android/replay/ReplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/replay/ReplayState;->STARTED:Lio/sentry/android/replay/ReplayState;

    .line 20
    new-instance v0, Lio/sentry/android/replay/ReplayState;

    const-string v1, "RESUMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/android/replay/ReplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/replay/ReplayState;->RESUMED:Lio/sentry/android/replay/ReplayState;

    .line 26
    new-instance v0, Lio/sentry/android/replay/ReplayState;

    const-string v1, "PAUSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/android/replay/ReplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/replay/ReplayState;->PAUSED:Lio/sentry/android/replay/ReplayState;

    .line 32
    new-instance v0, Lio/sentry/android/replay/ReplayState;

    const-string v1, "STOPPED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/android/replay/ReplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    .line 38
    new-instance v0, Lio/sentry/android/replay/ReplayState;

    const-string v1, "CLOSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/sentry/android/replay/ReplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    invoke-static {}, Lio/sentry/android/replay/ReplayState;->$values()[Lio/sentry/android/replay/ReplayState;

    move-result-object v0

    sput-object v0, Lio/sentry/android/replay/ReplayState;->$VALUES:[Lio/sentry/android/replay/ReplayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/android/replay/ReplayState;
    .locals 1

    const-class v0, Lio/sentry/android/replay/ReplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/android/replay/ReplayState;

    return-object p0
.end method

.method public static values()[Lio/sentry/android/replay/ReplayState;
    .locals 1

    sget-object v0, Lio/sentry/android/replay/ReplayState;->$VALUES:[Lio/sentry/android/replay/ReplayState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/android/replay/ReplayState;

    return-object v0
.end method
