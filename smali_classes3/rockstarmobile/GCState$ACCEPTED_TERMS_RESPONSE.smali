.class public final enum Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;
.super Ljava/lang/Enum;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACCEPTED_TERMS_RESPONSE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

.field public static final enum ALL_ACCEPTED:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

.field public static final enum NO_OVERRIDE:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

.field public static final enum UPDATED_TERMS:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;


# direct methods
.method private static synthetic $values()[Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->NO_OVERRIDE:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    sget-object v1, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->ALL_ACCEPTED:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    sget-object v2, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->UPDATED_TERMS:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    filled-new-array {v0, v1, v2}, [Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    const-string v1, "NO_OVERRIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->NO_OVERRIDE:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    new-instance v0, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    const-string v1, "ALL_ACCEPTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->ALL_ACCEPTED:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    new-instance v0, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    const-string v1, "UPDATED_TERMS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->UPDATED_TERMS:Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    .line 2
    invoke-static {}, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->$values()[Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    move-result-object v0

    sput-object v0, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->$VALUES:[Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

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

.method public static valueOf(Ljava/lang/String;)Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;
    .locals 1

    .line 1
    const-class v0, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    return-object p0
.end method

.method public static values()[Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->$VALUES:[Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    invoke-virtual {v0}, [Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrockstarmobile/GCState$ACCEPTED_TERMS_RESPONSE;

    return-object v0
.end method
