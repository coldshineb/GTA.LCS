.class public final Lcom/adjust/sdk/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Lcom/adjust/sdk/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adjust/sdk/m;->c:Lcom/adjust/sdk/a;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v1

    const-string v2, "Adjust not initialized correctly"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/m;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/m;->c:Lcom/adjust/sdk/a;

    invoke-virtual {v0}, Lcom/adjust/sdk/a;->a()V

    goto :goto_0
.end method

.method public final a(Lcom/adjust/sdk/j;)V
    .locals 3

    iget-object v0, p0, Lcom/adjust/sdk/m;->c:Lcom/adjust/sdk/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adjust/sdk/l;->a()Lcom/adjust/sdk/u;

    move-result-object v0

    const-string v1, "Adjust already initialized"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/u;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/m;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/j;->f:Ljava/lang/String;

    iget-wide v0, p0, Lcom/adjust/sdk/m;->b:J

    iput-wide v0, p1, Lcom/adjust/sdk/j;->g:J

    invoke-static {p1}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/j;)Lcom/adjust/sdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/m;->c:Lcom/adjust/sdk/a;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adjust/sdk/m;->c:Lcom/adjust/sdk/a;

    if-nez v2, :cond_0

    iput-object p1, p0, Lcom/adjust/sdk/m;->a:Ljava/lang/String;

    iput-wide v0, p0, Lcom/adjust/sdk/m;->b:J

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/adjust/sdk/m;->c:Lcom/adjust/sdk/a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/adjust/sdk/a;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/m;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/m;->c:Lcom/adjust/sdk/a;

    invoke-virtual {v0}, Lcom/adjust/sdk/a;->b()V

    goto :goto_0
.end method
