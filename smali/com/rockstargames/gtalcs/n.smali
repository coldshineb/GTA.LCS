.class public final enum Lcom/rockstargames/gtalcs/n;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockstargames/gtalcs/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/rockstargames/gtalcs/n;

.field public static final enum b:Lcom/rockstargames/gtalcs/n;

.field private static enum c:Lcom/rockstargames/gtalcs/n;

.field private static final synthetic d:[Lcom/rockstargames/gtalcs/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/rockstargames/gtalcs/n;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/rockstargames/gtalcs/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockstargames/gtalcs/n;->a:Lcom/rockstargames/gtalcs/n;

    new-instance v0, Lcom/rockstargames/gtalcs/n;

    const-string v1, "APK"

    invoke-direct {v0, v1, v3}, Lcom/rockstargames/gtalcs/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockstargames/gtalcs/n;->b:Lcom/rockstargames/gtalcs/n;

    new-instance v0, Lcom/rockstargames/gtalcs/n;

    const-string v1, "OBB"

    invoke-direct {v0, v1, v4}, Lcom/rockstargames/gtalcs/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockstargames/gtalcs/n;->c:Lcom/rockstargames/gtalcs/n;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/rockstargames/gtalcs/n;

    sget-object v1, Lcom/rockstargames/gtalcs/n;->a:Lcom/rockstargames/gtalcs/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockstargames/gtalcs/n;->b:Lcom/rockstargames/gtalcs/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockstargames/gtalcs/n;->c:Lcom/rockstargames/gtalcs/n;

    aput-object v1, v0, v4

    sput-object v0, Lcom/rockstargames/gtalcs/n;->d:[Lcom/rockstargames/gtalcs/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockstargames/gtalcs/n;
    .locals 1

    const-class v0, Lcom/rockstargames/gtalcs/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/gtalcs/n;

    return-object v0
.end method

.method public static values()[Lcom/rockstargames/gtalcs/n;
    .locals 1

    sget-object v0, Lcom/rockstargames/gtalcs/n;->d:[Lcom/rockstargames/gtalcs/n;

    invoke-virtual {v0}, [Lcom/rockstargames/gtalcs/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockstargames/gtalcs/n;

    return-object v0
.end method
