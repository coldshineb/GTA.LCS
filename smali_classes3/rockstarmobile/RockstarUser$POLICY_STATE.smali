.class public final enum Lrockstarmobile/RockstarUser$POLICY_STATE;
.super Ljava/lang/Enum;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/RockstarUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POLICY_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrockstarmobile/RockstarUser$POLICY_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrockstarmobile/RockstarUser$POLICY_STATE;

.field public static final enum NO:Lrockstarmobile/RockstarUser$POLICY_STATE;

.field public static final enum UNKNOWN:Lrockstarmobile/RockstarUser$POLICY_STATE;

.field public static final enum YES:Lrockstarmobile/RockstarUser$POLICY_STATE;


# direct methods
.method private static synthetic $values()[Lrockstarmobile/RockstarUser$POLICY_STATE;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/RockstarUser$POLICY_STATE;->UNKNOWN:Lrockstarmobile/RockstarUser$POLICY_STATE;

    sget-object v1, Lrockstarmobile/RockstarUser$POLICY_STATE;->YES:Lrockstarmobile/RockstarUser$POLICY_STATE;

    sget-object v2, Lrockstarmobile/RockstarUser$POLICY_STATE;->NO:Lrockstarmobile/RockstarUser$POLICY_STATE;

    filled-new-array {v0, v1, v2}, [Lrockstarmobile/RockstarUser$POLICY_STATE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/RockstarUser$POLICY_STATE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrockstarmobile/RockstarUser$POLICY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/RockstarUser$POLICY_STATE;->UNKNOWN:Lrockstarmobile/RockstarUser$POLICY_STATE;

    .line 2
    new-instance v0, Lrockstarmobile/RockstarUser$POLICY_STATE;

    const-string v1, "YES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrockstarmobile/RockstarUser$POLICY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/RockstarUser$POLICY_STATE;->YES:Lrockstarmobile/RockstarUser$POLICY_STATE;

    .line 3
    new-instance v0, Lrockstarmobile/RockstarUser$POLICY_STATE;

    const-string v1, "NO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrockstarmobile/RockstarUser$POLICY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/RockstarUser$POLICY_STATE;->NO:Lrockstarmobile/RockstarUser$POLICY_STATE;

    .line 4
    invoke-static {}, Lrockstarmobile/RockstarUser$POLICY_STATE;->$values()[Lrockstarmobile/RockstarUser$POLICY_STATE;

    move-result-object v0

    sput-object v0, Lrockstarmobile/RockstarUser$POLICY_STATE;->$VALUES:[Lrockstarmobile/RockstarUser$POLICY_STATE;

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

.method public static valueOf(Ljava/lang/String;)Lrockstarmobile/RockstarUser$POLICY_STATE;
    .locals 1

    .line 1
    const-class v0, Lrockstarmobile/RockstarUser$POLICY_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrockstarmobile/RockstarUser$POLICY_STATE;

    return-object p0
.end method

.method public static values()[Lrockstarmobile/RockstarUser$POLICY_STATE;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/RockstarUser$POLICY_STATE;->$VALUES:[Lrockstarmobile/RockstarUser$POLICY_STATE;

    invoke-virtual {v0}, [Lrockstarmobile/RockstarUser$POLICY_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrockstarmobile/RockstarUser$POLICY_STATE;

    return-object v0
.end method
