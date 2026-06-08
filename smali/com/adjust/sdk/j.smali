.class public final Lcom/adjust/sdk/j;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/adjust/sdk/x;

.field e:Ljava/lang/Boolean;

.field f:Ljava/lang/String;

.field g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v2

    if-nez p2, :cond_1

    const-string v3, "Missing App Token"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    move v0, v1

    :cond_0
    :goto_1
    if-nez v0, :cond_a

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    const-string v3, "Malformed App Token \'%s\'"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v2

    if-nez p3, :cond_4

    const-string v3, "Missing environment"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    :goto_3
    if-nez v2, :cond_7

    move v0, v1

    goto :goto_1

    :cond_4
    const-string v3, "sandbox"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "SANDBOX: Adjust is running in Sandbox mode. Use this setting for testing. Don\'t forget to set the environment to `production` before publishing!"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/u;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto :goto_3

    :cond_5
    const-string v3, "production"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "PRODUCTION: Adjust is running in Production mode. Use this setting only for the build that you want to publish. Set the environment to `sandbox` if you want to test your app!"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/u;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto :goto_3

    :cond_6
    const-string v3, "Unknown environment \'%s\'"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p3, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v2

    if-nez p1, :cond_8

    const-string v3, "Missing context"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    :goto_4
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_8
    const-string v3, "android.permission.INTERNET"

    invoke-static {p1, v3}, Lcom/adjust/sdk/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "Missing permission: INTERNET"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    goto :goto_4

    :cond_9
    move v2, v0

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/adjust/sdk/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/adjust/sdk/j;->c:Ljava/lang/String;

    sget-object v0, Lcom/adjust/sdk/x;->a:Lcom/adjust/sdk/x;

    iput-object v0, p0, Lcom/adjust/sdk/j;->d:Lcom/adjust/sdk/x;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/j;->e:Ljava/lang/Boolean;

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Lcom/adjust/sdk/x;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/j;->d:Lcom/adjust/sdk/x;

    return-void
.end method
