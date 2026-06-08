.class final Lcom/rockstargames/hal/N;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockstargames/hal/N;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field private static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v0, 0x1

    sput v0, Lcom/rockstargames/hal/N;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/rockstargames/hal/N;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/rockstargames/hal/N;->c:I

    const/4 v0, 0x4

    sput v0, Lcom/rockstargames/hal/N;->d:I

    sput v1, Lcom/rockstargames/hal/N;->e:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rockstargames/hal/N;->f:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public static a()[I
    .locals 1

    sget-object v0, Lcom/rockstargames/hal/N;->f:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
