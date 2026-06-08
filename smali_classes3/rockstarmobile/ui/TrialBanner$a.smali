.class final enum Lrockstarmobile/ui/TrialBanner$a;
.super Ljava/lang/Enum;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/ui/TrialBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lrockstarmobile/ui/TrialBanner$a;

.field public static final enum b:Lrockstarmobile/ui/TrialBanner$a;

.field public static final enum c:Lrockstarmobile/ui/TrialBanner$a;

.field private static final synthetic d:[Lrockstarmobile/ui/TrialBanner$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/ui/TrialBanner$a;

    const-string v1, "hidden"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/TrialBanner$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/ui/TrialBanner$a;->a:Lrockstarmobile/ui/TrialBanner$a;

    .line 2
    new-instance v0, Lrockstarmobile/ui/TrialBanner$a;

    const-string v1, "progressVisible"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/TrialBanner$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/ui/TrialBanner$a;->b:Lrockstarmobile/ui/TrialBanner$a;

    .line 3
    new-instance v0, Lrockstarmobile/ui/TrialBanner$a;

    const-string v1, "full"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/TrialBanner$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/ui/TrialBanner$a;->c:Lrockstarmobile/ui/TrialBanner$a;

    .line 4
    invoke-static {}, Lrockstarmobile/ui/TrialBanner$a;->a()[Lrockstarmobile/ui/TrialBanner$a;

    move-result-object v0

    sput-object v0, Lrockstarmobile/ui/TrialBanner$a;->d:[Lrockstarmobile/ui/TrialBanner$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lrockstarmobile/ui/TrialBanner$a;
    .locals 3

    .line 1
    sget-object v0, Lrockstarmobile/ui/TrialBanner$a;->a:Lrockstarmobile/ui/TrialBanner$a;

    sget-object v1, Lrockstarmobile/ui/TrialBanner$a;->b:Lrockstarmobile/ui/TrialBanner$a;

    sget-object v2, Lrockstarmobile/ui/TrialBanner$a;->c:Lrockstarmobile/ui/TrialBanner$a;

    filled-new-array {v0, v1, v2}, [Lrockstarmobile/ui/TrialBanner$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrockstarmobile/ui/TrialBanner$a;
    .locals 1

    .line 1
    const-class v0, Lrockstarmobile/ui/TrialBanner$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrockstarmobile/ui/TrialBanner$a;

    return-object p0
.end method

.method public static values()[Lrockstarmobile/ui/TrialBanner$a;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/ui/TrialBanner$a;->d:[Lrockstarmobile/ui/TrialBanner$a;

    invoke-virtual {v0}, [Lrockstarmobile/ui/TrialBanner$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrockstarmobile/ui/TrialBanner$a;

    return-object v0
.end method
