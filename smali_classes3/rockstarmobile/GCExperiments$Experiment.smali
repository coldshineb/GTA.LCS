.class public Lrockstarmobile/GCExperiments$Experiment;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/GCExperiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Experiment"
.end annotation


# instance fields
.field private experimentID:Ljava/lang/String;

.field private variationID:Ljava/lang/String;

.field private variationValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrockstarmobile/GCExperiments$Experiment;->experimentID:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lrockstarmobile/GCExperiments$Experiment;->variationID:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lrockstarmobile/GCExperiments$Experiment;->variationValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExperimentID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCExperiments$Experiment;->experimentID:Ljava/lang/String;

    return-object v0
.end method

.method public getVariationID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCExperiments$Experiment;->variationID:Ljava/lang/String;

    return-object v0
.end method

.method public getVariationValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lrockstarmobile/GCExperiments$Experiment;->variationValue:Ljava/lang/String;

    return-object v0
.end method
