.class final Lcom/rockstargames/hal/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/PresenceConnection;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/PresenceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/i;->a:Lcom/rockstargames/hal/PresenceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/rockstargames/hal/i;->a:Lcom/rockstargames/hal/PresenceConnection;

    invoke-static {v0}, Lcom/rockstargames/hal/PresenceConnection;->access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/i;->a:Lcom/rockstargames/hal/PresenceConnection;

    invoke-static {v1}, Lcom/rockstargames/hal/PresenceConnection;->access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andHttp;->onError(II)V

    return-void
.end method
