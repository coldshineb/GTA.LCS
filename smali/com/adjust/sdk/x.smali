.class public final enum Lcom/adjust/sdk/x;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adjust/sdk/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adjust/sdk/x;

.field public static final enum b:Lcom/adjust/sdk/x;

.field private static enum d:Lcom/adjust/sdk/x;

.field private static enum e:Lcom/adjust/sdk/x;

.field private static enum f:Lcom/adjust/sdk/x;

.field private static enum g:Lcom/adjust/sdk/x;

.field private static final synthetic h:[Lcom/adjust/sdk/x;


# instance fields
.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    new-instance v0, Lcom/adjust/sdk/x;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v7, v3}, Lcom/adjust/sdk/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adjust/sdk/x;->d:Lcom/adjust/sdk/x;

    new-instance v0, Lcom/adjust/sdk/x;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v4}, Lcom/adjust/sdk/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adjust/sdk/x;->e:Lcom/adjust/sdk/x;

    new-instance v0, Lcom/adjust/sdk/x;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3, v5}, Lcom/adjust/sdk/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adjust/sdk/x;->a:Lcom/adjust/sdk/x;

    new-instance v0, Lcom/adjust/sdk/x;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v4, v6}, Lcom/adjust/sdk/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adjust/sdk/x;->f:Lcom/adjust/sdk/x;

    new-instance v0, Lcom/adjust/sdk/x;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/adjust/sdk/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adjust/sdk/x;->g:Lcom/adjust/sdk/x;

    new-instance v0, Lcom/adjust/sdk/x;

    const-string v1, "ASSERT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lcom/adjust/sdk/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adjust/sdk/x;->b:Lcom/adjust/sdk/x;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/adjust/sdk/x;

    sget-object v1, Lcom/adjust/sdk/x;->d:Lcom/adjust/sdk/x;

    aput-object v1, v0, v7

    const/4 v1, 0x1

    sget-object v2, Lcom/adjust/sdk/x;->e:Lcom/adjust/sdk/x;

    aput-object v2, v0, v1

    sget-object v1, Lcom/adjust/sdk/x;->a:Lcom/adjust/sdk/x;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adjust/sdk/x;->f:Lcom/adjust/sdk/x;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adjust/sdk/x;->g:Lcom/adjust/sdk/x;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adjust/sdk/x;->b:Lcom/adjust/sdk/x;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adjust/sdk/x;->h:[Lcom/adjust/sdk/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/adjust/sdk/x;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adjust/sdk/x;
    .locals 1

    const-class v0, Lcom/adjust/sdk/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/x;

    return-object v0
.end method

.method public static values()[Lcom/adjust/sdk/x;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/x;->h:[Lcom/adjust/sdk/x;

    invoke-virtual {v0}, [Lcom/adjust/sdk/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adjust/sdk/x;

    return-object v0
.end method
