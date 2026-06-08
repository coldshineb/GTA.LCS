.class final Landroid/support/v4/view/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v4/view/ay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroid/support/v4/view/ay;

    check-cast p2, Landroid/support/v4/view/ay;

    iget v0, p1, Landroid/support/v4/view/ay;->b:I

    iget v1, p2, Landroid/support/v4/view/ay;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
