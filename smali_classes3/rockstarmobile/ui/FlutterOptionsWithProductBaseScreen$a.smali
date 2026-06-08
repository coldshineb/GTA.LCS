.class Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"

# interfaces
.implements Lrockstarmobile/GCSubscriptions$ProductsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->loadProduct()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;


# direct methods
.method constructor <init>(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;->a:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$b;-><init>(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onProducts(Ljava/util/HashMap;)V
    .locals 4

    .line 1
    invoke-static {}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->access$000()Lrockstarmobile/utilities/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got products: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v2, 0x3e8

    :goto_1
    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 4
    invoke-static {}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->access$000()Lrockstarmobile/utilities/Log;

    move-result-object p1

    const-string v0, "no products returned"

    invoke-virtual {p1, v0}, Lrockstarmobile/utilities/Log;->info(Ljava/lang/String;)V

    .line 7
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$a;

    invoke-direct {v0, p0}, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a$a;-><init>(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$a;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
