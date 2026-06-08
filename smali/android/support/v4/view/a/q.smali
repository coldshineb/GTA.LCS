.class final Landroid/support/v4/view/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/a/u;


# instance fields
.field private synthetic a:Landroid/support/v4/view/a/n;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/p;Landroid/support/v4/view/a/n;)V
    .locals 0

    iput-object p2, p0, Landroid/support/v4/view/a/q;->a:Landroid/support/v4/view/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroid/support/v4/view/a/n;->b()Landroid/support/v4/view/a/e;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Landroid/support/v4/view/a/n;->d()Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/a/e;

    invoke-virtual {v0}, Landroid/support/v4/view/a/e;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final a(IILandroid/os/Bundle;)Z
    .locals 1

    invoke-static {}, Landroid/support/v4/view/a/n;->c()Z

    move-result v0

    return v0
.end method
