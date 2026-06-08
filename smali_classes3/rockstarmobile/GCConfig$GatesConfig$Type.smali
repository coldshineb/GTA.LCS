.class public final enum Lrockstarmobile/GCConfig$GatesConfig$Type;
.super Ljava/lang/Enum;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCConfig$GatesConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrockstarmobile/GCConfig$GatesConfig$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrockstarmobile/GCConfig$GatesConfig$Type;

.field public static final enum disabled:Lrockstarmobile/GCConfig$GatesConfig$Type;

.field public static final enum hardstartgate:Lrockstarmobile/GCConfig$GatesConfig$Type;

.field public static final enum postioned:Lrockstarmobile/GCConfig$GatesConfig$Type;

.field public static final enum timed:Lrockstarmobile/GCConfig$GatesConfig$Type;


# direct methods
.method private static synthetic $values()[Lrockstarmobile/GCConfig$GatesConfig$Type;
    .locals 4

    .line 1
    sget-object v0, Lrockstarmobile/GCConfig$GatesConfig$Type;->postioned:Lrockstarmobile/GCConfig$GatesConfig$Type;

    sget-object v1, Lrockstarmobile/GCConfig$GatesConfig$Type;->timed:Lrockstarmobile/GCConfig$GatesConfig$Type;

    sget-object v2, Lrockstarmobile/GCConfig$GatesConfig$Type;->disabled:Lrockstarmobile/GCConfig$GatesConfig$Type;

    sget-object v3, Lrockstarmobile/GCConfig$GatesConfig$Type;->hardstartgate:Lrockstarmobile/GCConfig$GatesConfig$Type;

    filled-new-array {v0, v1, v2, v3}, [Lrockstarmobile/GCConfig$GatesConfig$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/GCConfig$GatesConfig$Type;

    const-string v1, "postioned"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCConfig$GatesConfig$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCConfig$GatesConfig$Type;->postioned:Lrockstarmobile/GCConfig$GatesConfig$Type;

    .line 2
    new-instance v0, Lrockstarmobile/GCConfig$GatesConfig$Type;

    const-string v1, "timed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCConfig$GatesConfig$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCConfig$GatesConfig$Type;->timed:Lrockstarmobile/GCConfig$GatesConfig$Type;

    .line 3
    new-instance v0, Lrockstarmobile/GCConfig$GatesConfig$Type;

    const-string v1, "disabled"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCConfig$GatesConfig$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCConfig$GatesConfig$Type;->disabled:Lrockstarmobile/GCConfig$GatesConfig$Type;

    .line 4
    new-instance v0, Lrockstarmobile/GCConfig$GatesConfig$Type;

    const-string v1, "hardstartgate"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCConfig$GatesConfig$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCConfig$GatesConfig$Type;->hardstartgate:Lrockstarmobile/GCConfig$GatesConfig$Type;

    .line 5
    invoke-static {}, Lrockstarmobile/GCConfig$GatesConfig$Type;->$values()[Lrockstarmobile/GCConfig$GatesConfig$Type;

    move-result-object v0

    sput-object v0, Lrockstarmobile/GCConfig$GatesConfig$Type;->$VALUES:[Lrockstarmobile/GCConfig$GatesConfig$Type;

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

.method public static valueOf(Ljava/lang/String;)Lrockstarmobile/GCConfig$GatesConfig$Type;
    .locals 1

    .line 1
    const-class v0, Lrockstarmobile/GCConfig$GatesConfig$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrockstarmobile/GCConfig$GatesConfig$Type;

    return-object p0
.end method

.method public static values()[Lrockstarmobile/GCConfig$GatesConfig$Type;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCConfig$GatesConfig$Type;->$VALUES:[Lrockstarmobile/GCConfig$GatesConfig$Type;

    invoke-virtual {v0}, [Lrockstarmobile/GCConfig$GatesConfig$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrockstarmobile/GCConfig$GatesConfig$Type;

    return-object v0
.end method
