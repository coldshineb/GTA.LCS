.class public final enum Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;
.super Ljava/lang/Enum;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/RockstarUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SUBSCRIPTION_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

.field public static final enum ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

.field public static final enum INACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

.field public static final enum PREVIOUSLY_ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

.field public static final enum UNKNOWN_REQUIRES_AUTH_TOKEN:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;


# direct methods
.method private static synthetic $values()[Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;
    .locals 4

    .line 1
    sget-object v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    sget-object v1, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->INACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    sget-object v2, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->PREVIOUSLY_ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    sget-object v3, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->UNKNOWN_REQUIRES_AUTH_TOKEN:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    filled-new-array {v0, v1, v2, v3}, [Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    .line 2
    new-instance v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    const-string v1, "INACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->INACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    .line 3
    new-instance v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    const-string v1, "PREVIOUSLY_ACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->PREVIOUSLY_ACTIVE:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    .line 4
    new-instance v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    const-string v1, "UNKNOWN_REQUIRES_AUTH_TOKEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->UNKNOWN_REQUIRES_AUTH_TOKEN:Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    .line 5
    invoke-static {}, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->$values()[Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    move-result-object v0

    sput-object v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->$VALUES:[Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

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

.method public static valueOf(Ljava/lang/String;)Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;
    .locals 1

    .line 1
    const-class v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    return-object p0
.end method

.method public static values()[Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->$VALUES:[Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    invoke-virtual {v0}, [Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrockstarmobile/RockstarUser$SUBSCRIPTION_STATE;

    return-object v0
.end method
