.class Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$c;
.super Ljava/util/HashMap;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;->setLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;


# direct methods
.method constructor <init>(Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$c;->b:Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen;

    iput-boolean p2, p0, Lrockstarmobile/ui/FlutterOptionsWithProductBaseScreen$c;->a:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "buttonsloading"

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
