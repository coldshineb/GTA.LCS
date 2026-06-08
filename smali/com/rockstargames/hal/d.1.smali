.class final enum Lcom/rockstargames/hal/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockstargames/hal/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/rockstargames/hal/d;

.field private static enum c:Lcom/rockstargames/hal/d;

.field private static final synthetic d:[Lcom/rockstargames/hal/d;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/rockstargames/hal/d;

    const-string v1, "PLAY"

    const-string v2, "market://details?id="

    invoke-direct {v0, v1, v3, v2}, Lcom/rockstargames/hal/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rockstargames/hal/d;->a:Lcom/rockstargames/hal/d;

    new-instance v0, Lcom/rockstargames/hal/d;

    const-string v1, "AMAZON"

    const-string v2, "amzn://apps/android?asin="

    invoke-direct {v0, v1, v4, v2}, Lcom/rockstargames/hal/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rockstargames/hal/d;->c:Lcom/rockstargames/hal/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/rockstargames/hal/d;

    sget-object v1, Lcom/rockstargames/hal/d;->a:Lcom/rockstargames/hal/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockstargames/hal/d;->c:Lcom/rockstargames/hal/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/rockstargames/hal/d;->d:[Lcom/rockstargames/hal/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/rockstargames/hal/d;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockstargames/hal/d;
    .locals 1

    const-class v0, Lcom/rockstargames/hal/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/d;

    return-object v0
.end method

.method public static values()[Lcom/rockstargames/hal/d;
    .locals 1

    sget-object v0, Lcom/rockstargames/hal/d;->d:[Lcom/rockstargames/hal/d;

    invoke-virtual {v0}, [Lcom/rockstargames/hal/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockstargames/hal/d;

    return-object v0
.end method
