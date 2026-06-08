.class final Lcom/rockstargames/hal/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/rockstargames/hal/u;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/u;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/v;->d:Lcom/rockstargames/hal/u;

    iput p2, p0, Lcom/rockstargames/hal/v;->a:I

    iput-object p3, p0, Lcom/rockstargames/hal/v;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/rockstargames/hal/v;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/rockstargames/hal/v;->d:Lcom/rockstargames/hal/u;

    iget-object v0, v0, Lcom/rockstargames/hal/u;->a:Lcom/rockstargames/hal/andHttp;

    iget-object v1, p0, Lcom/rockstargames/hal/v;->d:Lcom/rockstargames/hal/u;

    iget-object v1, v1, Lcom/rockstargames/hal/u;->a:Lcom/rockstargames/hal/andHttp;

    invoke-static {v1}, Lcom/rockstargames/hal/andHttp;->access$400(Lcom/rockstargames/hal/andHttp;)I

    move-result v1

    iget v2, p0, Lcom/rockstargames/hal/v;->a:I

    iget-object v3, p0, Lcom/rockstargames/hal/v;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/rockstargames/hal/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/rockstargames/hal/andHttp;->onReceivedResponse(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
