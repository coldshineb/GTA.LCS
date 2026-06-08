.class public final Lio/sentry/util/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final CLIENT_ERROR_STATUS_CODES:Lio/sentry/HttpStatusCodeRange;

.field public static final COOKIE_HEADER_NAME:Ljava/lang/String; = "Cookie"

.field private static final SECURITY_COOKIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSITIVE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEVER_ERROR_STATUS_CODES:Lio/sentry/HttpStatusCodeRange;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0xc

    .line 21
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "X-FORWARDED-FOR"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "AUTHORIZATION"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "COOKIE"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "SET-COOKIE"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "X-API-KEY"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "X-REAL-IP"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "REMOTE-ADDR"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "FORWARDED"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const/16 v1, 0x8

    const-string v10, "PROXY-AUTHORIZATION"

    aput-object v10, v0, v1

    const/16 v1, 0x9

    const-string v10, "X-CSRF-TOKEN"

    aput-object v10, v0, v1

    const/16 v1, 0xa

    const-string v10, "X-CSRFTOKEN"

    aput-object v10, v0, v1

    const/16 v1, 0xb

    const-string v10, "X-XSRF-TOKEN"

    aput-object v10, v0, v1

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/sentry/util/HttpUtils;->SENSITIVE_HEADERS:Ljava/util/List;

    .line 36
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "JSESSIONID"

    aput-object v1, v0, v2

    const-string v1, "JSESSIONIDSSO"

    aput-object v1, v0, v3

    const-string v1, "JSSOSESSIONID"

    aput-object v1, v0, v4

    const-string v1, "SESSIONID"

    aput-object v1, v0, v5

    const-string v1, "SID"

    aput-object v1, v0, v6

    const-string v1, "CSRFTOKEN"

    aput-object v1, v0, v7

    const-string v1, "XSRF-TOKEN"

    aput-object v1, v0, v8

    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/sentry/util/HttpUtils;->SECURITY_COOKIES:Ljava/util/List;

    .line 46
    new-instance v0, Lio/sentry/HttpStatusCodeRange;

    const/16 v1, 0x190

    const/16 v2, 0x1f3

    invoke-direct {v0, v1, v2}, Lio/sentry/HttpStatusCodeRange;-><init>(II)V

    sput-object v0, Lio/sentry/util/HttpUtils;->CLIENT_ERROR_STATUS_CODES:Lio/sentry/HttpStatusCodeRange;

    .line 49
    new-instance v0, Lio/sentry/HttpStatusCodeRange;

    const/16 v1, 0x1f4

    const/16 v2, 0x257

    invoke-direct {v0, v1, v2}, Lio/sentry/HttpStatusCodeRange;-><init>(II)V

    sput-object v0, Lio/sentry/util/HttpUtils;->SEVER_ERROR_STATUS_CODES:Lio/sentry/HttpStatusCodeRange;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsSensitiveHeader(Ljava/lang/String;)Z
    .locals 2

    .line 53
    sget-object v0, Lio/sentry/util/HttpUtils;->SENSITIVE_HEADERS:Ljava/util/List;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static filterOutSecurityCookies(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 93
    const-string v0, "="

    const-string v1, ";"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    const/4 v3, -0x1

    .line 97
    :try_start_0
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    array-length v5, p0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v5, :cond_3

    aget-object v9, p0, v8

    if-nez v6, :cond_1

    .line 103
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_1
    invoke-virtual {v9, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 107
    aget-object v6, v6, v7

    .line 108
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lio/sentry/util/HttpUtils;->isSecurityCookie(Ljava/lang/String;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "[Filtered]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v2
.end method

.method public static filterOutSecurityCookiesFromHeader(Ljava/util/Enumeration;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    .line 64
    invoke-static {p0, p1, p2}, Lio/sentry/util/HttpUtils;->filterOutSecurityCookiesFromHeader(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static filterOutSecurityCookiesFromHeader(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 76
    const-string v0, "Cookie"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    .line 80
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-static {v0, p2}, Lio/sentry/util/HttpUtils;->filterOutSecurityCookies(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static isHttpClientError(I)Z
    .locals 1

    .line 142
    sget-object v0, Lio/sentry/util/HttpUtils;->CLIENT_ERROR_STATUS_CODES:Lio/sentry/HttpStatusCodeRange;

    invoke-virtual {v0, p0}, Lio/sentry/HttpStatusCodeRange;->isInRange(I)Z

    move-result p0

    return p0
.end method

.method public static isHttpServerError(I)Z
    .locals 1

    .line 146
    sget-object v0, Lio/sentry/util/HttpUtils;->SEVER_ERROR_STATUS_CODES:Lio/sentry/HttpStatusCodeRange;

    invoke-virtual {v0, p0}, Lio/sentry/HttpStatusCodeRange;->isInRange(I)Z

    move-result p0

    return p0
.end method

.method public static isSecurityCookie(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 125
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 126
    sget-object v0, Lio/sentry/util/HttpUtils;->SECURITY_COOKIES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
