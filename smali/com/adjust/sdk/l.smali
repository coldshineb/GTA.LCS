.class public final Lcom/adjust/sdk/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/adjust/sdk/v;

.field private static b:Lcom/adjust/sdk/w;

.field private static c:Lcom/adjust/sdk/t;

.field private static d:Lcom/adjust/sdk/u;

.field private static e:Ljavax/net/ssl/HttpsURLConnection;

.field private static f:J

.field private static g:J

.field private static h:J

.field private static i:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/adjust/sdk/l;->a:Lcom/adjust/sdk/v;

    sput-object v0, Lcom/adjust/sdk/l;->b:Lcom/adjust/sdk/w;

    sput-object v0, Lcom/adjust/sdk/l;->c:Lcom/adjust/sdk/t;

    sput-object v0, Lcom/adjust/sdk/l;->d:Lcom/adjust/sdk/u;

    sput-object v0, Lcom/adjust/sdk/l;->e:Ljavax/net/ssl/HttpsURLConnection;

    sput-wide v2, Lcom/adjust/sdk/l;->f:J

    sput-wide v2, Lcom/adjust/sdk/l;->g:J

    sput-wide v2, Lcom/adjust/sdk/l;->h:J

    sput-wide v2, Lcom/adjust/sdk/l;->i:J

    return-void
.end method

.method public static a(Lcom/adjust/sdk/s;Lcom/adjust/sdk/g;ZZ)Lcom/adjust/sdk/t;
    .locals 1

    new-instance v0, Lcom/adjust/sdk/n;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adjust/sdk/n;-><init>(Lcom/adjust/sdk/s;Lcom/adjust/sdk/g;ZZ)V

    return-object v0
.end method

.method public static a()Lcom/adjust/sdk/u;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/l;->d:Lcom/adjust/sdk/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adjust/sdk/y;

    invoke-direct {v0}, Lcom/adjust/sdk/y;-><init>()V

    sput-object v0, Lcom/adjust/sdk/l;->d:Lcom/adjust/sdk/u;

    :cond_0
    sget-object v0, Lcom/adjust/sdk/l;->d:Lcom/adjust/sdk/u;

    return-object v0
.end method

.method public static a(Lcom/adjust/sdk/a;Landroid/content/Context;Z)Lcom/adjust/sdk/v;
    .locals 1

    new-instance v0, Lcom/adjust/sdk/A;

    invoke-direct {v0, p0, p1, p2}, Lcom/adjust/sdk/A;-><init>(Lcom/adjust/sdk/s;Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static a(Lcom/adjust/sdk/v;)Lcom/adjust/sdk/w;
    .locals 1

    new-instance v0, Lcom/adjust/sdk/C;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/C;-><init>(Lcom/adjust/sdk/v;)V

    return-object v0
.end method

.method public static a(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    return-object v0
.end method

.method public static b()J
    .locals 4

    sget-wide v0, Lcom/adjust/sdk/l;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/32 v0, 0xea60

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/l;->f:J

    goto :goto_0
.end method

.method public static c()J
    .locals 4

    sget-wide v0, Lcom/adjust/sdk/l;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/l;->g:J

    goto :goto_0
.end method

.method public static d()J
    .locals 4

    sget-wide v0, Lcom/adjust/sdk/l;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/32 v0, 0x1b7740

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/l;->h:J

    goto :goto_0
.end method

.method public static e()J
    .locals 4

    sget-wide v0, Lcom/adjust/sdk/l;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/l;->i:J

    goto :goto_0
.end method
