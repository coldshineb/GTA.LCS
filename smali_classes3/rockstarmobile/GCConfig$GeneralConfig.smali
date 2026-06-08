.class public Lrockstarmobile/GCConfig$GeneralConfig;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralConfig"
.end annotation


# instance fields
.field public apiKey:Ljava/lang/String;

.field public backgroundVideo:Ljava/lang/String;

.field public genres:[Ljava/lang/String;

.field public mode:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public slug:Ljava/lang/String;

.field public urlScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GeneralConfig;->name:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gameclub.app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    const-string p1, "GameClub"

    iput-object p1, p0, Lrockstarmobile/GCConfig$GeneralConfig;->name:Ljava/lang/String;

    .line 6
    :cond_0
    const-string p1, "genres"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lrockstarmobile/GCConfig$GeneralConfig;->genres:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Lrockstarmobile/GCConfig$GeneralConfig;->genres:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    const-string p1, "apikey"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/GCConfig$GeneralConfig;->apiKey:Ljava/lang/String;

    .line 12
    const-string p1, "urlscheme"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/GCConfig$GeneralConfig;->urlScheme:Ljava/lang/String;

    .line 13
    const-string p1, "mode"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/GCConfig$GeneralConfig;->mode:Ljava/lang/String;

    .line 14
    const-string p1, "slug"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/GCConfig$GeneralConfig;->slug:Ljava/lang/String;

    .line 15
    const-string p1, "background_video"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/GCConfig$GeneralConfig;->backgroundVideo:Ljava/lang/String;

    return-void
.end method
