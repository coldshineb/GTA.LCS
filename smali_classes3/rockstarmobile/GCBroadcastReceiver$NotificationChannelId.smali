.class public final enum Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;
.super Ljava/lang/Enum;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationChannelId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;

.field public static final enum DailyTokens:Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;


# direct methods
.method private static synthetic $values()[Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;->DailyTokens:Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;

    filled-new-array {v0}, [Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;

    const-string v1, "DailyTokens"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;->DailyTokens:Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;

    invoke-static {}, Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;->$values()[Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;

    move-result-object v0

    sput-object v0, Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;->$VALUES:[Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;

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

.method public static valueOf(Ljava/lang/String;)Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;
    .locals 1

    .line 1
    const-class v0, Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;

    return-object p0
.end method

.method public static values()[Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;
    .locals 1

    .line 1
    sget-object v0, Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;->$VALUES:[Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;

    invoke-virtual {v0}, [Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrockstarmobile/GCBroadcastReceiver$NotificationChannelId;

    return-object v0
.end method
