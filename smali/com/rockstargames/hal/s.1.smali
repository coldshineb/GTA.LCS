.class final Lcom/rockstargames/hal/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rockstargames/hal/andHttp;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/andHttp;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/s;->a:Lcom/rockstargames/hal/andHttp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/rockstargames/hal/s;->a:Lcom/rockstargames/hal/andHttp;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andHttp;->doInBackground()Landroid/util/Pair;

    move-result-object v0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/rockstargames/hal/t;

    invoke-direct {v2, p0, v0}, Lcom/rockstargames/hal/t;-><init>(Lcom/rockstargames/hal/s;Landroid/util/Pair;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
