.class public final Lio/sentry/SentryUUID;
.super Ljava/lang/Object;
.source "SentryUUID.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSentryId()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {}, Lio/sentry/util/UUIDGenerator;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/UUIDStringUtils;->toSentryIdString(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateSpanId()Ljava/lang/String;
    .locals 2

    .line 21
    invoke-static {}, Lio/sentry/util/UUIDGenerator;->randomHalfLengthUUID()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/util/UUIDStringUtils;->toSentrySpanIdString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
