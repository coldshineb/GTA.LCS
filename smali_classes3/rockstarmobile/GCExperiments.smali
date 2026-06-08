.class public Lrockstarmobile/GCExperiments;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrockstarmobile/GCExperiments$Experiment;,
        Lrockstarmobile/GCExperiments$IExperimentCallback;
    }
.end annotation


# static fields
.field private static callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final callbacksLock:Ljava/lang/Object;

.field public static experimentsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lrockstarmobile/GCExperiments$Experiment;",
            ">;"
        }
    .end annotation
.end field

.field private static experimentsCacheValue:Ljava/lang/String;

.field private static log:Lrockstarmobile/utilities/Log;

.field private static overridesCacheValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrockstarmobile/utilities/Log;

    const-string v1, "GCExperiments"

    invoke-direct {v0, v1}, Lrockstarmobile/utilities/Log;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrockstarmobile/GCExperiments;->log:Lrockstarmobile/utilities/Log;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrockstarmobile/GCExperiments;->callbacksLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lrockstarmobile/GCExperiments;->callbacks:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lrockstarmobile/GCExperiments;->experimentsCache:Ljava/util/HashMap;

    .line 33
    const-string v0, ""

    sput-object v0, Lrockstarmobile/GCExperiments;->experimentsCacheValue:Ljava/lang/String;

    .line 34
    sput-object v0, Lrockstarmobile/GCExperiments;->overridesCacheValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lrockstarmobile/GCExperiments;->getExperiment(Ljava/lang/String;)Lrockstarmobile/GCExperiments$Experiment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lrockstarmobile/GCExperiments$Experiment;->getVariationID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[control]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lrockstarmobile/GCExperiments$Experiment;->getVariationID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static getExperiment(Ljava/lang/String;)Lrockstarmobile/GCExperiments$Experiment;
    .locals 3

    .line 1
    invoke-static {}, Lrockstarmobile/GCState;->getExperiments()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lrockstarmobile/GCState;->getExperimentsOverride()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lrockstarmobile/GCExperiments;->experimentsCacheValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lrockstarmobile/GCExperiments;->overridesCacheValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    :cond_0
    sget-object v2, Lrockstarmobile/GCExperiments;->experimentsCache:Ljava/util/HashMap;

    invoke-static {v0, v2}, Lrockstarmobile/GCExperiments;->parseExperiments(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    sput-object v2, Lrockstarmobile/GCExperiments;->experimentsCache:Ljava/util/HashMap;

    .line 5
    sput-object v0, Lrockstarmobile/GCExperiments;->experimentsCacheValue:Ljava/lang/String;

    .line 6
    invoke-static {v1, v2}, Lrockstarmobile/GCExperiments;->parseExperiments(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lrockstarmobile/GCExperiments;->experimentsCache:Ljava/util/HashMap;

    .line 7
    sput-object v1, Lrockstarmobile/GCExperiments;->overridesCacheValue:Ljava/lang/String;

    .line 10
    :cond_1
    sget-object v0, Lrockstarmobile/GCExperiments;->experimentsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrockstarmobile/GCExperiments$Experiment;

    return-object p0
.end method

.method static synthetic lambda$waitFor$0(Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/GCExperiments$IExperimentCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lrockstarmobile/GCExperiments;->waitFor(Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/GCExperiments$IExperimentCallback;)V

    return-void
.end method

.method public static parseExperiments(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lrockstarmobile/GCExperiments$Experiment;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lrockstarmobile/GCExperiments$Experiment;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 9
    const-string v3, "experimentID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    new-instance v4, Lrockstarmobile/GCExperiments$Experiment;

    const-string v5, "variationID"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "variationValue"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v5, v2}, Lrockstarmobile/GCExperiments$Experiment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    sget-object v1, Lrockstarmobile/GCExperiments;->log:Lrockstarmobile/utilities/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing json ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public static serializeExperiments(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lrockstarmobile/GCExperiments$Experiment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrockstarmobile/GCExperiments$Experiment;

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {v1}, Lrockstarmobile/GCExperiments$Experiment;->getExperimentID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "experimentID"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v1}, Lrockstarmobile/GCExperiments$Experiment;->getVariationID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "variationID"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v1}, Lrockstarmobile/GCExperiments$Experiment;->getVariationValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "variationValue"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 8
    sget-object v2, Lrockstarmobile/GCExperiments;->log:Lrockstarmobile/utilities/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Experiment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lrockstarmobile/GCExperiments$Experiment;->getExperimentID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lrockstarmobile/GCExperiments$Experiment;->getVariationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setExperiments(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lrockstarmobile/GCExperiments$Experiment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrockstarmobile/GCExperiments;->serializeExperiments(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lrockstarmobile/GCState;->setExperiments(Ljava/lang/String;)V

    .line 3
    sput-object p0, Lrockstarmobile/GCExperiments;->experimentsCache:Ljava/util/HashMap;

    .line 4
    sput-object v0, Lrockstarmobile/GCExperiments;->experimentsCacheValue:Ljava/lang/String;

    .line 5
    const-string p0, ""

    sput-object p0, Lrockstarmobile/GCExperiments;->overridesCacheValue:Ljava/lang/String;

    .line 7
    sget-object p0, Lrockstarmobile/GCExperiments;->callbacksLock:Ljava/lang/Object;

    monitor-enter p0

    .line 8
    :try_start_0
    sget-object v0, Lrockstarmobile/GCExperiments;->callbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 10
    sput-object v1, Lrockstarmobile/GCExperiments;->callbacks:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Runnable;

    .line 12
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 15
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static waitFor(Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/GCExperiments$IExperimentCallback;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lrockstarmobile/GCExperiments;->getExperiment(Ljava/lang/String;)Lrockstarmobile/GCExperiments$Experiment;

    move-result-object v0

    .line 2
    sget-object v1, Lrockstarmobile/GCExperiments;->callbacksLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lrockstarmobile/GCExperiments$Experiment;->getVariationID()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lrockstarmobile/GCExperiments$IExperimentCallback;->onResolved(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lrockstarmobile/GCExperiments;->callbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p2, p1}, Lrockstarmobile/GCExperiments$IExperimentCallback;->onResolved(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v2, Lrockstarmobile/GCExperiments$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lrockstarmobile/GCExperiments$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lrockstarmobile/GCExperiments$IExperimentCallback;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
