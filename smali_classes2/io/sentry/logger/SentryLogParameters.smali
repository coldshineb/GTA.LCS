.class public final Lio/sentry/logger/SentryLogParameters;
.super Ljava/lang/Object;
.source "SentryLogParameters.java"


# instance fields
.field private attributes:Lio/sentry/SentryAttributes;

.field private origin:Ljava/lang/String;

.field private timestamp:Lio/sentry/SentryDate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "manual"

    iput-object v0, p0, Lio/sentry/logger/SentryLogParameters;->origin:Ljava/lang/String;

    return-void
.end method

.method public static create(Lio/sentry/SentryAttributes;)Lio/sentry/logger/SentryLogParameters;
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-static {v0, p0}, Lio/sentry/logger/SentryLogParameters;->create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/logger/SentryLogParameters;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/sentry/SentryDate;Lio/sentry/SentryAttributes;)Lio/sentry/logger/SentryLogParameters;
    .locals 1

    .line 40
    new-instance v0, Lio/sentry/logger/SentryLogParameters;

    invoke-direct {v0}, Lio/sentry/logger/SentryLogParameters;-><init>()V

    .line 42
    invoke-virtual {v0, p0}, Lio/sentry/logger/SentryLogParameters;->setTimestamp(Lio/sentry/SentryDate;)V

    .line 43
    invoke-virtual {v0, p1}, Lio/sentry/logger/SentryLogParameters;->setAttributes(Lio/sentry/SentryAttributes;)V

    return-object v0
.end method


# virtual methods
.method public getAttributes()Lio/sentry/SentryAttributes;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/sentry/logger/SentryLogParameters;->attributes:Lio/sentry/SentryAttributes;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/sentry/logger/SentryLogParameters;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Lio/sentry/SentryDate;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/sentry/logger/SentryLogParameters;->timestamp:Lio/sentry/SentryDate;

    return-object v0
.end method

.method public setAttributes(Lio/sentry/SentryAttributes;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lio/sentry/logger/SentryLogParameters;->attributes:Lio/sentry/SentryAttributes;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lio/sentry/logger/SentryLogParameters;->origin:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Lio/sentry/SentryDate;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lio/sentry/logger/SentryLogParameters;->timestamp:Lio/sentry/SentryDate;

    return-void
.end method
