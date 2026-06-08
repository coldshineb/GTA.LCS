.class final Lcom/rockstargames/hal/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/util/Pair;

.field private synthetic b:Lcom/rockstargames/hal/s;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/s;Landroid/util/Pair;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/t;->b:Lcom/rockstargames/hal/s;

    iput-object p2, p0, Lcom/rockstargames/hal/t;->a:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/rockstargames/hal/t;->b:Lcom/rockstargames/hal/s;

    iget-object v0, v0, Lcom/rockstargames/hal/s;->a:Lcom/rockstargames/hal/andHttp;

    iget-object v1, p0, Lcom/rockstargames/hal/t;->a:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Lcom/rockstargames/hal/andHttp;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
