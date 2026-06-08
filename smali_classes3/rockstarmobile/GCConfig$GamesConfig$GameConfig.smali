.class public Lrockstarmobile/GCConfig$GamesConfig$GameConfig;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCConfig$GamesConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameConfig"
.end annotation


# instance fields
.field public final androidPackageName:Ljava/lang/String;

.field public final androidReleaseDate:J

.field public final backgroundImageUrl:Ljava/lang/String;

.field public final backgroundVideoStreamUrl:Ljava/lang/String;

.field public final coverUrl:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final genres:[Ljava/lang/String;

.field public final iconUrl:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final iosAppStoreId:Ljava/lang/String;

.field public final iosBundleIds:[Ljava/lang/String;

.field public final iosReleaseDate:J

.field public final name:Ljava/lang/String;

.field public final shortDescription:Ljava/lang/String;

.field public final slug:Ljava/lang/String;

.field public final subtitle:Ljava/lang/String;

.field public final tags:[Ljava/lang/String;

.field public final trailerUrl:Ljava/lang/String;

.field public final urlScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->id:Ljava/lang/String;

    .line 3
    const-string v0, "slug"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->slug:Ljava/lang/String;

    .line 4
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->name:Ljava/lang/String;

    .line 5
    const-string v0, "subtitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->subtitle:Ljava/lang/String;

    .line 6
    const-string v0, "short_description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->shortDescription:Ljava/lang/String;

    .line 7
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->description:Ljava/lang/String;

    .line 8
    const-string v0, "url_scheme"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->urlScheme:Ljava/lang/String;

    .line 9
    const-string v0, "tags"

    invoke-direct {p0, p1, v0}, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->getStringArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->tags:[Ljava/lang/String;

    .line 10
    const-string v0, "genres"

    invoke-direct {p0, p1, v0}, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->getStringArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->genres:[Ljava/lang/String;

    .line 11
    const-string v0, "ios_app_store_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->iosAppStoreId:Ljava/lang/String;

    .line 12
    const-string v0, "ios_bundle_ids"

    invoke-direct {p0, p1, v0}, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->getStringArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->iosBundleIds:[Ljava/lang/String;

    .line 13
    const-string v0, "ios_release_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->iosReleaseDate:J

    .line 14
    const-string v0, "android_package_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->androidPackageName:Ljava/lang/String;

    .line 15
    const-string v0, "android_release_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->androidReleaseDate:J

    .line 16
    const-string v0, "icon_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->iconUrl:Ljava/lang/String;

    .line 17
    const-string v0, "cover_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->coverUrl:Ljava/lang/String;

    .line 18
    const-string v0, "trailer_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->trailerUrl:Ljava/lang/String;

    .line 19
    const-string v0, "background_image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->backgroundImageUrl:Ljava/lang/String;

    .line 20
    const-string v0, "background_video_stream_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->backgroundVideoStreamUrl:Ljava/lang/String;

    return-void
.end method

.method private getStringArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method
