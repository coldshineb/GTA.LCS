.class public final Lio/sentry/SentryAttribute;
.super Ljava/lang/Object;
.source "SentryAttribute.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Lio/sentry/SentryAttributeType;

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/sentry/SentryAttribute;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lio/sentry/SentryAttribute;->type:Lio/sentry/SentryAttributeType;

    .line 18
    iput-object p3, p0, Lio/sentry/SentryAttribute;->value:Ljava/lang/Object;

    return-void
.end method

.method public static booleanAttribute(Ljava/lang/String;Ljava/lang/Boolean;)Lio/sentry/SentryAttribute;
    .locals 2

    .line 40
    new-instance v0, Lio/sentry/SentryAttribute;

    sget-object v1, Lio/sentry/SentryAttributeType;->BOOLEAN:Lio/sentry/SentryAttributeType;

    invoke-direct {v0, p0, v1, p1}, Lio/sentry/SentryAttribute;-><init>(Ljava/lang/String;Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static doubleAttribute(Ljava/lang/String;Ljava/lang/Double;)Lio/sentry/SentryAttribute;
    .locals 2

    .line 50
    new-instance v0, Lio/sentry/SentryAttribute;

    sget-object v1, Lio/sentry/SentryAttributeType;->DOUBLE:Lio/sentry/SentryAttributeType;

    invoke-direct {v0, p0, v1, p1}, Lio/sentry/SentryAttribute;-><init>(Ljava/lang/String;Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static integerAttribute(Ljava/lang/String;Ljava/lang/Integer;)Lio/sentry/SentryAttribute;
    .locals 2

    .line 45
    new-instance v0, Lio/sentry/SentryAttribute;

    sget-object v1, Lio/sentry/SentryAttributeType;->INTEGER:Lio/sentry/SentryAttributeType;

    invoke-direct {v0, p0, v1, p1}, Lio/sentry/SentryAttribute;-><init>(Ljava/lang/String;Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static named(Ljava/lang/String;Ljava/lang/Object;)Lio/sentry/SentryAttribute;
    .locals 2

    .line 35
    new-instance v0, Lio/sentry/SentryAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/sentry/SentryAttribute;-><init>(Ljava/lang/String;Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static stringAttribute(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/SentryAttribute;
    .locals 2

    .line 55
    new-instance v0, Lio/sentry/SentryAttribute;

    sget-object v1, Lio/sentry/SentryAttributeType;->STRING:Lio/sentry/SentryAttributeType;

    invoke-direct {v0, p0, v1, p1}, Lio/sentry/SentryAttribute;-><init>(Ljava/lang/String;Lio/sentry/SentryAttributeType;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/sentry/SentryAttribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/sentry/SentryAttributeType;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/sentry/SentryAttribute;->type:Lio/sentry/SentryAttributeType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/sentry/SentryAttribute;->value:Ljava/lang/Object;

    return-object v0
.end method
