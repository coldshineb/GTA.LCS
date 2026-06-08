.class public final enum Lio/sentry/InitPriority;
.super Ljava/lang/Enum;
.source "InitPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/InitPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/InitPriority;

.field public static final enum HIGH:Lio/sentry/InitPriority;

.field public static final enum HIGHEST:Lio/sentry/InitPriority;

.field public static final enum LOW:Lio/sentry/InitPriority;

.field public static final enum LOWEST:Lio/sentry/InitPriority;

.field public static final enum MEDIUM:Lio/sentry/InitPriority;


# direct methods
.method private static synthetic $values()[Lio/sentry/InitPriority;
    .locals 5

    .line 5
    sget-object v0, Lio/sentry/InitPriority;->LOWEST:Lio/sentry/InitPriority;

    sget-object v1, Lio/sentry/InitPriority;->LOW:Lio/sentry/InitPriority;

    sget-object v2, Lio/sentry/InitPriority;->MEDIUM:Lio/sentry/InitPriority;

    sget-object v3, Lio/sentry/InitPriority;->HIGH:Lio/sentry/InitPriority;

    sget-object v4, Lio/sentry/InitPriority;->HIGHEST:Lio/sentry/InitPriority;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/sentry/InitPriority;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lio/sentry/InitPriority;

    const-string v1, "LOWEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/InitPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/InitPriority;->LOWEST:Lio/sentry/InitPriority;

    .line 8
    new-instance v0, Lio/sentry/InitPriority;

    const-string v1, "LOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/InitPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/InitPriority;->LOW:Lio/sentry/InitPriority;

    .line 9
    new-instance v0, Lio/sentry/InitPriority;

    const-string v1, "MEDIUM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/InitPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/InitPriority;->MEDIUM:Lio/sentry/InitPriority;

    .line 10
    new-instance v0, Lio/sentry/InitPriority;

    const-string v1, "HIGH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/InitPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/InitPriority;->HIGH:Lio/sentry/InitPriority;

    .line 11
    new-instance v0, Lio/sentry/InitPriority;

    const-string v1, "HIGHEST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/InitPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/InitPriority;->HIGHEST:Lio/sentry/InitPriority;

    .line 5
    invoke-static {}, Lio/sentry/InitPriority;->$values()[Lio/sentry/InitPriority;

    move-result-object v0

    sput-object v0, Lio/sentry/InitPriority;->$VALUES:[Lio/sentry/InitPriority;

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

.method public static valueOf(Ljava/lang/String;)Lio/sentry/InitPriority;
    .locals 1

    .line 5
    const-class v0, Lio/sentry/InitPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/InitPriority;

    return-object p0
.end method

.method public static values()[Lio/sentry/InitPriority;
    .locals 1

    .line 5
    sget-object v0, Lio/sentry/InitPriority;->$VALUES:[Lio/sentry/InitPriority;

    invoke-virtual {v0}, [Lio/sentry/InitPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/InitPriority;

    return-object v0
.end method
