.class final enum Lcom/rockstargames/hal/andLabel$TextAlignment;
.super Ljava/lang/Enum;
.source "andLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TextAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rockstargames/hal/andLabel$TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockstargames/hal/andLabel$TextAlignment;

.field public static final enum TEXT_ALIGNMENT_CENTER:Lcom/rockstargames/hal/andLabel$TextAlignment;

.field public static final enum TEXT_ALIGNMENT_CENTER_BOTH:Lcom/rockstargames/hal/andLabel$TextAlignment;

.field public static final enum TEXT_ALIGNMENT_JUSTIFY:Lcom/rockstargames/hal/andLabel$TextAlignment;

.field public static final enum TEXT_ALIGNMENT_LEFT:Lcom/rockstargames/hal/andLabel$TextAlignment;

.field public static final enum TEXT_ALIGNMENT_RIGHT:Lcom/rockstargames/hal/andLabel$TextAlignment;


# direct methods
.method private static synthetic $values()[Lcom/rockstargames/hal/andLabel$TextAlignment;
    .locals 5

    .line 261
    sget-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_CENTER:Lcom/rockstargames/hal/andLabel$TextAlignment;

    sget-object v1, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_LEFT:Lcom/rockstargames/hal/andLabel$TextAlignment;

    sget-object v2, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_RIGHT:Lcom/rockstargames/hal/andLabel$TextAlignment;

    sget-object v3, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_JUSTIFY:Lcom/rockstargames/hal/andLabel$TextAlignment;

    sget-object v4, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_CENTER_BOTH:Lcom/rockstargames/hal/andLabel$TextAlignment;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/rockstargames/hal/andLabel$TextAlignment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 263
    new-instance v0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    const-string v1, "TEXT_ALIGNMENT_CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rockstargames/hal/andLabel$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_CENTER:Lcom/rockstargames/hal/andLabel$TextAlignment;

    .line 264
    new-instance v0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    const-string v1, "TEXT_ALIGNMENT_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/rockstargames/hal/andLabel$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_LEFT:Lcom/rockstargames/hal/andLabel$TextAlignment;

    .line 265
    new-instance v0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    const-string v1, "TEXT_ALIGNMENT_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/rockstargames/hal/andLabel$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_RIGHT:Lcom/rockstargames/hal/andLabel$TextAlignment;

    .line 266
    new-instance v0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    const-string v1, "TEXT_ALIGNMENT_JUSTIFY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/rockstargames/hal/andLabel$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_JUSTIFY:Lcom/rockstargames/hal/andLabel$TextAlignment;

    .line 267
    new-instance v0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    const-string v1, "TEXT_ALIGNMENT_CENTER_BOTH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/rockstargames/hal/andLabel$TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->TEXT_ALIGNMENT_CENTER_BOTH:Lcom/rockstargames/hal/andLabel$TextAlignment;

    .line 261
    invoke-static {}, Lcom/rockstargames/hal/andLabel$TextAlignment;->$values()[Lcom/rockstargames/hal/andLabel$TextAlignment;

    move-result-object v0

    sput-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->$VALUES:[Lcom/rockstargames/hal/andLabel$TextAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockstargames/hal/andLabel$TextAlignment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 261
    const-class v0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rockstargames/hal/andLabel$TextAlignment;

    return-object p0
.end method

.method public static values()[Lcom/rockstargames/hal/andLabel$TextAlignment;
    .locals 1

    .line 261
    sget-object v0, Lcom/rockstargames/hal/andLabel$TextAlignment;->$VALUES:[Lcom/rockstargames/hal/andLabel$TextAlignment;

    invoke-virtual {v0}, [Lcom/rockstargames/hal/andLabel$TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockstargames/hal/andLabel$TextAlignment;

    return-object v0
.end method
