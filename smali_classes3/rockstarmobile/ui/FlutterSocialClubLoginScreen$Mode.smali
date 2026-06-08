.class public final enum Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;
.super Ljava/lang/Enum;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/ui/FlutterSocialClubLoginScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

.field public static final enum LaunchOptions:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

.field public static final enum ScAuthDirectSignin:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

.field public static final enum ScAuthDirectSignup:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

.field public static final enum SlidingUpsell:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;


# direct methods
.method private static synthetic $values()[Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;
    .locals 4

    .line 1
    sget-object v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->SlidingUpsell:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    sget-object v1, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->LaunchOptions:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    sget-object v2, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->ScAuthDirectSignin:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    sget-object v3, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->ScAuthDirectSignup:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    filled-new-array {v0, v1, v2, v3}, [Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    const-string v1, "SlidingUpsell"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->SlidingUpsell:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    .line 2
    new-instance v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    const-string v1, "LaunchOptions"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->LaunchOptions:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    .line 3
    new-instance v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    const-string v1, "ScAuthDirectSignin"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->ScAuthDirectSignin:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    .line 4
    new-instance v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    const-string v1, "ScAuthDirectSignup"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->ScAuthDirectSignup:Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    .line 5
    invoke-static {}, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->$values()[Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    move-result-object v0

    sput-object v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->$VALUES:[Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;
    .locals 1

    .line 1
    const-class v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    return-object p0
.end method

.method public static values()[Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->$VALUES:[Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    invoke-virtual {v0}, [Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrockstarmobile/ui/FlutterSocialClubLoginScreen$Mode;

    return-object v0
.end method
