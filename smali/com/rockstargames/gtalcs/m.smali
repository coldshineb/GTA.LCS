.class public final Lcom/rockstargames/gtalcs/m;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rockstargames/gtalcs/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field private static c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x1

    sput v0, Lcom/rockstargames/gtalcs/m;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/rockstargames/gtalcs/m;->c:I

    sput v1, Lcom/rockstargames/gtalcs/m;->b:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rockstargames/gtalcs/m;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method
