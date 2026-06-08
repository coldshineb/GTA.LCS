.class public Lrockstarmobile/GCConfig$GamesConfig;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GamesConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/GCConfig$GamesConfig$GameConfig;
    }
.end annotation


# instance fields
.field private games:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lrockstarmobile/GCConfig$GamesConfig$GameConfig;",
            ">;"
        }
    .end annotation
.end field

.field private gamesBySlug:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lrockstarmobile/GCConfig$GamesConfig$GameConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig;->games:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig;->gamesBySlug:Ljava/util/HashMap;

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    new-instance v2, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;-><init>(Lorg/json/JSONObject;)V

    .line 10
    iget-object v3, p0, Lrockstarmobile/GCConfig$GamesConfig;->games:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lrockstarmobile/GCConfig$GamesConfig;->gamesBySlug:Ljava/util/HashMap;

    iget-object v3, v2, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;->slug:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public all()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lrockstarmobile/GCConfig$GamesConfig$GameConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig;->games:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lrockstarmobile/GCConfig$GamesConfig$GameConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig;->games:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;

    return-object p1
.end method

.method public getBySlug(Ljava/lang/String;)Lrockstarmobile/GCConfig$GamesConfig$GameConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCConfig$GamesConfig;->gamesBySlug:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrockstarmobile/GCConfig$GamesConfig$GameConfig;

    return-object p1
.end method
