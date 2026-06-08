.class public Lrockstarmobile/GCConfig$GooglePlayConfig;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GooglePlayConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/GCConfig$GooglePlayConfig$Product;,
        Lrockstarmobile/GCConfig$GooglePlayConfig$GoogleServiceConfig;
    }
.end annotation


# instance fields
.field public final products:[Lrockstarmobile/GCConfig$GooglePlayConfig$Product;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "products"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    new-instance v3, Lrockstarmobile/GCConfig$GooglePlayConfig$Product;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lrockstarmobile/GCConfig$GooglePlayConfig$Product;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-array p1, v1, [Lrockstarmobile/GCConfig$GooglePlayConfig$Product;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lrockstarmobile/GCConfig$GooglePlayConfig$Product;

    iput-object p1, p0, Lrockstarmobile/GCConfig$GooglePlayConfig;->products:[Lrockstarmobile/GCConfig$GooglePlayConfig$Product;

    return-void
.end method
