.class public Lrockstarmobile/GCConfig$GooglePlayConfig$Product;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCConfig$GooglePlayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Product"
.end annotation


# instance fields
.field public Description:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public ProductID:Ljava/lang/String;

.field public TrialPeriod:Ljava/lang/String;

.field public TrialPeriodDays:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GooglePlayConfig$Product;->Name:Ljava/lang/String;

    .line 3
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GooglePlayConfig$Product;->Description:Ljava/lang/String;

    .line 4
    const-string v0, "product_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GooglePlayConfig$Product;->ProductID:Ljava/lang/String;

    .line 5
    const-string v0, "trial_period"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrockstarmobile/GCConfig$GooglePlayConfig$Product;->TrialPeriod:Ljava/lang/String;

    .line 6
    const-string v0, "trial_period_days"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrockstarmobile/GCConfig$GooglePlayConfig$Product;->TrialPeriodDays:Ljava/lang/String;

    return-void
.end method
