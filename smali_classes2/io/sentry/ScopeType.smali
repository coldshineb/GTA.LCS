.class public final enum Lio/sentry/ScopeType;
.super Ljava/lang/Enum;
.source "ScopeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/ScopeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/ScopeType;

.field public static final enum COMBINED:Lio/sentry/ScopeType;

.field public static final enum CURRENT:Lio/sentry/ScopeType;

.field public static final enum GLOBAL:Lio/sentry/ScopeType;

.field public static final enum ISOLATION:Lio/sentry/ScopeType;


# direct methods
.method private static synthetic $values()[Lio/sentry/ScopeType;
    .locals 4

    .line 3
    sget-object v0, Lio/sentry/ScopeType;->CURRENT:Lio/sentry/ScopeType;

    sget-object v1, Lio/sentry/ScopeType;->ISOLATION:Lio/sentry/ScopeType;

    sget-object v2, Lio/sentry/ScopeType;->GLOBAL:Lio/sentry/ScopeType;

    sget-object v3, Lio/sentry/ScopeType;->COMBINED:Lio/sentry/ScopeType;

    filled-new-array {v0, v1, v2, v3}, [Lio/sentry/ScopeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lio/sentry/ScopeType;

    const-string v1, "CURRENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/ScopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/ScopeType;->CURRENT:Lio/sentry/ScopeType;

    .line 5
    new-instance v0, Lio/sentry/ScopeType;

    const-string v1, "ISOLATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/ScopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/ScopeType;->ISOLATION:Lio/sentry/ScopeType;

    .line 6
    new-instance v0, Lio/sentry/ScopeType;

    const-string v1, "GLOBAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/ScopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/ScopeType;->GLOBAL:Lio/sentry/ScopeType;

    .line 7
    new-instance v0, Lio/sentry/ScopeType;

    const-string v1, "COMBINED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/ScopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/ScopeType;->COMBINED:Lio/sentry/ScopeType;

    .line 3
    invoke-static {}, Lio/sentry/ScopeType;->$values()[Lio/sentry/ScopeType;

    move-result-object v0

    sput-object v0, Lio/sentry/ScopeType;->$VALUES:[Lio/sentry/ScopeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/ScopeType;
    .locals 1

    .line 3
    const-class v0, Lio/sentry/ScopeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/ScopeType;

    return-object p0
.end method

.method public static values()[Lio/sentry/ScopeType;
    .locals 1

    .line 3
    sget-object v0, Lio/sentry/ScopeType;->$VALUES:[Lio/sentry/ScopeType;

    invoke-virtual {v0}, [Lio/sentry/ScopeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/ScopeType;

    return-object v0
.end method
