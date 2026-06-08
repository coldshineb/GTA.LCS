.class public Lrockstarmobile/GCConfig$GatesConfig;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GatesConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/GCConfig$GatesConfig$Type;,
        Lrockstarmobile/GCConfig$GatesConfig$Position;
    }
.end annotation


# instance fields
.field public timedGateSeconds:I

.field public timerPosition:Lrockstarmobile/GCConfig$GatesConfig$Position;

.field public type:Lrockstarmobile/GCConfig$GatesConfig$Type;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lrockstarmobile/GCConfig$GatesConfig$Type;->values()[Lrockstarmobile/GCConfig$GatesConfig$Type;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lrockstarmobile/GCConfig$GatesConfig;->type:Lrockstarmobile/GCConfig$GatesConfig$Type;

    .line 3
    const-string v0, "timed_gate_seconds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lrockstarmobile/GCConfig$GatesConfig;->timedGateSeconds:I

    .line 4
    invoke-static {}, Lrockstarmobile/GCConfig$GatesConfig$Position;->values()[Lrockstarmobile/GCConfig$GatesConfig$Position;

    move-result-object v0

    const-string v1, "timer_position"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lrockstarmobile/GCConfig$GatesConfig;->timerPosition:Lrockstarmobile/GCConfig$GatesConfig$Position;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCConfig$GatesConfig;->type:Lrockstarmobile/GCConfig$GatesConfig$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3
    const-string v0, "Disabled"

    return-object v0

    .line 6
    :cond_0
    const-string v0, "Hard Start Gate"

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timed("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lrockstarmobile/GCConfig$GatesConfig;->timedGateSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrockstarmobile/GCConfig$GatesConfig;->timerPosition:Lrockstarmobile/GCConfig$GatesConfig$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    const-string v0, "Positioned"

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lrockstarmobile/GCConfig$GatesConfig;->type:Lrockstarmobile/GCConfig$GatesConfig$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    iget v1, p0, Lrockstarmobile/GCConfig$GatesConfig;->timedGateSeconds:I

    const-string v2, "timed_gate_seconds"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lrockstarmobile/GCConfig$GatesConfig;->timerPosition:Lrockstarmobile/GCConfig$GatesConfig$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "timer_position"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
