.class final Lcom/rockstargames/hal/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/StringBuilder;

.field private synthetic d:Lcom/rockstargames/hal/PresenceConnection;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/PresenceConnection;ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/f;->d:Lcom/rockstargames/hal/PresenceConnection;

    iput p2, p0, Lcom/rockstargames/hal/f;->a:I

    iput-object p3, p0, Lcom/rockstargames/hal/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/rockstargames/hal/f;->c:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/rockstargames/hal/f;->d:Lcom/rockstargames/hal/PresenceConnection;

    invoke-static {v0}, Lcom/rockstargames/hal/PresenceConnection;->access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/f;->d:Lcom/rockstargames/hal/PresenceConnection;

    invoke-static {v1}, Lcom/rockstargames/hal/PresenceConnection;->access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v1

    iget v2, p0, Lcom/rockstargames/hal/f;->a:I

    iget-object v3, p0, Lcom/rockstargames/hal/f;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/rockstargames/hal/f;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/rockstargames/hal/andHttp;->onReceivedResponse(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
