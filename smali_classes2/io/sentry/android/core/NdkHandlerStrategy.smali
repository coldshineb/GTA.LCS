.class public final enum Lio/sentry/android/core/NdkHandlerStrategy;
.super Ljava/lang/Enum;
.source "NdkHandlerStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/android/core/NdkHandlerStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/android/core/NdkHandlerStrategy;

.field public static final enum SENTRY_HANDLER_STRATEGY_CHAIN_AT_START:Lio/sentry/android/core/NdkHandlerStrategy;

.field public static final enum SENTRY_HANDLER_STRATEGY_DEFAULT:Lio/sentry/android/core/NdkHandlerStrategy;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lio/sentry/android/core/NdkHandlerStrategy;
    .locals 2

    .line 5
    sget-object v0, Lio/sentry/android/core/NdkHandlerStrategy;->SENTRY_HANDLER_STRATEGY_DEFAULT:Lio/sentry/android/core/NdkHandlerStrategy;

    sget-object v1, Lio/sentry/android/core/NdkHandlerStrategy;->SENTRY_HANDLER_STRATEGY_CHAIN_AT_START:Lio/sentry/android/core/NdkHandlerStrategy;

    filled-new-array {v0, v1}, [Lio/sentry/android/core/NdkHandlerStrategy;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lio/sentry/android/core/NdkHandlerStrategy;

    const-string v1, "SENTRY_HANDLER_STRATEGY_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/sentry/android/core/NdkHandlerStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/android/core/NdkHandlerStrategy;->SENTRY_HANDLER_STRATEGY_DEFAULT:Lio/sentry/android/core/NdkHandlerStrategy;

    .line 8
    new-instance v0, Lio/sentry/android/core/NdkHandlerStrategy;

    const-string v1, "SENTRY_HANDLER_STRATEGY_CHAIN_AT_START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/sentry/android/core/NdkHandlerStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/android/core/NdkHandlerStrategy;->SENTRY_HANDLER_STRATEGY_CHAIN_AT_START:Lio/sentry/android/core/NdkHandlerStrategy;

    .line 5
    invoke-static {}, Lio/sentry/android/core/NdkHandlerStrategy;->$values()[Lio/sentry/android/core/NdkHandlerStrategy;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/NdkHandlerStrategy;->$VALUES:[Lio/sentry/android/core/NdkHandlerStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lio/sentry/android/core/NdkHandlerStrategy;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/android/core/NdkHandlerStrategy;
    .locals 1

    .line 5
    const-class v0, Lio/sentry/android/core/NdkHandlerStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/android/core/NdkHandlerStrategy;

    return-object p0
.end method

.method public static values()[Lio/sentry/android/core/NdkHandlerStrategy;
    .locals 1

    .line 5
    sget-object v0, Lio/sentry/android/core/NdkHandlerStrategy;->$VALUES:[Lio/sentry/android/core/NdkHandlerStrategy;

    invoke-virtual {v0}, [Lio/sentry/android/core/NdkHandlerStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/android/core/NdkHandlerStrategy;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lio/sentry/android/core/NdkHandlerStrategy;->value:I

    return v0
.end method
