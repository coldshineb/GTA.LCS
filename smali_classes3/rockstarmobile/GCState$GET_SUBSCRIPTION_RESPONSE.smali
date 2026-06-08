.class public final enum Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;
.super Ljava/lang/Enum;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GET_SUBSCRIPTION_RESPONSE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

.field public static final enum ACTIVE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

.field public static final enum INACTIVE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

.field public static final enum NO_OVERRIDE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

.field public static final enum PREVIOUSLY_ACTIVE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

.field public static final enum UNKNOWN_REQUIRES_AUTH_TOKEN:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;


# direct methods
.method private static synthetic $values()[Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;
    .locals 5

    .line 1
    sget-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->NO_OVERRIDE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    sget-object v1, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->ACTIVE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    sget-object v2, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->INACTIVE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    sget-object v3, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->PREVIOUSLY_ACTIVE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    sget-object v4, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->UNKNOWN_REQUIRES_AUTH_TOKEN:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    filled-new-array {v0, v1, v2, v3, v4}, [Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    const-string v1, "NO_OVERRIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->NO_OVERRIDE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    new-instance v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->ACTIVE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    new-instance v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    const-string v1, "INACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->INACTIVE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    new-instance v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    const-string v1, "PREVIOUSLY_ACTIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->PREVIOUSLY_ACTIVE:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    new-instance v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    const-string v1, "UNKNOWN_REQUIRES_AUTH_TOKEN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->UNKNOWN_REQUIRES_AUTH_TOKEN:Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    .line 2
    invoke-static {}, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->$values()[Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    move-result-object v0

    sput-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->$VALUES:[Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

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

.method public static valueOf(Ljava/lang/String;)Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;
    .locals 1

    .line 1
    const-class v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    return-object p0
.end method

.method public static values()[Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->$VALUES:[Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    invoke-virtual {v0}, [Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrockstarmobile/GCState$GET_SUBSCRIPTION_RESPONSE;

    return-object v0
.end method
