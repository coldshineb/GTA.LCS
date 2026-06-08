.class Lrockstarmobile/Rockstar$b;
.super Ljava/util/TimerTask;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrockstarmobile/Rockstar;->setup(Landroid/app/Activity;Lrockstarmobile/Rockstar$StateCallback;Lrockstarmobile/Rockstar$GameTicketCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method public static synthetic $r8$lambda$oDnKOKmCfeOIeqwmndg0vSeX4ac()V
    .locals 0

    invoke-static {}, Lrockstarmobile/Rockstar$b;->a()V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrockstarmobile/Rockstar$b;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lrockstarmobile/Rockstar;->access$100()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrockstarmobile/Rockstar$b;->a:Landroid/app/Activity;

    new-instance v1, Lrockstarmobile/Rockstar$b$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lrockstarmobile/Rockstar$b$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
