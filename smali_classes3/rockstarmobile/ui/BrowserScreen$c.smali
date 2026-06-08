.class Lrockstarmobile/ui/BrowserScreen$c;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrockstarmobile/ui/BrowserScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/HashMap;

.field c:Lrockstarmobile/ui/BrowserScreen$b;

.field d:Z

.field e:Lrockstarmobile/ui/BrowserScreen$OpenedCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrockstarmobile/ui/BrowserScreen$c;->b:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lrockstarmobile/ui/BrowserScreen$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lrockstarmobile/ui/BrowserScreen$c;-><init>()V

    return-void
.end method
