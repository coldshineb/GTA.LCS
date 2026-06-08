.class Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$b;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;


# direct methods
.method constructor <init>(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$b;->d:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;

    iput-object p2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->access$000()Lrockstarmobile/utilities/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$b;->d:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;

    iget-object v0, v0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;->a:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->access$102(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;Z)Z

    .line 3
    iget-object v0, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$b;->d:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;

    iget-object v0, v0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;->a:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->loadingGotProduct(Lcom/android/billingclient/api/ProductDetails;)V

    return-void
.end method
