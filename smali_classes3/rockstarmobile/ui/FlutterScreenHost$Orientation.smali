.class public final enum Lrockstarmobile/ui/FlutterScreenHost$Orientation;
.super Ljava/lang/Enum;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/ui/FlutterScreenHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrockstarmobile/ui/FlutterScreenHost$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrockstarmobile/ui/FlutterScreenHost$Orientation;

.field public static final enum INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

.field public static final enum LANDSCAPE:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

.field public static final enum PORTRAIT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;


# direct methods
.method private static synthetic $values()[Lrockstarmobile/ui/FlutterScreenHost$Orientation;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    sget-object v1, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->PORTRAIT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    sget-object v2, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->LANDSCAPE:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    filled-new-array {v0, v1, v2}, [Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    const-string v1, "INDIFFERENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterScreenHost$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->INDIFFERENT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    .line 2
    new-instance v0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterScreenHost$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->PORTRAIT:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    .line 3
    new-instance v0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterScreenHost$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->LANDSCAPE:Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    .line 4
    invoke-static {}, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->$values()[Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    move-result-object v0

    sput-object v0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->$VALUES:[Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrockstarmobile/ui/FlutterScreenHost$Orientation;
    .locals 1

    .line 1
    const-class v0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    return-object p0
.end method

.method public static values()[Lrockstarmobile/ui/FlutterScreenHost$Orientation;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/ui/FlutterScreenHost$Orientation;->$VALUES:[Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    invoke-virtual {v0}, [Lrockstarmobile/ui/FlutterScreenHost$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrockstarmobile/ui/FlutterScreenHost$Orientation;

    return-object v0
.end method
