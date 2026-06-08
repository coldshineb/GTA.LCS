.class public final enum Lio/sentry/SentryOpenTelemetryMode;
.super Ljava/lang/Enum;
.source "SentryOpenTelemetryMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SentryOpenTelemetryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SentryOpenTelemetryMode;

.field public static final enum AGENT:Lio/sentry/SentryOpenTelemetryMode;

.field public static final enum AGENTLESS:Lio/sentry/SentryOpenTelemetryMode;

.field public static final enum AGENTLESS_SPRING:Lio/sentry/SentryOpenTelemetryMode;

.field public static final enum AUTO:Lio/sentry/SentryOpenTelemetryMode;

.field public static final enum OFF:Lio/sentry/SentryOpenTelemetryMode;


# direct methods
.method private static synthetic $values()[Lio/sentry/SentryOpenTelemetryMode;
    .locals 5

    .line 7
    sget-object v0, Lio/sentry/SentryOpenTelemetryMode;->AUTO:Lio/sentry/SentryOpenTelemetryMode;

    sget-object v1, Lio/sentry/SentryOpenTelemetryMode;->OFF:Lio/sentry/SentryOpenTelemetryMode;

    sget-object v2, Lio/sentry/SentryOpenTelemetryMode;->AGENT:Lio/sentry/SentryOpenTelemetryMode;

    sget-object v3, Lio/sentry/SentryOpenTelemetryMode;->AGENTLESS:Lio/sentry/SentryOpenTelemetryMode;

    sget-object v4, Lio/sentry/SentryOpenTelemetryMode;->AGENTLESS_SPRING:Lio/sentry/SentryOpenTelemetryMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/sentry/SentryOpenTelemetryMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lio/sentry/SentryOpenTelemetryMode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryOpenTelemetryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryOpenTelemetryMode;->AUTO:Lio/sentry/SentryOpenTelemetryMode;

    .line 14
    new-instance v0, Lio/sentry/SentryOpenTelemetryMode;

    const-string v1, "OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryOpenTelemetryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryOpenTelemetryMode;->OFF:Lio/sentry/SentryOpenTelemetryMode;

    .line 16
    new-instance v0, Lio/sentry/SentryOpenTelemetryMode;

    const-string v1, "AGENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryOpenTelemetryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryOpenTelemetryMode;->AGENT:Lio/sentry/SentryOpenTelemetryMode;

    .line 21
    new-instance v0, Lio/sentry/SentryOpenTelemetryMode;

    const-string v1, "AGENTLESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryOpenTelemetryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryOpenTelemetryMode;->AGENTLESS:Lio/sentry/SentryOpenTelemetryMode;

    .line 26
    new-instance v0, Lio/sentry/SentryOpenTelemetryMode;

    const-string v1, "AGENTLESS_SPRING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryOpenTelemetryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryOpenTelemetryMode;->AGENTLESS_SPRING:Lio/sentry/SentryOpenTelemetryMode;

    .line 7
    invoke-static {}, Lio/sentry/SentryOpenTelemetryMode;->$values()[Lio/sentry/SentryOpenTelemetryMode;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryOpenTelemetryMode;->$VALUES:[Lio/sentry/SentryOpenTelemetryMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SentryOpenTelemetryMode;
    .locals 1

    .line 7
    const-class v0, Lio/sentry/SentryOpenTelemetryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryOpenTelemetryMode;

    return-object p0
.end method

.method public static values()[Lio/sentry/SentryOpenTelemetryMode;
    .locals 1

    .line 7
    sget-object v0, Lio/sentry/SentryOpenTelemetryMode;->$VALUES:[Lio/sentry/SentryOpenTelemetryMode;

    invoke-virtual {v0}, [Lio/sentry/SentryOpenTelemetryMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SentryOpenTelemetryMode;

    return-object v0
.end method
