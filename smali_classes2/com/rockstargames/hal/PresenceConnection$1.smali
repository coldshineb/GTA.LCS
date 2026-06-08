.class Lcom/rockstargames/hal/PresenceConnection$1;
.super Ljava/lang/Object;
.source "PresenceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockstargames/hal/PresenceConnection;->executePostRequest(Lcz/msebera/android/httpclient/client/methods/HttpPost;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/PresenceConnection;

.field final synthetic val$responseCode:I

.field final synthetic val$responseText:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/PresenceConnection;ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/rockstargames/hal/PresenceConnection$1;->this$0:Lcom/rockstargames/hal/PresenceConnection;

    iput p2, p0, Lcom/rockstargames/hal/PresenceConnection$1;->val$responseCode:I

    iput-object p3, p0, Lcom/rockstargames/hal/PresenceConnection$1;->val$responseText:Ljava/lang/String;

    iput-object p4, p0, Lcom/rockstargames/hal/PresenceConnection$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/rockstargames/hal/PresenceConnection$1;->this$0:Lcom/rockstargames/hal/PresenceConnection;

    invoke-static {v0}, Lcom/rockstargames/hal/PresenceConnection;->access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/PresenceConnection$1;->this$0:Lcom/rockstargames/hal/PresenceConnection;

    invoke-static {v1}, Lcom/rockstargames/hal/PresenceConnection;->access$000(Lcom/rockstargames/hal/PresenceConnection;)Lcom/rockstargames/hal/andHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockstargames/hal/andHttp;->getId()I

    move-result v1

    iget v2, p0, Lcom/rockstargames/hal/PresenceConnection$1;->val$responseCode:I

    iget-object v3, p0, Lcom/rockstargames/hal/PresenceConnection$1;->val$responseText:Ljava/lang/String;

    iget-object v4, p0, Lcom/rockstargames/hal/PresenceConnection$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/rockstargames/hal/andHttp;->onReceivedResponse(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
