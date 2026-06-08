.class public final Lio/sentry/rrweb/RRWebEvent$Deserializer;
.super Ljava/lang/Object;
.source "RRWebEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeValue(Lio/sentry/rrweb/RRWebEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string p4, "timestamp"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_0
    invoke-interface {p3}, Lio/sentry/ObjectReader;->nextLong()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lio/sentry/rrweb/RRWebEvent;->access$102(Lio/sentry/rrweb/RRWebEvent;J)J

    return v1

    .line 82
    :cond_1
    new-instance p2, Lio/sentry/rrweb/RRWebEventType$Deserializer;

    invoke-direct {p2}, Lio/sentry/rrweb/RRWebEventType$Deserializer;-><init>()V

    .line 84
    invoke-interface {p3, p4, p2}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/rrweb/RRWebEventType;

    const-string p3, ""

    .line 83
    invoke-static {p2, p3}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/rrweb/RRWebEventType;

    .line 82
    invoke-static {p1, p2}, Lio/sentry/rrweb/RRWebEvent;->access$002(Lio/sentry/rrweb/RRWebEvent;Lio/sentry/rrweb/RRWebEventType;)Lio/sentry/rrweb/RRWebEventType;

    return v1
.end method
