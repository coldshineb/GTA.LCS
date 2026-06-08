.class final Lcom/adjust/sdk/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/json/JSONObject;

.field private synthetic b:Lcom/adjust/sdk/n;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/n;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/p;->b:Lcom/adjust/sdk/n;

    iput-object p2, p0, Lcom/adjust/sdk/p;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/p;->b:Lcom/adjust/sdk/n;

    iget-object v1, p0, Lcom/adjust/sdk/p;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/adjust/sdk/n;->a(Lcom/adjust/sdk/n;Lorg/json/JSONObject;)V

    return-void
.end method
