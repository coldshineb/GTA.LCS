.class public final enum Lio/sentry/ProfileLifecycle;
.super Ljava/lang/Enum;
.source "ProfileLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/ProfileLifecycle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/ProfileLifecycle;

.field public static final enum MANUAL:Lio/sentry/ProfileLifecycle;

.field public static final enum TRACE:Lio/sentry/ProfileLifecycle;


# direct methods
.method private static synthetic $values()[Lio/sentry/ProfileLifecycle;
    .locals 2

    .line 7
    sget-object v0, Lio/sentry/ProfileLifecycle;->MANUAL:Lio/sentry/ProfileLifecycle;

    sget-object v1, Lio/sentry/ProfileLifecycle;->TRACE:Lio/sentry/ProfileLifecycle;

    filled-new-array {v0, v1}, [Lio/sentry/ProfileLifecycle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lio/sentry/ProfileLifecycle;

    const-string v1, "MANUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/ProfileLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/ProfileLifecycle;->MANUAL:Lio/sentry/ProfileLifecycle;

    .line 17
    new-instance v0, Lio/sentry/ProfileLifecycle;

    const-string v1, "TRACE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/ProfileLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/ProfileLifecycle;->TRACE:Lio/sentry/ProfileLifecycle;

    .line 7
    invoke-static {}, Lio/sentry/ProfileLifecycle;->$values()[Lio/sentry/ProfileLifecycle;

    move-result-object v0

    sput-object v0, Lio/sentry/ProfileLifecycle;->$VALUES:[Lio/sentry/ProfileLifecycle;

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

.method public static valueOf(Ljava/lang/String;)Lio/sentry/ProfileLifecycle;
    .locals 1

    .line 7
    const-class v0, Lio/sentry/ProfileLifecycle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/ProfileLifecycle;

    return-object p0
.end method

.method public static values()[Lio/sentry/ProfileLifecycle;
    .locals 1

    .line 7
    sget-object v0, Lio/sentry/ProfileLifecycle;->$VALUES:[Lio/sentry/ProfileLifecycle;

    invoke-virtual {v0}, [Lio/sentry/ProfileLifecycle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/ProfileLifecycle;

    return-object v0
.end method
