.class Landroid/support/v4/view/w;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/support/v4/view/B;)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/support/v4/view/z;

    invoke-direct {v0, p2}, Landroid/support/v4/view/z;-><init>(Landroid/support/v4/view/B;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
