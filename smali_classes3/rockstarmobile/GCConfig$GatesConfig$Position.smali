.class public final enum Lrockstarmobile/GCConfig$GatesConfig$Position;
.super Ljava/lang/Enum;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCConfig$GatesConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrockstarmobile/GCConfig$GatesConfig$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrockstarmobile/GCConfig$GatesConfig$Position;

.field public static final enum bottom_left:Lrockstarmobile/GCConfig$GatesConfig$Position;

.field public static final enum bottom_right:Lrockstarmobile/GCConfig$GatesConfig$Position;

.field public static final enum top_left:Lrockstarmobile/GCConfig$GatesConfig$Position;

.field public static final enum top_right:Lrockstarmobile/GCConfig$GatesConfig$Position;


# direct methods
.method private static synthetic $values()[Lrockstarmobile/GCConfig$GatesConfig$Position;
    .locals 4

    .line 1
    sget-object v0, Lrockstarmobile/GCConfig$GatesConfig$Position;->top_right:Lrockstarmobile/GCConfig$GatesConfig$Position;

    sget-object v1, Lrockstarmobile/GCConfig$GatesConfig$Position;->bottom_right:Lrockstarmobile/GCConfig$GatesConfig$Position;

    sget-object v2, Lrockstarmobile/GCConfig$GatesConfig$Position;->bottom_left:Lrockstarmobile/GCConfig$GatesConfig$Position;

    sget-object v3, Lrockstarmobile/GCConfig$GatesConfig$Position;->top_left:Lrockstarmobile/GCConfig$GatesConfig$Position;

    filled-new-array {v0, v1, v2, v3}, [Lrockstarmobile/GCConfig$GatesConfig$Position;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/GCConfig$GatesConfig$Position;

    const-string v1, "top_right"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCConfig$GatesConfig$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCConfig$GatesConfig$Position;->top_right:Lrockstarmobile/GCConfig$GatesConfig$Position;

    .line 2
    new-instance v0, Lrockstarmobile/GCConfig$GatesConfig$Position;

    const-string v1, "bottom_right"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCConfig$GatesConfig$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCConfig$GatesConfig$Position;->bottom_right:Lrockstarmobile/GCConfig$GatesConfig$Position;

    .line 3
    new-instance v0, Lrockstarmobile/GCConfig$GatesConfig$Position;

    const-string v1, "bottom_left"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCConfig$GatesConfig$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCConfig$GatesConfig$Position;->bottom_left:Lrockstarmobile/GCConfig$GatesConfig$Position;

    .line 4
    new-instance v0, Lrockstarmobile/GCConfig$GatesConfig$Position;

    const-string v1, "top_left"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCConfig$GatesConfig$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCConfig$GatesConfig$Position;->top_left:Lrockstarmobile/GCConfig$GatesConfig$Position;

    .line 5
    invoke-static {}, Lrockstarmobile/GCConfig$GatesConfig$Position;->$values()[Lrockstarmobile/GCConfig$GatesConfig$Position;

    move-result-object v0

    sput-object v0, Lrockstarmobile/GCConfig$GatesConfig$Position;->$VALUES:[Lrockstarmobile/GCConfig$GatesConfig$Position;

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

.method public static valueOf(Ljava/lang/String;)Lrockstarmobile/GCConfig$GatesConfig$Position;
    .locals 1

    .line 1
    const-class v0, Lrockstarmobile/GCConfig$GatesConfig$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrockstarmobile/GCConfig$GatesConfig$Position;

    return-object p0
.end method

.method public static values()[Lrockstarmobile/GCConfig$GatesConfig$Position;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCConfig$GatesConfig$Position;->$VALUES:[Lrockstarmobile/GCConfig$GatesConfig$Position;

    invoke-virtual {v0}, [Lrockstarmobile/GCConfig$GatesConfig$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrockstarmobile/GCConfig$GatesConfig$Position;

    return-object v0
.end method
