.class public final enum Lio/sentry/SentryAttributeType;
.super Ljava/lang/Enum;
.source "SentryAttributeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SentryAttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SentryAttributeType;

.field public static final enum BOOLEAN:Lio/sentry/SentryAttributeType;

.field public static final enum DOUBLE:Lio/sentry/SentryAttributeType;

.field public static final enum INTEGER:Lio/sentry/SentryAttributeType;

.field public static final enum STRING:Lio/sentry/SentryAttributeType;


# direct methods
.method private static synthetic $values()[Lio/sentry/SentryAttributeType;
    .locals 4

    .line 6
    sget-object v0, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    sget-object v1, Lio/sentry/SentryAttributeType;->BOOLEAN:Lio/sentry/SentryAttributeType;

    sget-object v2, Lio/sentry/SentryAttributeType;->INTEGER:Lio/sentry/SentryAttributeType;

    sget-object v3, Lio/sentry/SentryAttributeType;->DOUBLE:Lio/sentry/SentryAttributeType;

    filled-new-array {v0, v1, v2, v3}, [Lio/sentry/SentryAttributeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lio/sentry/SentryAttributeType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    .line 8
    new-instance v0, Lio/sentry/SentryAttributeType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryAttributeType;->BOOLEAN:Lio/sentry/SentryAttributeType;

    .line 9
    new-instance v0, Lio/sentry/SentryAttributeType;

    const-string v1, "INTEGER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryAttributeType;->INTEGER:Lio/sentry/SentryAttributeType;

    .line 10
    new-instance v0, Lio/sentry/SentryAttributeType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryAttributeType;->DOUBLE:Lio/sentry/SentryAttributeType;

    .line 6
    invoke-static {}, Lio/sentry/SentryAttributeType;->$values()[Lio/sentry/SentryAttributeType;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryAttributeType;->$VALUES:[Lio/sentry/SentryAttributeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SentryAttributeType;
    .locals 1

    .line 6
    const-class v0, Lio/sentry/SentryAttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryAttributeType;

    return-object p0
.end method

.method public static values()[Lio/sentry/SentryAttributeType;
    .locals 1

    .line 6
    sget-object v0, Lio/sentry/SentryAttributeType;->$VALUES:[Lio/sentry/SentryAttributeType;

    invoke-virtual {v0}, [Lio/sentry/SentryAttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SentryAttributeType;

    return-object v0
.end method


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 2

    .line 13
    invoke-virtual {p0}, Lio/sentry/SentryAttributeType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
