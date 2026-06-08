.class public final Lio/sentry/PerformanceCollectionData;
.super Ljava/lang/Object;
.source "PerformanceCollectionData.java"


# instance fields
.field private cpuUsagePercentage:Ljava/lang/Double;

.field private final nanoTimestamp:J

.field private usedHeapMemory:Ljava/lang/Long;

.field private usedNativeMemory:Ljava/lang/Long;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lio/sentry/PerformanceCollectionData;->cpuUsagePercentage:Ljava/lang/Double;

    .line 9
    iput-object v0, p0, Lio/sentry/PerformanceCollectionData;->usedHeapMemory:Ljava/lang/Long;

    .line 10
    iput-object v0, p0, Lio/sentry/PerformanceCollectionData;->usedNativeMemory:Ljava/lang/Long;

    .line 14
    iput-wide p1, p0, Lio/sentry/PerformanceCollectionData;->nanoTimestamp:J

    return-void
.end method


# virtual methods
.method public getCpuUsagePercentage()Ljava/lang/Double;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/sentry/PerformanceCollectionData;->cpuUsagePercentage:Ljava/lang/Double;

    return-object v0
.end method

.method public getNanoTimestamp()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lio/sentry/PerformanceCollectionData;->nanoTimestamp:J

    return-wide v0
.end method

.method public getUsedHeapMemory()Ljava/lang/Long;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/sentry/PerformanceCollectionData;->usedHeapMemory:Ljava/lang/Long;

    return-object v0
.end method

.method public getUsedNativeMemory()Ljava/lang/Long;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/sentry/PerformanceCollectionData;->usedNativeMemory:Ljava/lang/Long;

    return-object v0
.end method

.method public setCpuUsagePercentage(Ljava/lang/Double;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lio/sentry/PerformanceCollectionData;->cpuUsagePercentage:Ljava/lang/Double;

    return-void
.end method

.method public setUsedHeapMemory(Ljava/lang/Long;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lio/sentry/PerformanceCollectionData;->usedHeapMemory:Ljava/lang/Long;

    return-void
.end method

.method public setUsedNativeMemory(Ljava/lang/Long;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lio/sentry/PerformanceCollectionData;->usedNativeMemory:Ljava/lang/Long;

    return-void
.end method
