.class public final Lio/sentry/SentryAttributes;
.super Ljava/lang/Object;
.source "SentryAttributes.java"


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryAttribute;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/sentry/SentryAttributes;->attributes:Ljava/util/Map;

    return-void
.end method

.method public static fromMap(Ljava/util/Map;)Lio/sentry/SentryAttributes;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/sentry/SentryAttributes;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 41
    new-instance p0, Lio/sentry/SentryAttributes;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/SentryAttributes;-><init>(Ljava/util/Map;)V

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Lio/sentry/SentryAttributes;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-direct {v0, v1}, Lio/sentry/SentryAttributes;-><init>(Ljava/util/Map;)V

    .line 45
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lio/sentry/SentryAttribute;->named(Ljava/lang/String;Ljava/lang/Object;)Lio/sentry/SentryAttribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryAttributes;->add(Lio/sentry/SentryAttribute;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static varargs of([Lio/sentry/SentryAttribute;)Lio/sentry/SentryAttributes;
    .locals 4

    if-nez p0, :cond_0

    .line 29
    new-instance p0, Lio/sentry/SentryAttributes;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/SentryAttributes;-><init>(Ljava/util/Map;)V

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Lio/sentry/SentryAttributes;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-direct {v0, v1}, Lio/sentry/SentryAttributes;-><init>(Ljava/util/Map;)V

    .line 33
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 34
    invoke-virtual {v0, v3}, Lio/sentry/SentryAttributes;->add(Lio/sentry/SentryAttribute;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public add(Lio/sentry/SentryAttribute;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryAttributes;->attributes:Ljava/util/Map;

    invoke-virtual {p1}, Lio/sentry/SentryAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryAttribute;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lio/sentry/SentryAttributes;->attributes:Ljava/util/Map;

    return-object v0
.end method
