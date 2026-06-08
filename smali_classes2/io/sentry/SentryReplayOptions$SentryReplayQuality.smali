.class public final enum Lio/sentry/SentryReplayOptions$SentryReplayQuality;
.super Ljava/lang/Enum;
.source "SentryReplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryReplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SentryReplayQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SentryReplayOptions$SentryReplayQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SentryReplayOptions$SentryReplayQuality;

.field public static final enum HIGH:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

.field public static final enum LOW:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

.field public static final enum MEDIUM:Lio/sentry/SentryReplayOptions$SentryReplayQuality;


# instance fields
.field public final bitRate:I

.field public final screenshotQuality:I

.field public final sizeScale:F


# direct methods
.method private static synthetic $values()[Lio/sentry/SentryReplayOptions$SentryReplayQuality;
    .locals 3

    .line 23
    sget-object v0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->LOW:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    sget-object v1, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->MEDIUM:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    sget-object v2, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->HIGH:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    filled-new-array {v0, v1, v2}, [Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 25
    new-instance v0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    const v4, 0xc350

    const/16 v5, 0xa

    const-string v1, "LOW"

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryReplayOptions$SentryReplayQuality;-><init>(Ljava/lang/String;IFII)V

    sput-object v0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->LOW:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 28
    new-instance v1, Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    const v5, 0x124f8

    const/16 v6, 0x1e

    const-string v2, "MEDIUM"

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v6}, Lio/sentry/SentryReplayOptions$SentryReplayQuality;-><init>(Ljava/lang/String;IFII)V

    sput-object v1, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->MEDIUM:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 31
    new-instance v2, Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    const v6, 0x186a0

    const/16 v7, 0x32

    const-string v3, "HIGH"

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v7}, Lio/sentry/SentryReplayOptions$SentryReplayQuality;-><init>(Ljava/lang/String;IFII)V

    sput-object v2, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->HIGH:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 23
    invoke-static {}, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->$values()[Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->$VALUES:[Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FII)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->sizeScale:F

    .line 47
    iput p4, p0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->bitRate:I

    .line 48
    iput p5, p0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->screenshotQuality:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SentryReplayOptions$SentryReplayQuality;
    .locals 1

    .line 23
    const-class v0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    return-object p0
.end method

.method public static values()[Lio/sentry/SentryReplayOptions$SentryReplayQuality;
    .locals 1

    .line 23
    sget-object v0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->$VALUES:[Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    invoke-virtual {v0}, [Lio/sentry/SentryReplayOptions$SentryReplayQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    return-object v0
.end method


# virtual methods
.method public serializedName()Ljava/lang/String;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
