.class final enum Lcom/rockstargames/hal/OtherAppLauncher$Market;
.super Ljava/lang/Enum;
.source "OtherAppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/OtherAppLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Market"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rockstargames/hal/OtherAppLauncher$Market;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockstargames/hal/OtherAppLauncher$Market;

.field public static final enum AMAZON:Lcom/rockstargames/hal/OtherAppLauncher$Market;

.field public static final enum PLAY:Lcom/rockstargames/hal/OtherAppLauncher$Market;


# instance fields
.field public final prefix:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/rockstargames/hal/OtherAppLauncher$Market;
    .locals 2

    .line 13
    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->PLAY:Lcom/rockstargames/hal/OtherAppLauncher$Market;

    sget-object v1, Lcom/rockstargames/hal/OtherAppLauncher$Market;->AMAZON:Lcom/rockstargames/hal/OtherAppLauncher$Market;

    filled-new-array {v0, v1}, [Lcom/rockstargames/hal/OtherAppLauncher$Market;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;

    const/4 v1, 0x0

    const-string v2, "market://details?id="

    const-string v3, "PLAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/rockstargames/hal/OtherAppLauncher$Market;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->PLAY:Lcom/rockstargames/hal/OtherAppLauncher$Market;

    .line 16
    new-instance v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;

    const/4 v1, 0x1

    const-string v2, "amzn://apps/android?asin="

    const-string v3, "AMAZON"

    invoke-direct {v0, v3, v1, v2}, Lcom/rockstargames/hal/OtherAppLauncher$Market;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->AMAZON:Lcom/rockstargames/hal/OtherAppLauncher$Market;

    .line 13
    invoke-static {}, Lcom/rockstargames/hal/OtherAppLauncher$Market;->$values()[Lcom/rockstargames/hal/OtherAppLauncher$Market;

    move-result-object v0

    sput-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->$VALUES:[Lcom/rockstargames/hal/OtherAppLauncher$Market;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->prefix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockstargames/hal/OtherAppLauncher$Market;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 13
    const-class v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rockstargames/hal/OtherAppLauncher$Market;

    return-object p0
.end method

.method public static values()[Lcom/rockstargames/hal/OtherAppLauncher$Market;
    .locals 1

    .line 13
    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->$VALUES:[Lcom/rockstargames/hal/OtherAppLauncher$Market;

    invoke-virtual {v0}, [Lcom/rockstargames/hal/OtherAppLauncher$Market;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockstargames/hal/OtherAppLauncher$Market;

    return-object v0
.end method
