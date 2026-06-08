.class public final enum Lio/sentry/rrweb/RRWebEventType;
.super Ljava/lang/Enum;
.source "RRWebEventType.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebEventType$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/rrweb/RRWebEventType;",
        ">;",
        "Lio/sentry/JsonSerializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/rrweb/RRWebEventType;

.field public static final enum Custom:Lio/sentry/rrweb/RRWebEventType;

.field public static final enum DomContentLoaded:Lio/sentry/rrweb/RRWebEventType;

.field public static final enum FullSnapshot:Lio/sentry/rrweb/RRWebEventType;

.field public static final enum IncrementalSnapshot:Lio/sentry/rrweb/RRWebEventType;

.field public static final enum Load:Lio/sentry/rrweb/RRWebEventType;

.field public static final enum Meta:Lio/sentry/rrweb/RRWebEventType;

.field public static final enum Plugin:Lio/sentry/rrweb/RRWebEventType;


# direct methods
.method private static synthetic $values()[Lio/sentry/rrweb/RRWebEventType;
    .locals 7

    .line 11
    sget-object v0, Lio/sentry/rrweb/RRWebEventType;->DomContentLoaded:Lio/sentry/rrweb/RRWebEventType;

    sget-object v1, Lio/sentry/rrweb/RRWebEventType;->Load:Lio/sentry/rrweb/RRWebEventType;

    sget-object v2, Lio/sentry/rrweb/RRWebEventType;->FullSnapshot:Lio/sentry/rrweb/RRWebEventType;

    sget-object v3, Lio/sentry/rrweb/RRWebEventType;->IncrementalSnapshot:Lio/sentry/rrweb/RRWebEventType;

    sget-object v4, Lio/sentry/rrweb/RRWebEventType;->Meta:Lio/sentry/rrweb/RRWebEventType;

    sget-object v5, Lio/sentry/rrweb/RRWebEventType;->Custom:Lio/sentry/rrweb/RRWebEventType;

    sget-object v6, Lio/sentry/rrweb/RRWebEventType;->Plugin:Lio/sentry/rrweb/RRWebEventType;

    filled-new-array/range {v0 .. v6}, [Lio/sentry/rrweb/RRWebEventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    const-string v1, "DomContentLoaded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->DomContentLoaded:Lio/sentry/rrweb/RRWebEventType;

    .line 13
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    const-string v1, "Load"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->Load:Lio/sentry/rrweb/RRWebEventType;

    .line 14
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    const-string v1, "FullSnapshot"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->FullSnapshot:Lio/sentry/rrweb/RRWebEventType;

    .line 15
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    const-string v1, "IncrementalSnapshot"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->IncrementalSnapshot:Lio/sentry/rrweb/RRWebEventType;

    .line 16
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    const-string v1, "Meta"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->Meta:Lio/sentry/rrweb/RRWebEventType;

    .line 17
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    const-string v1, "Custom"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->Custom:Lio/sentry/rrweb/RRWebEventType;

    .line 18
    new-instance v0, Lio/sentry/rrweb/RRWebEventType;

    const-string v1, "Plugin"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->Plugin:Lio/sentry/rrweb/RRWebEventType;

    .line 11
    invoke-static {}, Lio/sentry/rrweb/RRWebEventType;->$values()[Lio/sentry/rrweb/RRWebEventType;

    move-result-object v0

    sput-object v0, Lio/sentry/rrweb/RRWebEventType;->$VALUES:[Lio/sentry/rrweb/RRWebEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/rrweb/RRWebEventType;
    .locals 1

    .line 11
    const-class v0, Lio/sentry/rrweb/RRWebEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/rrweb/RRWebEventType;

    return-object p0
.end method

.method public static values()[Lio/sentry/rrweb/RRWebEventType;
    .locals 1

    .line 11
    sget-object v0, Lio/sentry/rrweb/RRWebEventType;->$VALUES:[Lio/sentry/rrweb/RRWebEventType;

    invoke-virtual {v0}, [Lio/sentry/rrweb/RRWebEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/rrweb/RRWebEventType;

    return-object v0
.end method


# virtual methods
.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lio/sentry/rrweb/RRWebEventType;->ordinal()I

    move-result p2

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    return-void
.end method
