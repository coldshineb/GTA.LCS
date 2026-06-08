.class public final enum Lio/sentry/SentryLogLevel;
.super Ljava/lang/Enum;
.source "SentryLogLevel.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryLogLevel$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SentryLogLevel;",
        ">;",
        "Lio/sentry/JsonSerializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SentryLogLevel;

.field public static final enum DEBUG:Lio/sentry/SentryLogLevel;

.field public static final enum ERROR:Lio/sentry/SentryLogLevel;

.field public static final enum FATAL:Lio/sentry/SentryLogLevel;

.field public static final enum INFO:Lio/sentry/SentryLogLevel;

.field public static final enum TRACE:Lio/sentry/SentryLogLevel;

.field public static final enum WARN:Lio/sentry/SentryLogLevel;


# instance fields
.field private final severityNumber:I


# direct methods
.method private static synthetic $values()[Lio/sentry/SentryLogLevel;
    .locals 6

    .line 8
    sget-object v0, Lio/sentry/SentryLogLevel;->TRACE:Lio/sentry/SentryLogLevel;

    sget-object v1, Lio/sentry/SentryLogLevel;->DEBUG:Lio/sentry/SentryLogLevel;

    sget-object v2, Lio/sentry/SentryLogLevel;->INFO:Lio/sentry/SentryLogLevel;

    sget-object v3, Lio/sentry/SentryLogLevel;->WARN:Lio/sentry/SentryLogLevel;

    sget-object v4, Lio/sentry/SentryLogLevel;->ERROR:Lio/sentry/SentryLogLevel;

    sget-object v5, Lio/sentry/SentryLogLevel;->FATAL:Lio/sentry/SentryLogLevel;

    filled-new-array/range {v0 .. v5}, [Lio/sentry/SentryLogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lio/sentry/SentryLogLevel;

    const-string v1, "TRACE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SentryLogLevel;->TRACE:Lio/sentry/SentryLogLevel;

    .line 10
    new-instance v0, Lio/sentry/SentryLogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lio/sentry/SentryLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SentryLogLevel;->DEBUG:Lio/sentry/SentryLogLevel;

    .line 11
    new-instance v0, Lio/sentry/SentryLogLevel;

    const/4 v1, 0x2

    const/16 v3, 0x9

    const-string v4, "INFO"

    invoke-direct {v0, v4, v1, v3}, Lio/sentry/SentryLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SentryLogLevel;->INFO:Lio/sentry/SentryLogLevel;

    .line 12
    new-instance v0, Lio/sentry/SentryLogLevel;

    const/4 v1, 0x3

    const/16 v3, 0xd

    const-string v4, "WARN"

    invoke-direct {v0, v4, v1, v3}, Lio/sentry/SentryLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SentryLogLevel;->WARN:Lio/sentry/SentryLogLevel;

    .line 13
    new-instance v0, Lio/sentry/SentryLogLevel;

    const/4 v1, 0x4

    const/16 v3, 0x11

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v1, v3}, Lio/sentry/SentryLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SentryLogLevel;->ERROR:Lio/sentry/SentryLogLevel;

    .line 14
    new-instance v0, Lio/sentry/SentryLogLevel;

    const-string v1, "FATAL"

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/sentry/SentryLogLevel;->FATAL:Lio/sentry/SentryLogLevel;

    .line 8
    invoke-static {}, Lio/sentry/SentryLogLevel;->$values()[Lio/sentry/SentryLogLevel;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryLogLevel;->$VALUES:[Lio/sentry/SentryLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lio/sentry/SentryLogLevel;->severityNumber:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SentryLogLevel;
    .locals 1

    .line 8
    const-class v0, Lio/sentry/SentryLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryLogLevel;

    return-object p0
.end method

.method public static values()[Lio/sentry/SentryLogLevel;
    .locals 1

    .line 8
    sget-object v0, Lio/sentry/SentryLogLevel;->$VALUES:[Lio/sentry/SentryLogLevel;

    invoke-virtual {v0}, [Lio/sentry/SentryLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SentryLogLevel;

    return-object v0
.end method


# virtual methods
.method public getSeverityNumber()I
    .locals 1

    .line 23
    iget v0, p0, Lio/sentry/SentryLogLevel;->severityNumber:I

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/sentry/SentryLogLevel;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    return-void
.end method
