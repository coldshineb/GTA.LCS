.class public final enum Lio/sentry/ScopeBindingMode;
.super Ljava/lang/Enum;
.source "ScopeBindingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/ScopeBindingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/ScopeBindingMode;

.field public static final enum AUTO:Lio/sentry/ScopeBindingMode;

.field public static final enum OFF:Lio/sentry/ScopeBindingMode;

.field public static final enum ON:Lio/sentry/ScopeBindingMode;


# direct methods
.method private static synthetic $values()[Lio/sentry/ScopeBindingMode;
    .locals 3

    .line 3
    sget-object v0, Lio/sentry/ScopeBindingMode;->AUTO:Lio/sentry/ScopeBindingMode;

    sget-object v1, Lio/sentry/ScopeBindingMode;->ON:Lio/sentry/ScopeBindingMode;

    sget-object v2, Lio/sentry/ScopeBindingMode;->OFF:Lio/sentry/ScopeBindingMode;

    filled-new-array {v0, v1, v2}, [Lio/sentry/ScopeBindingMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lio/sentry/ScopeBindingMode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/ScopeBindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/ScopeBindingMode;->AUTO:Lio/sentry/ScopeBindingMode;

    .line 15
    new-instance v0, Lio/sentry/ScopeBindingMode;

    const-string v1, "ON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/ScopeBindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/ScopeBindingMode;->ON:Lio/sentry/ScopeBindingMode;

    .line 17
    new-instance v0, Lio/sentry/ScopeBindingMode;

    const-string v1, "OFF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/ScopeBindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/ScopeBindingMode;->OFF:Lio/sentry/ScopeBindingMode;

    .line 3
    invoke-static {}, Lio/sentry/ScopeBindingMode;->$values()[Lio/sentry/ScopeBindingMode;

    move-result-object v0

    sput-object v0, Lio/sentry/ScopeBindingMode;->$VALUES:[Lio/sentry/ScopeBindingMode;

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

.method public static valueOf(Ljava/lang/String;)Lio/sentry/ScopeBindingMode;
    .locals 1

    .line 3
    const-class v0, Lio/sentry/ScopeBindingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/ScopeBindingMode;

    return-object p0
.end method

.method public static values()[Lio/sentry/ScopeBindingMode;
    .locals 1

    .line 3
    sget-object v0, Lio/sentry/ScopeBindingMode;->$VALUES:[Lio/sentry/ScopeBindingMode;

    invoke-virtual {v0}, [Lio/sentry/ScopeBindingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/ScopeBindingMode;

    return-object v0
.end method
