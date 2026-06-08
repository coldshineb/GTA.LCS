.class public final enum Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;
.super Ljava/lang/Enum;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/Rockstar$LifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

.field public static final enum AppLaunched:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

.field public static final enum AppPaused:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

.field public static final enum AppResumed:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

.field public static final enum OnLowMemory:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;


# direct methods
.method private static synthetic $values()[Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;
    .locals 4

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->AppPaused:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    sget-object v1, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->AppLaunched:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    sget-object v2, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->AppResumed:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    sget-object v3, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->OnLowMemory:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    filled-new-array {v0, v1, v2, v3}, [Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    const-string v1, "AppPaused"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->AppPaused:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    new-instance v0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    const-string v1, "AppLaunched"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->AppLaunched:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    new-instance v0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    const-string v1, "AppResumed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->AppResumed:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    new-instance v0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    const-string v1, "OnLowMemory"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->OnLowMemory:Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    .line 2
    invoke-static {}, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->$values()[Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    move-result-object v0

    sput-object v0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->$VALUES:[Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;
    .locals 1

    .line 1
    const-class v0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    return-object p0
.end method

.method public static values()[Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->$VALUES:[Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    invoke-virtual {v0}, [Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrockstarmobile/Rockstar$LifecycleListener$AppEvent;

    return-object v0
.end method
